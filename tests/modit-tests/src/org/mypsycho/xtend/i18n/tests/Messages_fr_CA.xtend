package org.mypsycho.xtend.i18n.tests

import org.mypsycho.xtend.i18n.I18n

class Messages_fr_CA implements I18n.L10n<Messages> {
        
    override apply(extension Messages it) {
        greetingVerb = 'Allo'
		Meal.label = "Bectance"
		Meal.setLabel(COMMENT, "Y a bon")
		Meal.main.label = "Poutine" // Bonjour les cliches
    }
    
}