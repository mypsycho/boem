package org.mypsycho.modit.emf.sample.uml

import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.Operation
import org.eclipse.uml2.uml.VisibilityKind
import org.junit.Test

import static org.junit.Assert.*

class UmlxCreateTest extends UmlTestContext {

    
	@Test
	def void testSimpleCreation() {

		val model = Model.create [ // Simple creation
			name = "myUmlModel" // Simple set  
			visibility = VisibilityKind.PUBLIC_LITERAL // it keyword is not necessary
		].assemble.root

		assertEquals("myUmlModel", model.name)
		assertEquals(VisibilityKind.PUBLIC_LITERAL, model.visibility)
	}

	@Test
	def void testNestedCreation() {

		val model = Model.create [
			name = "myUmlModel"
			visibility = VisibilityKind.PUBLIC_LITERAL
			packagedElements += Interface.create [ // Nested creation
				name = "myInterface"
				ownedOperations += Operation.create [
					name = "myOperation"
				]
			]
		].assemble.root

		assertEquals("myInterface", model.packagedElements.get(0).name)
		assertEquals("myOperation", (model.packagedElements.get(0) as Interface).operations.get(0).name)
	}
	

}
