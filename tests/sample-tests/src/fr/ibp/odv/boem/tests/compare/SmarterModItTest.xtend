/*******************************************************************************
 * Copyright (c) 2016 I-BP.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Arthur Daussy - initial API and implementation
 *    Jacob Geisel - extending test coverage and documentation
 *******************************************************************************/
package fr.ibp.odv.boem.tests.compare

import fr.ibp.odv.boem.mm.test.BoemTest.A
import fr.ibp.odv.boem.mm.test.BoemTest.B
import fr.ibp.odv.boem.mm.test.BoemTest.BoemTestPackage
import fr.ibp.odv.boem.mm.test.BoemTest.C
import fr.ibp.odv.boem.mm.test.BoemTest.NamedElement
import fr.ibp.odv.boem.mm.test.BoemTest.Node
import org.junit.Test
import org.mypsycho.emf.modit.EModIt

import static org.junit.Assert.*

/**
 * Test used to compare syntax with pure java API
 * 
 * @author Arthur Daussy
 * @author Jacob Geisel
 *
 */
class SmarterModItTest {

	extension EModIt factory = EModIt.using(BoemTestPackage.eINSTANCE) [ descr|
	     descr.contentProvider = [ content, value |
            if (value instanceof NamedElement) value.name = content
        ]

        descr.idProvider = [
            // Element is named 
            if (it instanceof NamedElement) {
                // and its path is available
                val parentId = if (eContainer !== null) descr.idProvider.apply(eContainer) else ""
                if ((name !== null) && (parentId !== null)) parentId + "/" + name 
            }
        ]        
	]
	

	@Test
	def void test() {
	    // No need to create
		val it = A.create("AName") [

			referencesNodeA += Node.ref("/AName/ANodeName2")

			// Single valued containment feature
			childNodeA = Node.create("SingleChildName")

			// Adds one child
			childrenNodeA += "id2".alias(Node.create("ANodeName0"))

			// Adds several children at once
			childrenNodeA += #[
			     Node.create("ANodeName1"),
			     Node.create("ANodeName2")
			]

			autoContainementA += B.create("BName") [
				autoContainementA += C.create("CName") [
					autoContainementA += A.create("GrandChildA")
				]
			]
		].assemble

		assertEquals("AName", root.name)
		assertEquals(3, root.childrenNodeA.size)
		assertEquals("SingleChildName", root.childNodeA.name)
		assertEquals("ANodeName0", access(Node, "id2").name)
		assertEquals("ANodeName1", access(Node, "/AName/ANodeName1").name)
		assertEquals("ANodeName2", access(Node, "/AName/ANodeName2").name)
		assertEquals("ANodeName2", root.referencesNodeA.get(0).name)
		
		assertEquals("GrandChildA", access(A, "/AName/BName/CName/GrandChildA").name)
	}
}
