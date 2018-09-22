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
    	val extension EmfI18n it = EmfI18n.get(EcorePackage.eINSTANCE, Locale.US)
		assertEquals("E Class", EClass.label)
		assertEquals("E Data Type", EMF.EDataType.label)
		assertEquals("name", EMF.ENamedElement_Name.label)
    }
	
  
    @Test
    def void localisedLabels() {
    	val extension EmfI18n it = EmfI18n.get(EMF, Locale.FRANCE)
		assertEquals("Classe EMF", EClass.label)
		assertEquals("Attribut EMF", EMF.EAttribute.label)
		assertEquals("nom", EMF.ENamedElement_Name.label)
    }
}