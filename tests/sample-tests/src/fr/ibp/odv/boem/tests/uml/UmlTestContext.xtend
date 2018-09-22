package fr.ibp.odv.boem.tests.uml

import fr.ibp.odv.boem.tests.uml.text.UmlSimpleSyntax
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.uml2.uml.NamedElement
import org.eclipse.uml2.uml.UMLPackage
import org.eclipse.uml2.uml.internal.resource.UMLResourceFactoryImpl
import org.junit.Before
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.ModItPool

/**
 * Abstraction to provide common functions for tests.
 * <p>
 * It meant to be extended by use case tests to focus on model and simplify EMF API.
 * </p>
 */
class UmlTestContext {

    protected extension EModIt factory = EModIt.using(UMLPackage.eINSTANCE)[ 
        idProvider = [ provideId ]
        contentProvider = [ content, it | syntax.provideContent(content, it) ]
    ]
    
    // TODO remove legacy syntax
    def <T extends EObject> T >>(String id, T it) { factory.alias(id, it) }
    def <T extends EObject> T <<(Class<T> it, String id) { factory.ref(it, id) }
    def static EObject =>(String id, ModItPool<EObject, ?> pool) { pool.access(id) }
    
    // A generic syntax. Should be in an abstraction of UML
    val syntax = new UmlSimpleSyntax(factory)

    
	protected var ResourceSet rs;
	
	static def provideId(EObject it) {
	    if (it instanceof NamedElement) name 
	    else null
	}
	

	@Before
	def void setup() {
		rs = new ResourceSetImpl
		rs.packageRegistry.put(UMLPackage.eNS_URI, UMLPackage.eINSTANCE)
		rs.resourceFactoryRegistry.extensionToFactoryMap.put("uml", new UMLResourceFactoryImpl)
	}

    def <T extends EObject> save(T eObject, ResourceSet rs, URI uri) {
        val ma = assemble(eObject)
        rs.createResource(uri).contents.add(eObject)
        return ma
	}

	protected def getResourceSet() {
		return rs;
	}

}
