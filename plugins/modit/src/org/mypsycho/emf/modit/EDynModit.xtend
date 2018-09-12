package org.mypsycho.emf.modit

import java.io.File
import java.util.List
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.EcorePackage
import org.eclipse.emf.ecore.InternalEObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl

class EDynModit {
	
	extension final ResourceSet resSet = new ResourceSetImpl()
	
	public val EModIt factory

	val EPackage metamodel
	
	public new(java.net.URI mmLocation, String fileExtension, (EDynModit, EModIt.Descriptor)=>void init) {
		resourceFactoryRegistry.getExtensionToFactoryMap().put("ecore", new XMIResourceFactoryImpl)
		metamodel = getResource(
			URI.createURI(mmLocation.toASCIIString), true
		).getContents().get(0) as EPackage;
		
		resourceFactoryRegistry.getExtensionToFactoryMap().put(fileExtension, new XMIResourceFactoryImpl)
		
		packageRegistry.put(metamodel.getNsURI(), metamodel)
		
		factory = EModIt.using(EcorePackage.eINSTANCE, if (init !== null)[ init.apply(this, it) ])
	}

	def eRef(String type, String id) {
		val it = factory.ref(EObject, id)
		(it as InternalEObject).eSetClass(metamodel.getEClassifier(type) as EClass)
		it
	}
	
		
	def eCreate(String type, (EObject)=>void init) {
		val it = factory.create(EObject, init)
		(it as InternalEObject).eSetClass(metamodel.getEClassifier(type) as EClass)
		it
	}
	
	def eEValues(EObject it, String feat) {
		eGet(eClass.getEStructuralFeature(feat)) as List<EObject>
	}
	
	def eSetValue(EObject it, String feat, Object value) {
		eSet(eClass.getEStructuralFeature(feat), value)
	}
	
	def eValue(EObject it, String feat) {
		eGet(eClass.getEStructuralFeature(feat))
	}
	
	def eString(EObject it, String feat) { // Shorcut
		eValue(feat) as String
	}
	
	def eEValue(EObject it, String feat) { // Shorcut
		eValue(feat) as EObject
	}
	
	def eInstanceOf(EObject it, String type) {
		(metamodel.getEClassifier(type) as EClass).isSuperTypeOf(it.eClass)
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
		res.save(options.toMap([ key ], [ value ]))
	}
	
	
	def static (EDynModit, EModIt.Descriptor)=>void createNameProvider(String feat, String sep) {
		 [ loader, descr|
		 	val toName = [ EObject it |
		 		if (eClass.getEStructuralFeature(feat) !== null) eGet(eClass.getEStructuralFeature(feat)) as String
		 	]
			descr.idProvider = [
				val parent = eContainer
				val name = toName.apply(it)
				if ((name === null) || name.empty) null
				else if (parent === null) name
				else descr.idProvider.apply(parent) ?.concat("::" +name)
			]
		]
	}
}