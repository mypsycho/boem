package org.mypsycho.modit.emf.sirius

import java.io.IOException
import java.lang.reflect.Constructor
import java.lang.reflect.InvocationTargetException
import java.util.Map
import org.eclipse.emf.common.CommonPlugin
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.Resource.Diagnostic
import org.eclipse.emf.ecore.resource.ResourceSet
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
			location = uri.toString()
		}

		new(URI uri, String text) {
			this(uri, text, null)
		}

		override String getLocation() { location }

		override int getLine() { 0 }

		override int getColumn() { 0 } 
		// see org.eclipse.core.internal.boot.PlatformURLHandler#openConnection(URL)
		// see org.eclipse.core.internal.runtime.PlatformURLPluginConnection
		// $NON-NLS-1$
		// $NON-NLS-1$
		// cannot execute withtout the resource set.
	}

	static def loadModelProvider(URI uri) {
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
		var String className = spec.substring(classPathIx + 1, spec.length() - EXTENSION.length() - 2)
		try {
			/*FIXME Cannot add Annotation to Variable declaration. Java code: @SuppressWarnings("unchecked")*/
			(CommonPlugin.loadClass(pluginName, className) as Class<? extends ModelProvider>)
				.getConstructor(ResourceSet)
		} catch (ClassNotFoundException e) {
			throw new ClassDiagnostic(uri, "Missing class")
		} catch (NoSuchMethodException e) {
			throw new ClassDiagnostic(uri, "Missing constructor")
		} catch (SecurityException e) {
			throw new ClassDiagnostic(uri, "Class illegal access")
		}
	}


	static class ClassResource extends ResourceImpl {
		package Constructor<? extends ModelProvider> factory
		package ModelProvider value

		new(URI uri) {
			super(uri)
			try {
				factory = loadModelProvider(uri)
			} catch (ClassDiagnostic dg) {
				getErrors().add(dg)
			}
		}

		override void load(Map<?, ?> options) throws IOException {
			try {
				value = factory.newInstance(resourceSet)
			} catch (InstantiationException | IllegalAccessException | IllegalArgumentException e) {
				getErrors().add(new ClassDiagnostic(uri, "Illegal instantiation", e))
			} catch (InvocationTargetException e) {
				getErrors().add(new ClassDiagnostic(uri, "Illegal instantiation", e.getCause()))
			}
		}

		def ModelProvider getValue() { value }
	}

	override Resource createResource(URI uri) { new ClassResource(uri) }

	def static ModelProvider getProvider(Resource rs) { ((rs as ClassResource)).getValue() }
}
