package org.mypsycho.emf.modit.tests

import fr.ibp.odv.boem.mm.test.BoemTest.A
import fr.ibp.odv.boem.mm.test.BoemTest.B
import fr.ibp.odv.boem.mm.test.BoemTest.BoemTestPackage
import fr.ibp.odv.boem.mm.test.BoemTest.NamedElement
import fr.ibp.odv.boem.mm.test.BoemTest.Node
import org.junit.Test
import org.mypsycho.emf.modit.EModIt

import static org.junit.Assert.*

/**
 * Tests on implicit IDs.
 */
class AutoIdTest extends ModItTestContext {
	
	extension EModIt factory = EModIt.using(BoemTestPackage.eINSTANCE) [
        idProvider = [ if (it instanceof NamedElement) name else null ]
	] 
	
	@Test
	def void testNominal() {
		val it = A.create [
			name = "AName"
			autoContainementA += "id0".alias(B.create [
				referencesNodeA += Node.ref("id1", "id2", "id3", "id4")
			])
			childrenNodeA += #[
				Node.create[name = "id1"],
				"id2".alias(Node.create[name = "id2"]),
				"id3".alias(Node.create[name = "idX"]),
				"id4".alias(Node.create[name = "id1"]) // alias is before idProvider
				
			]
		].assemble

		assertNoBoemUriLeft(root)
		assertNoAdapterLeft(root)
		val refOwner = access(B, "id0");
		assertEquals(4, refOwner.referencesNodeA.size)
		assertEquals(access(Node, "id1"), refOwner.referencesNodeA.get(0))
		assertEquals(access(Node, "id2"), refOwner.referencesNodeA.get(1))
		assertEquals(access(Node, "id3"), refOwner.referencesNodeA.get(2))
		assertEquals(access(Node, "id4"), refOwner.referencesNodeA.get(3))
	}
	
	   @Test
    def void testPathRef() {
        val it = A.create [
            name = "AName"
            autoContainementA += "id0".alias(B.create [
                referencesNodeA += #[
                    Node.ref("AName") [ (it as A).childrenNodeA.findFirst[name == "id1"] ],
                    Node.ref("id2"),
                    Node.ref("id3"),
                    Node.ref("id4")
                ]
            ])
            childrenNodeA += #[
                Node.create[name = "id1"],
                Node.create[name = "id2"],
                Node.create[name = "id3"],
                "id4".alias(Node.create[name = "id1"]) // alias is before idProvider
                
            ]
        ].assemble

        assertEquals("id1", root.autoContainementA.get(0).referencesNodeA.get(0).name)

    }
	
	@Test(expected=IllegalStateException)
	def void testConflictByAuto() {
		A.create [
			childrenNodeA += #[
				Node.create[name = "id1"],
				"id1".alias(Node.create)
			]
		].assemble
	}
	
	@Test(expected=IllegalStateException)
	def void testConflictByAutoThen() {
		A.create [
			childrenNodeA += #[
				"id1".alias(Node.create),
				Node.create[name = "id1"]
			]
		].assemble
	}
	
	@Test(expected=IllegalStateException)
	def void testExplicitConflict() {
		A.create [
			childrenNodeA += #[
				Node.create[name = "id1"],
				Node.create[name = "id1"]
			]
		].assemble
	}
}