/*******************************************************************************
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Nicolas PERANSIN - initial API and implementation
 *******************************************************************************/
package org.mypsycho.modit.emf.modit.tests

import fr.ibp.odv.boem.mm.test.BoemTest.A
import fr.ibp.odv.boem.mm.test.BoemTest.B
import fr.ibp.odv.boem.mm.test.BoemTest.Node
import fr.ibp.odv.boem.mm.test.BoemTest.BoemTestPackage
import java.util.NoSuchElementException
import org.eclipse.emf.ecore.EObject
import org.junit.Test
import org.mypsycho.modit.ModItPool
import org.mypsycho.modit.emf.EModIt

import static org.junit.Assert.*

/**
 * Test non-containment EReferences.
 */
class RefTest extends ModItTestContext {

	extension EModIt factory = EModIt.using(BoemTestPackage.eINSTANCE)
    def <T extends EObject> T >>(String id, T it) { factory.alias(id, it) }
    def <T extends EObject> T <<(Class<T> it, String id) { factory.ref(it, id) }
    def static EObject =>(String id, ModItPool<EObject, ?> pool) { pool.access(id) }
    
    
	/**
	 * Tests that an element registered against an id can be accessed with its id within the tree
	 */
	@Test
	def testSimpleRef() {
		val it = A.create [
			name = "AName"
			autoContainementA += "id0" >> B.create [
				referenceNodeA = Node.ref("id1")
			]
			childrenNodeA += "id1" >> Node.create [
				name = "ANode"
			]
		].assemble

		assertNoBuildUriLeft(root)
		assertNoAdapterLeft(root)

		assertEquals("ANode", access(Node, "id1").name)
		assertEquals(access(Node, "id1"), access(B, "id0").referenceNodeA)
	}



	/**
	 * Same as {@link #testSimpleRef} but using the syntax "<<"
	 */
	@Test
	def testSimpleRefThen() {
		val it = A.create [
			name = "AName"
			autoContainementA += "id0" >> B.create [
				referenceNodeA = Node << "id1"
			]
			childrenNodeA += "id1" >> Node.create [
				name = "ANode"
			]
		].assemble

		assertNoBuildUriLeft(root)
		assertNoAdapterLeft(root)
		assertEquals("ANode", access(Node, "id1").name)
		assertEquals(access(Node, "id1"), access(B, "id0").referenceNodeA)
	}

    
    /**
     * As default implementation uses URI, URI characters must be handled.
     */
    @Test
    def useSpecialChar() {
        val it = A.create [
            name = "AName"
            autoContainementA += "id?0" >> B.create [
                referenceNodeA = Node.ref("id#1")
            ]
            childrenNodeA += #[
                "id#1" >> Node.create [ name = "Node1" ],
                "id/2" >> Node.create [ name = "Node2" ],
                "id;3" >> Node.create [ name = "Node3" ]
            ]
        ].assemble

        assertNoBuildUriLeft(root)
        assertNoAdapterLeft(root)

        assertEquals("Node1", access(Node, "id#1").name)
        assertEquals("Node2", access(Node, "id/2").name)
        assertEquals("Node3", access(Node, "id;3").name)
        assertEquals(access(Node, "id#1"), access(B, "id?0").referenceNodeA)
    }
    
	@Test
	def testAccess() {
		val it = A.create [
			name = "AName"
			childrenNodeA += "id1" >> Node.create [
				name = "ANode"
			]
		].assemble

		val target = access(Node, "id1");
		val target2 = access("id1") as Node
		assertTrue(target2 == target)
		val target3 = access("id1")
		assertTrue(target3 == target)
		assertTrue(target == "id1" => it)

	}

	@Test(expected=NoSuchElementException)
	def void testSimpleRef_UnknownId() {
		A.create [
			name = "AName"
			autoContainementA += "id0" >> B.create [
				referenceNodeA = Node.ref("id1")
			]
			childrenNodeA += Node.create [
				name = "ANode"
			]
		].assemble
	}

	@Test(expected=ClassCastException)
	def void testSimpleRef_IncompatibleType() {
		A.create [
			name = "AName"
			autoContainementA += #{
				"id0" >> B.create [
					referenceNodeA = Node.ref("id1")
				], 
				"id1" >> B.create [
					name = "BName"
				]
			}
		].assemble
	}

	@Test
	def testManyRef() {
		val it = A.create [
			name = "AName"
			autoContainementA += "id0" >> B.create [
				referencesNodeA += Node.ref("id1")
			]
			childrenNodeA += "id1" >> Node.create [
				name = "ANode"
			]
		].assemble

		assertNoAdapterLeft(root)
		val target = access(Node, "id1");
		assertEquals("ANode", target.name)
		val refOwner = access(B, "id0");
		assertNoBuildUriLeft(root)
		assertEquals(1, refOwner.referencesNodeA.size)
		assertEquals(target, refOwner.referencesNodeA.get(0))

	}

	@Test
	def testManyRef2() {
		val it = A.create [
			name = "AName"
			autoContainementA += "id0" >> B.create [
				referencesNodeA += #[
					Node.ref("id1"),
					Node.ref("id2"),
					Node.ref("id3")
				]
			]
			childrenNodeA += #{
				"id1" >> Node.create [
					name = "id1"
				],
				"id2" >> Node.create [
					name = "id2"
				],
				"id3" >> Node.create [
					name = "id3"
				]
			}
		].assemble

		assertNoBuildUriLeft(root)
		assertNoAdapterLeft(root)
		
		val refOwner = access(B, "id0");
		assertEquals(3, refOwner.referencesNodeA.size)
		assertEquals(access(Node, "id1"), refOwner.referencesNodeA.get(0))
		assertEquals(access(Node, "id2"), refOwner.referencesNodeA.get(1))
		assertEquals(access(Node, "id3"), refOwner.referencesNodeA.get(2))

	}

	@Test(expected=NoSuchElementException)
	def void testManyRef_UnknowId() {
		A.create [
			name = "AName"
			autoContainementA += "id0" >> B.create [
				referencesNodeA += Node.ref("id1")
			]
			childrenNodeA += Node.create [
				name = "ANode"
			]
		].assemble
	}

	@Test(expected=ClassCastException)
	def void testManyRef_IncorrecType() {
		A.create [
			name = "AName"
			autoContainementA += "id0" >> B.create [
				referencesNodeA += Node.ref("id0")
			]
		].assemble
	}

}
