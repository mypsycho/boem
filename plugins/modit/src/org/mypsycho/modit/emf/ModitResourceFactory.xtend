package org.mypsycho.modit.emf

import java.io.IOException
import java.lang.reflect.InvocationTargetException
import java.util.Map
import org.eclipse.emf.common.CommonPlugin
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.Resource.Diagnostic
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
import org.eclipse.emf.ecore.resource.impl.ResourceImpl

class ModitResourceFactory extends ResourceFactoryImpl {
	
	static val PLUGIN_PATH = "plugin" // used in URI, but not public.
	
	public static val DEFAULT_EXTENSION = "modit"
	
	val String fileExtension

	new(String ext) {
		fileExtension = ext
	}
	
	new() {
		this(DEFAULT_EXTENSION)
	} 

	override createResource(URI uri) { new ClassResource(this, uri) }


	// No basic Resource.Diagnostic
	static class ClassDiagnostic extends Exception implements Diagnostic {
		final String location

		new(URI uri, String text, Throwable cause) {
			super(text, cause)
			location = uri.toString()
		}

		new(URI uri, String text) { this(uri, text, null) }

		override String getLocation() { location }

		override int getLine() { 0 }

		override int getColumn() { 0 } 
	}

	def createModelProviderFactory(URI uri) {
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
		
		var String className = spec.substring(classPathIx + 1, 
			spec.length() - fileExtension.length() - 1 /* dot */
		)
		try {
			CommonPlugin.loadClass(pluginName, className).constructor.newInstance
		} catch (ClassNotFoundException e) {
			throw new ClassDiagnostic(uri, "Missing class " + className, e)
		}
	}

	def toContent(Object it, ClassResource res) throws Exception {
		res.contents += (it as ModitModel).loadContent(res)
	}


	static class ClassResource extends ResourceImpl {
		
		val ModitResourceFactory context
		
		var Object instance

		new(ModitResourceFactory factory, URI uri) {
			super(uri)
			context = factory
			instance = try {
				context.createModelProviderFactory(uri)
			} catch (ClassDiagnostic dg) {
				getErrors() += dg
				null
			}
		}

		override getURIFragment(EObject it) {
			super.getURIFragment(it) // ???
		}

		override load(Map<?, ?> options) throws IOException {
			if (loaded) return // conform to super

			// code inspire from load(InputStream, option)
			val notification = setLoaded(true);
			isLoading = true;


			try { //
				if (instance !== null) {
					errors?.clear
					warnings?.clear
					context.toContent(instance, this)
				}	
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


	static def toUri(String pluginId, Class<? extends ModitModel> clazz) {
		pluginId.toUri(clazz, DEFAULT_EXTENSION)
	}
	
	static def toPluginPath(String pluginId, Class<? extends ModitModel> clazz) {
		pluginId.toPluginPath(clazz, DEFAULT_EXTENSION)
	}

	static def toUri(String pluginId, Class<?> clazz, String ext) {
		URI.createPlatformPluginURI(pluginId.toPluginPath(clazz, ext), true)
	}
	
	static def toPluginPath(String pluginId, Class<?> clazz, String ext) {
		pluginId + "/" + clazz.name + "." + ext
	}
}