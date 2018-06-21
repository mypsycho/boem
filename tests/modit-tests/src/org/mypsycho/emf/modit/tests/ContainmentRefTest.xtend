package org.mypsycho.emf.modit.tests

import fr.ibp.odv.boem.mm.test.BoemTest.A
import fr.ibp.odv.boem.mm.test.BoemTest.B
import fr.ibp.odv.boem.mm.test.BoemTest.BoemTestPackage
import fr.ibp.odv.boem.mm.test.BoemTest.C
import fr.ibp.odv.boem.mm.test.BoemTest.Node
import org.eclipse.emf.ecore.EObject
import org.junit.Test
import org.mypsycho.emf.modit.EModIt

import static org.junit.Assert.*

/**
 * Tests on containment EReferences.
 */
class ContainmentRefTest extends ModItTestContext {

	extension EModIt factory = EModIt.using(BoemTestPackage.eINSTANCE)
    def <T extends EObject> T >>(String id, T it) { return factory.alias(id, it) }

	@Test
	def testCreationContainment() {
		// Simple creation
		val model = A.create [
			name = "AName"
		].assemble

		assertNoAdapterLeft(model.root)
		assertEquals("AName", model.root.name)

	}

	@Test
	def testContainementOverloading() {
		val model = A.create [
			name = "AName"
			autoContainementA += B.create [
				name = "BName"
				autoContainementA += C.create [
					name = "CName"
				]
			]
		].assemble

		assertEquals("AName", model.root.name)
		assertEquals(1, model.root.autoContainementA.size)
		val b = model.root.autoContainementA.get(0)
		assertEquals("BName", b.name)
		assertEquals(1, b.autoContainementA.size)
		val c = b.autoContainementA.get(0)
		assertEquals("CName", c.name)
	}

	@Test(expected=IllegalArgumentException)
	def void createUnknownType() {
		// Fails it case of using build methods on incorrect object
		EObject.create
	}

	@Test
	def testNestedBasicContainment() {

		val it = A.create [
			name = "AName";

			// Single valued containment feature
			childNodeA = Node.create [
				name = "SingleChildName"
			]

			// Adds one child
			childrenNodeA += Node.create [
				name = "ANodeName0"
			]

			// Adds several children at once
			childrenNodeA += #[
			    Node.create [
				    name = "ANodeName1"
			    ], 
			    Node.create [
				    name = "ANodeName2"
			    ]
			]
		].assemble

		assertNoAdapterLeft(root)
		assertEquals("AName", root.name)
		assertEquals("SingleChildName", root.childNodeA.name)
		assertEquals(3, root.childrenNodeA.size)
		assertEquals("ANodeName0", root.childrenNodeA.get(0).name)
		assertEquals("ANodeName1", root.childrenNodeA.get(1).name)
		assertEquals("ANodeName2", root.childrenNodeA.get(2).name)
	}

	@Test(expected=NullPointerException)
	def void testNullContainment() {

		A.create [
			name = "AName";

			// Single valued containment feature
			childNodeA = Node.create [
				name = "SingleChildName"
			]

			// Adds one child
			childrenNodeA += null

			// Adds several children at once
			childrenNodeA += #[null, null]
		].assemble

	}

	@Test
	def testNestedBasicContainment_Ref() {

		val model = B.create [
			name = "AName"

			// Adds one child with reference
			childrenNodeA += "id0" >> Node.create [
				name = "ANodeName0"
			]
			// Adds several children at once with references
			childrenNodeA += #[
				"id1" >> Node.create [
					name = "ANodeName1"
				],
				"id2" >> Node.create [
					name = "ANodeName2"
				]
			]

			// Adds several children at once with references
			childrenNodeB += #[
				"id3" >> Node.create [
					name = "ANodeName3"
				],
				"id4" >> Node.create [
					name = "ANodeName4"
				]
			]
		].assemble

		assertNoAdapterLeft(model.root)
		assertEquals("AName", model.root.name)
		assertEquals(3, model.root.childrenNodeA.size)
		assertEquals("ANodeName0", model.access(Node, "id0").name)
		assertEquals("ANodeName1", model.access(Node, "id1").name)
		assertEquals("ANodeName2", model.access(Node, "id2").name)

		assertEquals(2, model.root.childrenNodeB.size)
		assertEquals("ANodeName3", model.access(Node, "id3").name)
		assertEquals("ANodeName4", model.access(Node, "id4").name)
	}

	@Test(expected=IllegalStateException)
	def void testDuplicatedId() {
		A.create [
			name = "AName"
			childrenNodeA += #[
				"id1" >> Node.create [
					name = "ANodeName"
				],
				"id1" >> Node.create [
					name = "ANodeName2"
				]
			]
		].assemble
	}
}
