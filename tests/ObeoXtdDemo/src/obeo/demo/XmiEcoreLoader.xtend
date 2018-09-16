package obeo.demo

import java.io.File
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
		getResource(URI.createURI(toASCIIString), true).getContents().get(0)
	}

	def saveModel(EObject content, File target, Pair<String, Object>... options) {
		if (target.exists()) {
			target.delete();
		}
		val res = createResource(URI.createFileURI(target.toString))
		res.contents.add(content)
		res.save(options.toMap([key], [value]))
	}

}
