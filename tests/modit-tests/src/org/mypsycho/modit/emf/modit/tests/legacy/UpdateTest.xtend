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
package org.mypsycho.modit.emf.modit.tests.legacy

import fr.ibp.odv.boem.mm.test.BoemTest.A
import fr.ibp.odv.boem.mm.test.BoemTest.B
import fr.ibp.odv.boem.mm.test.BoemTest.BoemTestPackage
import fr.ibp.odv.boem.mm.test.BoemTest.C
import fr.ibp.odv.boem.mm.test.BoemTest.NamedElement
import java.util.NoSuchElementException
import org.eclipse.emf.ecore.EObject
import org.junit.Test
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.modit.tests.ModItTestContext

import static org.junit.Assert.*

/**
 * Tests updates.
 */
class UpdateTest extends ModItTestContext {

	extension EModIt factory = EModIt.using(BoemTestPackage.eINSTANCE)
    def <T extends EObject> T >>(String id, T it) { return factory.alias(id, it) }
    
	/**
	 * Tests to update an element of a model
	 */
	@Test
	def void testUpdatingElement() {

		val maA = A.create [
			autoContainementA += "B" >> B.create [
				autoContainementA += "D" >> C.create[]
			]
		].assemble

		assertNull(maA.root.name)
		assertNull(maA.access(NamedElement, "B").name)

		maA.update [
			name = "NameA"
			autoContainementA.get(0)=> [
				name = "NameB"
				autoContainementA.get(0)=> [
					name = "NameD"
				]
			]
		]

		assertEquals("NameA", maA.root.name)
		assertEquals("NameB", maA.access(B, "B").name)

		maA.access(B, "B").name = "NameB2"

		assertEquals("NameB2", maA.access(B, "B").name)
	}
	
	/**
	 * Tests to update a sub part of a model
	 */
	@Test
	def void testUpdatingASubTree(){
		val it = A.create [
			autoContainementA += "B" >> B.create [
				autoContainementA += "C" >> C.create[]
			]
		].assemble
		
		// Throw an illegal state exception since D is not defined
		try {
			access("D")
			fail(NoSuchElementException + " was expected")
		} catch(NoSuchElementException expected) {
		}
		
		update(C,"C")[
			autoContainementA += "D" >> C.create[]
		]
		
		assertNotNull(access("D"))
	}
}
