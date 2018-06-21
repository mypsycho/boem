package fr.ibp.odv.boem.tests.uml

import org.eclipse.uml2.uml.Generalization
import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.junit.Test

import static org.junit.Assert.*

class UmlxImplicitIdTest extends UmlTestContext {

	@Test
	def void testImplicitId() {
		val modelAccessor = Model.create [
			name = "myUmlModel"
			packagedElements += #{
				Interface.create [
					name = "it1"
				],
				Interface.create [
					name = "it2"
					generalizations += Generalization.create [
						specific = Interface << "it2"
						general = Interface << "it3"
					]
				],
				Interface.create [
					name = "it3"
				]
			}
		].assemble

		val it2 = modelAccessor.access(Interface, "it2")
		assertEquals("it3" => modelAccessor, it2.generalizations.get(0).general)
	}

}
