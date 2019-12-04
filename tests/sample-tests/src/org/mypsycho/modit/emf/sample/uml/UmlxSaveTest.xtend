package org.mypsycho.modit.emf.sample.uml

import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.Operation
import org.eclipse.uml2.uml.VisibilityKind
import org.eclipse.uml2.uml.resource.UMLResource
import org.junit.Test

import static org.junit.Assert.*

import static extension org.eclipse.emf.common.util.URI.*

class UmlxSaveTest extends UmlTestContext {


	@Test
	def void save() {
		val modelAccessor = Model.create [
			name = "myUmlModel"
			visibility = VisibilityKind.PUBLIC_LITERAL
			ownedTypes += Interface.create [ // Add in containment feature
				name = "myInterface"
				ownedOperations += Operation.create [
					name = "myOperation"
				]
			]
		].save(getResourceSet(), "p2/myUmlModel.uml".createPlatformResourceURI(true))

		assertTrue(getResourceSet().resources.get(0) instanceof UMLResource)
		assertEquals("myUmlModel", modelAccessor.root.name) // modelAccessor.root.name is a Model
	}

}
