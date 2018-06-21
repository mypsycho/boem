package fr.ibp.odv.boem.tests.uml

import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.Operation
import org.eclipse.uml2.uml.VisibilityKind
import org.junit.Test

import static org.junit.Assert.*

class UmlxElementAccessTest extends UmlTestContext {
    
	@Test
	def void accessElements() {

		val modelAccessor = Model.create [
			name = "myUmlModel"
			visibility = VisibilityKind.PUBLIC_LITERAL
			packagedElements += "umlInterface" >> Interface.create [ // Nested creation
				name = "myInterface"
				ownedOperations += "umlOperation" >> Operation.create [
					name = "myOperation"
				]
			]
		].assemble

		assertEquals("myInterface", modelAccessor.access(Interface, "umlInterface").name)
		assertEquals(modelAccessor.access(Interface, "umlInterface"), ("umlInterface" => modelAccessor))

		assertEquals("myOperation", modelAccessor.access(Operation, "umlOperation").name)
		assertEquals(modelAccessor.access(Operation, "umlOperation"), ("umlOperation" => modelAccessor))
	}

}
