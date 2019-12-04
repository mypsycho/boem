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
package org.mypsycho.modit.emf.sample.compare

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
 * <p>
 * In this example, with xtend and Mod-It, syntax provides hierarchy and forward reference .
 * </p>
 * 
 * @author Nicolas PERANSIN
 */
class SmartModItTest {

	extension EModIt factory = EModIt.using(BoemTestPackage.eINSTANCE)

	@Test
	def void test() {
		val it = A.create[ 
		    name = "AName"

			referencesNodeA += Node.ref("id4")

			// Single valued containment feature
			childNodeA = Node.createAs("id1")[ 
			    name = "SingleChildName"
			]

			// Adds one child
			childrenNodeA += Node.createAs("id2")[ 
			    name = "ANodeName0"
			]

			// Adds several children at once
			childrenNodeA += #[
			     Node.create[ 
			         name = "ANodeName1"
			     ],
			     Node.createAs("id4")[ 
			         name = "ANodeName2"
			     ]
			]

			autoContainementA += B.createAs("id5")[ 
                name = "BName"
				autoContainementA += C.createAs("id6")[ 
                    name = "CName" 
					autoContainementA += A.createAs("id7")[ 
					    name = "GrandChildA"
					]
			     ]
			]
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
