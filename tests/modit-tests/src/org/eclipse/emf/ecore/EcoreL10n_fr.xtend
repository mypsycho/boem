package org.eclipse.emf.ecore

import org.mypsycho.modit.emf.i18n.EmfI18n
import org.mypsycho.modit.emf.i18n.EmfI18n.L10n

class EcoreL10n_fr implements L10n {
	
	override apply(extension EmfI18n it) {
		EClass.label = "Classe EMF"
		EAttribute.label = "Attribut EMF"
		EcorePackage.eINSTANCE.ENamedElement_Name.label = "nom"

	}
	
}