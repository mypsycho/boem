package fr.ibp.odv.boem.tests.uml

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

		val classAccessor = Class.create [
			name = "myUmlClass"
			ownedAttributes += Property.create [
				type =  umlInterface
			]
		].assemble

		assertEquals(umlInterface, classAccessor.root.ownedAttributes.get(0).type)
	}

	@Test
	def void useIds() {

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

	}
}
