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
package org.mypsycho.modit.emf.i18n.tests

import java.util.Locale
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EcorePackage
import org.junit.Test
import org.mypsycho.modit.emf.i18n.EmfI18n

import static org.junit.Assert.*

class EmfI18nTest {
	
	val EMF = EcorePackage.eINSTANCE
	    
    @Test
    def void defaultLabels() {
    	val extension EmfI18n it = EmfI18n.get(EMF, Locale.US)
		assertEquals("EMF class", EClass.label)
		assertEquals("EMF data type", EMF.EDataType.label)
		assertEquals("name", EMF.ENamedElement_Name.label)
		assertEquals("EMF model element", EMF.EAnnotation_EModelElement.label)
    }
	
    @Test
    def void localisedLabels() {
    	val extension EmfI18n it = EmfI18n.get(EMF, Locale.FRANCE)
		assertEquals("Classe EMF", EClass.label)
		assertEquals("Attribut EMF", EMF.EAttribute.label)
		assertEquals("nom", EMF.ENamedElement_Name.label)
    }
}
