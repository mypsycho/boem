package org.mypsycho.modit.emf.sample.uml

import org.eclipse.uml2.uml.Class
import org.eclipse.uml2.uml.Generalization
import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.Property
import org.eclipse.uml2.uml.VisibilityKind
import org.junit.Test

import static org.junit.Assert.*

class UmlxReferencesTest extends UmlTestContext {

	
	@Test
	def void addMultiple() {

		val modelAccessor = Model.create [
			name = "myUmlModel"
			visibility = VisibilityKind.PUBLIC_LITERAL
			packagedElements += #{ // Nested multiple creation
			"umlInterface" >> Interface.create [ // With id
				name = "myInterface"
			], "umlInterface2" >> Interface.create [ // With id
				name = "myInterface2"
			], Interface.create [ // WithOUT id
				name = "myInterface3"
			]}
		].assemble

		assertEquals(3, modelAccessor.root.packagedElements.size)
	}

	@Test
	def void assigneSingle() {
		val umlInterface = Interface.create [
			name = "myInterface"
		]

		val it = Class.create [
			name = "myUmlClass"
			ownedAttributes += Property.create [
				type =  umlInterface
			]
		].assemble

		assertEquals(umlInterface, root.ownedAttributes.get(0).type)
	}

	@Test
	def void useIds() {
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
		assertEquals(access("umlInterface"), umlgen.targets.get(0))
		assertEquals(access("umlInterface2"), umlgen.sources.get(0))

	}
}
