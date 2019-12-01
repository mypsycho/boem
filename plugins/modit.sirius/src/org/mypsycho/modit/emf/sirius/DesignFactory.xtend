package org.mypsycho.modit.emf.sirius

import java.io.IOException
import java.lang.reflect.Constructor
import java.lang.reflect.InvocationTargetException
import java.util.Map
import org.eclipse.emf.common.CommonPlugin
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.Resource.Diagnostic
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
import org.eclipse.emf.ecore.resource.impl.ResourceImpl

class DesignFactory extends ResourceFactoryImpl {
	static final String PLUGIN_PATH = "plugin"
	public static final String EXTENSION = "modit_sirius"

	// No basic Resource.Diagnostic
	static class ClassDiagnostic extends Exception implements Diagnostic {
		final String location

		new(URI uri, String text, Throwable cause) {
			super(text, cause)
							cause.printStackTrace
			location = uri.toString()
		}

		new(URI uri, String text) { this(uri, text, null) }

		override String getLocation() { location }

		override int getLine() { 0 }

		override int getColumn() { 0 } 
	}

	static def createModelProviderFactory(URI uri) {
		var String spec = uri.path().trim()
		if (spec.startsWith("/")) {
			spec = spec.substring(1)
		}
		if (!spec.startsWith(PLUGIN_PATH)) {
			throw new ClassDiagnostic(uri, "Invalid plugin URI")
		}
		var int classPathIx = spec.indexOf("/", PLUGIN_PATH.length() + 1)
		if (classPathIx === -1) {
			throw new ClassDiagnostic(uri, "Missing class")
		}
		var String pluginName = spec.substring(PLUGIN_PATH.length() + 1, classPathIx)
		var String className = spec.substring(classPathIx + 1, spec.length() - EXTENSION.length() - 1)
		try {
			(CommonPlugin.loadClass(pluginName, className) as Class<? extends SiriusModelProvider>)
				.getConstructor(Resource)
		} catch (ClassNotFoundException e) {
			throw new ClassDiagnostic(uri, "Missing class " + className, e)
		} catch (NoSuchMethodException e) {
			throw new ClassDiagnostic(uri, "Missing constructor new(ResourceSet) in " + className, e)
		} catch (SecurityException e) {
			throw new ClassDiagnostic(uri, "Class illegal access to " + className, e)
		}
	}


	static class ClassResource extends ResourceImpl {
		package Constructor<? extends SiriusModelProvider> factory

		new(URI uri) {
			super(uri)
			try {
				factory = createModelProviderFactory(uri)
			} catch (ClassDiagnostic dg) {
				getErrors() += dg
			}
		}

  		override String getURIFragment(EObject it) {
  			super.getURIFragment(it)
  		}

		override load(Map<?, ?> options) throws IOException {
			if (loaded) return // conform to super

			// code inspire from load(InputStream, option)
			val notification = setLoaded(true);
			isLoading = true;

			errors?.clear
			warnings?.clear
			try { // 
				getContents().add(factory.newInstance(this).buildContent)
			} catch (InvocationTargetException e) {
				getErrors() += new ClassDiagnostic(uri, "Illegal instantiation", e.getCause())
//			} catch (InstantiationException | IllegalAccessException | IllegalArgumentException e) {
			} catch (Exception e) {
				getErrors() += new ClassDiagnostic(uri, "Illegal instantiation", e)
			} finally {
				isLoading = false;
				notification?.eNotify
				modified = false
			}
		}
		
		override protected doUnload() { getContents().clear }

	}

	override createResource(URI uri) { new ClassResource(uri) }

	def static toUriPath(String pluginId, Class<? extends SiriusModelProvider> clazz) {
		"/" + PLUGIN_PATH + "/" + toModelPath(pluginId, clazz)
	}
	
	def static toModelPath(String pluginId, Class<? extends SiriusModelProvider> clazz) {
		pluginId + "/" + clazz.name + "." + DesignFactory.EXTENSION
	}  
}
