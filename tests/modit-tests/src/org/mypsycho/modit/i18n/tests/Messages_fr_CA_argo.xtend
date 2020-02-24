package org.mypsycho.modit.i18n.tests

import org.mypsycho.modit.i18n.I18n

class Messages_fr_CA_argo extends I18n.L10n<Messages> {

	override apply(extension Messages content) {
		greetingVerb = 'Allo'
		Meal.label = "Bectance"
		Meal.setLabel(Messages.COMMENT, "Y a bon")
		Meal.main.label = "Poutine" // Bonjour les cliches
	}

}