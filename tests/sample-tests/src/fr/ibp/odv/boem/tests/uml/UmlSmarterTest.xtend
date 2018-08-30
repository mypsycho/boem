package fr.ibp.odv.boem.tests.uml

import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.Operation
import org.eclipse.uml2.uml.Parameter
import org.junit.Test

import static org.junit.Assert.*

class UmlSmarterTest extends UmlTestContext {

	// UmlTestContext hides most of non-business statements.
	// A Content provider allows to write TypedElement and Classifiers in
	 
	
	@Test
	def void nominal() {
		val it = Model.create("myUmlModel") [
			packagedElements += #{
                Interface.create("Service") [
                    ownedOperations += Operation.create("request : Response") [
                        ownedParameters += Parameter.create("ctxt : Data")
                    ]
                ],
                Interface.create("Facade :> Service"), // Now generalization is simple!
                Interface.create("Data"),
                Interface.create("Response")
			}
		].assemble


		val facade = access(Interface, "Facade")
		assertEquals(1, facade.generals.size)
        assertEquals("Service", facade.generals.head.name)
        println(facade.allOperations.head)
		assertEquals("request", facade.allOperations.head.name)
        
    }
}