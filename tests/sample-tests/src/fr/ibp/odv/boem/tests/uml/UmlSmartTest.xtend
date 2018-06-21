package fr.ibp.odv.boem.tests.uml

import org.eclipse.uml2.uml.Generalization
import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.Operation
import org.eclipse.uml2.uml.Parameter
import org.eclipse.uml2.uml.UMLPackage
import org.junit.Test
import org.mypsycho.emf.modit.EModIt

import static org.junit.Assert.*
import org.eclipse.uml2.uml.NamedElement

/**
 * This class provides an implementation of testing an Meta-Model using EMF Mod-it.
 * <p>
 * It should be compared with {@link UmlPainfullTest }.
 * </p>
 */
class UmlSmartTest {
	
    extension EModIt factory = EModIt.using(UMLPackage.eINSTANCE) [
    	idProvider = [ if (it instanceof NamedElement) name else null ]
    	// This simple ID provider forces you to have unique name in your
    	// A provider based on qualified name should be used.
    ]
    
	@Test
	def void nominal() {
		val it = Model.create [ name = "myUmlModel"
			packagedElements += #{
				Interface.create [ name = "Service"
					ownedOperations += Operation.create [ name = "request"
						// we can use them and defined them later
						type = Interface.ref("Data")
						ownedParameters += Parameter.create [
							name = "context"
							// we can use them and defined them later
							type = Interface.ref("Context")
						]
					]
				],
				Interface.create [ name = "Facade"
					generalizations += Generalization.create [
						general = Interface.ref("Service")
						specific = Interface.ref("Facade") // at this moment, eContainer is null
					]
				],
				Interface.create [ name = "Data" ],
				Interface.create [ name = "Context" ]
			}
		].assemble

		// Syntax is still boring, see {@link UmlSmarterTest }.

		assertEquals(1, access(Interface, "Facade").allOperations.size);
		assertEquals("request", access(Interface, "Facade").allOperations.head.name);

	}

}
