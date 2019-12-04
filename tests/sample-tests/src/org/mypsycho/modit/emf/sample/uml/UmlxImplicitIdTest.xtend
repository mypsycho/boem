package org.mypsycho.modit.emf.sample.uml

import org.eclipse.uml2.uml.Generalization
import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.junit.Test

import static org.junit.Assert.*

class UmlxImplicitIdTest extends UmlTestContext {

	@Test
	def void testImplicitId() {
		val it = Model.create [
			name = "myUmlModel"
			packagedElements += #{
				Interface.create [
					name = "it1"
				],
				Interface.create [
					name = "it2"
					generalizations += Generalization.create [
						// specific = Interface << "it2" // reverse linked must not be set
						general = Interface << "it3"
					]
				],
				Interface.create [
					name = "it3"
				]
			}
		].assemble

		val it2 = access(Interface, "it2")
		assertEquals(access("it3"), it2.generalizations.get(0).general)
	}

}
