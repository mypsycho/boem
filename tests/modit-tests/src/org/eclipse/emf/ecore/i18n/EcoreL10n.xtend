package org.eclipse.emf.ecore.i18n

import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.ENamedElement
import org.eclipse.emf.ecore.EcorePackage
import org.mypsycho.modit.emf.i18n.EmfI18n.L10n
import org.eclipse.emf.ecore.EStructuralFeature

/**
 * Automatic localization of EcorePackage for tests purpose.
 */
class EcoreL10n extends L10n {
	
	val extension EcorePackage PKG = EcorePackage.eINSTANCE
	
	/**
	 * Change ugly 'E' prefix into 'EMF' for class, remove from feature.
	 */
	override apply() {
		PKG.eAllContents // AllContents is ok because no sub package in EMF
			.filter(typeof(ENamedElement))
			.forEach[
				val text = instance.getLabel(it)
				if (it instanceof EClassifier && text.startsWith("E ")) { // types
					label = "EMF " + text.substring(2)
				} else if (it instanceof EStructuralFeature && text.startsWith("e ")) { // attributes
					label = text.substring(2)
				}
				
			]
	}
	
}