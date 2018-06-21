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
package fr.ibp.odv.boem.tests.compare;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import fr.ibp.odv.boem.mm.test.BoemTest.A;
import fr.ibp.odv.boem.mm.test.BoemTest.B;
import fr.ibp.odv.boem.mm.test.BoemTest.BoemTestFactory;
import fr.ibp.odv.boem.mm.test.BoemTest.C;
import fr.ibp.odv.boem.mm.test.BoemTest.Node;

/**
 * Test used to compare syntax with Boem API
 * 
 * @author Arthur Daussy
 * @author Jacob Geisel
 *
 */
public class PainfullJavaTest {

	@Test
	public void test() {
		A it = BoemTestFactory.eINSTANCE.createA();
		it.setName("AName");

		Node id1 = BoemTestFactory.eINSTANCE.createNode();
		id1.setName("SingleChildNode");
		it.setChildNodeA(id1);

		Node id2 = BoemTestFactory.eINSTANCE.createNode();
		id2.setName("ANodeName0");
		it.getChildrenNodeA().add(id2);

		Node id3 = BoemTestFactory.eINSTANCE.createNode();
		id3.setName("ANodeName1");
		it.getChildrenNodeA().add(id3);

		Node id4 = BoemTestFactory.eINSTANCE.createNode();
		id4.setName("ANodeName2");
		it.getChildrenNodeA().add(id4);

		// Back to the Future !!
		// We have described 'a' but need to create all reference to complete it.
		it.setReferenceNodeA(id4);

		B id5 = BoemTestFactory.eINSTANCE.createB();
		id5.setName("BName");
		it.getAutoContainementA().add(id5);

		C id6 = BoemTestFactory.eINSTANCE.createC();
		id6.setName("CName");
		id5.getAutoContainementA().add(id6);

		A grandChildA = BoemTestFactory.eINSTANCE.createA();
		grandChildA.setName("GrandChildA");
		id6.getAutoContainementA().add(grandChildA);

		// We have to name all elements to fill them !!
		// So we fill test stupid name : 'a', 'b', ..., x0, x1, ...

		assertEquals("AName", it.getName());
		assertEquals(3, it.getChildrenNodeA().size());
		assertEquals("SingleChildNode", it.getChildNodeA().getName());
		assertEquals("ANodeName0", it.getChildrenNodeA().get(0).getName());

		assertEquals("ANodeName2", it.getReferenceNodeA().getName());

		assertEquals("GrandChildA", grandChildA.getName());

	}

}
