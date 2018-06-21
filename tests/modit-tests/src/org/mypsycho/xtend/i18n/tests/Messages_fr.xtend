package org.mypsycho.xtend.i18n.tests
       
import org.mypsycho.xtend.i18n.I18n

class Messages_fr implements I18n.L10n<Messages> {

    override apply(extension Messages it) {
        greetingVerb = 'Salut'
        crowd = 'tout le monde'
        
        Meal.label = 'Repas'
        Meal.setLabel(COMMENT, "c'est important")
        Meal.starter.label = 'entrée'
        Meal.main.label = 'plat'
        Meal.cheese.label = 'fromage'
    }
    
}