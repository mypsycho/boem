package obeo.demo

import java.nio.file.Files
import java.nio.file.Path
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl

class XmiEcoreLoader {

	extension final ResourceSet resSet = new ResourceSetImpl()

	new(EPackage it, String fileExtension) {
		resourceFactoryRegistry.getExtensionToFactoryMap().put(fileExtension, new XMIResourceFactoryImpl)
		packageRegistry.put(it.getNsURI(), it)
	}

	def EObject loadModel(java.net.URI it) {
		URI.createURI(toASCIIString).loadModel
	}

	def EObject loadModel(URI it) {
		getResource(true).getContents().get(0)
	}

	def saveModel(EObject content, Path target, Pair<String, Object>... options) {
		#[ content ].saveModel(target, options)
	}

	def saveModel(Iterable<? extends EObject> content, Path target, Pair<String, Object>... options) {
		Files.deleteIfExists(target)
		val res = createResource(URI.createFileURI(target.toString))
		res.contents += content
		res.save(options.toMap([key], [value]))
	}

}
