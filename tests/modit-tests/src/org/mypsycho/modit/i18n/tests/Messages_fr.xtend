package org.mypsycho.modit.i18n.tests
	   
import org.mypsycho.modit.i18n.I18n

class Messages_fr extends I18n.L10n<Messages> {

	override apply(extension Messages content) {
		greetingVerb = 'Salut'
		crowd = 'tout le monde'

		Meal.label = 'Repas'
		Meal.setLabel(Messages.COMMENT, "c'est important")
		Meal.starter.label = 'entrée'
		Meal.main.label = 'plat'
		Meal.cheese.label = 'fromage'
		
		greetingAt = [ '''«greetingVerb» le «it.getLabel("MMM/yyyy")» ...''' ]
	}

}