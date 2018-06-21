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

		val modelAccessor = Model.create [
			name = "myUmlModel"
			visibility = VisibilityKind.PUBLIC_LITERAL
			packagedElements += #{"umlInterface" >> Interface.create [
				name = "myInterface"
			], "umlInterface2" >> Interface.create [
				name = "myInterface2"
				generalizations += "umlGen" >> Generalization.create [
					general = ref(Interface, "umlInterface") // Builds reference to elements built in the same models
					specific = Interface << "umlInterface2" // Simplified notation
				]
			]}

		].assemble

		val umlgen = modelAccessor.access(Generalization, "umlGen")
		assertEquals(("umlInterface" => modelAccessor), umlgen.targets.get(0))
		assertEquals(("umlInterface2" => modelAccessor), umlgen.sources.get(0))

		// Adds a new interface
		modelAccessor.update [
			packagedElements += "umlInterface3" >> Interface.create[]
		]

		// Modify the generalization
		modelAccessor.update(Generalization, "umlGen") [
			general = Interface << "umlInterface3"
		]

		assertEquals(("umlInterface3" => modelAccessor), umlgen.targets.get(0))

	}
}
