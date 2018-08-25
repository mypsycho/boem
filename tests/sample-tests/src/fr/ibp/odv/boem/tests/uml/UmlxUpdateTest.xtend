package fr.ibp.odv.boem.tests.uml

import org.eclipse.uml2.uml.Generalization
import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.VisibilityKind
import org.junit.Test

import static org.junit.Assert.*

class UmlxUpdateTest extends UmlTestContext {


	@Test
	def void testUsingIds() {

		val it = Model.create [
			name = "myUmlModel"
			visibility = VisibilityKind.PUBLIC_LITERAL
			packagedElements += #{
				"umlInterface" >> Interface.create [
					name = "myInterface"
				], 
				"umlInterface2" >> Interface.create [
					name = "myInterface2"
					generalizations += "umlGen" >> Generalization.create [
						// Builds reference to elements built in the same models
						general = ref(Interface, "umlInterface")
					]
				]
			}

		].assemble

		val umlgen = access(Generalization, "umlGen")
		assertEquals(access("umlInterface"), umlgen.targets.head)
		assertEquals(access("umlInterface2"), umlgen.sources.head)

		// Adds a new interface
		update [
			packagedElements += "umlInterface3" >> Interface.create
		]

		// Modify the generalization
		update(Generalization, "umlGen") [
			general = Interface << "umlInterface3"
		]

		assertEquals(access("umlInterface3"), umlgen.targets.get(0))

	}
}
