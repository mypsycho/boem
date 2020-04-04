package org.eclipse.emf.ecore.i18n

import org.eclipse.emf.ecore.EAttribute
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EcorePackage
import org.mypsycho.modit.emf.i18n.EmfI18n.L10n

/**
 * Automatic localization of EcorePackage for tests purpose.
 */
class EcoreL10n_fr extends L10n {
	
	val PKG = EcorePackage.eINSTANCE
	
	override apply() {
		typeof(EClass).label = "Classe EMF"
		typeof(EAttribute).label = "Attribut EMF"
		PKG.ENamedElement_Name.label = "nom"
	}
	
}