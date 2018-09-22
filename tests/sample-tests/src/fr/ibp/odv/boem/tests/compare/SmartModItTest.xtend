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
import fr.ibp.odv.boem.mm.test.BoemTest.Node
import org.junit.Test
import org.mypsycho.modit.emf.EModIt

import static org.junit.Assert.*

/**
 * Test used to compare syntax with pure java API
 * 
 * @author Arthur Daussy
 * @author Jacob Geisel
 *
 */
class SmartModItTest {

	extension EModIt factory = EModIt.using(BoemTestPackage.eINSTANCE)

	@Test
	def void test() {
		val it = A.create[ 
		    name = "AName"

			referencesNodeA += Node.ref("id4")

			// Single valued containment feature
			childNodeA = "id1".alias(Node.create[ 
			    name = "SingleChildName"
			])

			// Adds one child
			childrenNodeA += "id2".alias(Node.create[ 
			    name = "ANodeName0"
			])

			// Adds several children at once
			childrenNodeA += #[
			     Node.create[ 
			         name = "ANodeName1"
			     ],
			     "id4".alias(Node.create[ 
			         name = "ANodeName2"
			     ])
			]

			autoContainementA += "id5".alias(B.create[ 
                name = "BName"
				autoContainementA += "id6".alias(C.create[ 
                    name = "CName" 
					autoContainementA += "id7".alias(A.create[ 
					    name = "GrandChildA"
					])
			     ])
			])
		].assemble

		assertEquals("AName", root.name)
		assertEquals(3, root.childrenNodeA.size)
		assertEquals("SingleChildName", access(Node, "id1").name)
		assertEquals("ANodeName0", access(Node, "id2").name)
		assertEquals("ANodeName2", root.referencesNodeA.get(0).name)

		
		assertEquals("BName", access(B, "id5").name)
		assertEquals("CName", access(C, "id6").name)
		assertEquals("GrandChildA", access(A, "id7").name)
	}
}
