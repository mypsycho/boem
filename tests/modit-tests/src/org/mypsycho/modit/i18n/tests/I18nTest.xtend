package org.mypsycho.modit.i18n.tests

import java.util.Calendar
import java.util.Locale
import org.junit.Test
import org.mypsycho.modit.i18n.I18n

import static org.junit.Assert.*

class I18nTest {
    
    static val LABELS = I18n.get(Messages, Locale.FRANCE)
    var extension Messages i18n

    static val DATE0 = new Calendar.Builder().setDate(1976, 2-1, 12).setTimeOfDay(7, 55, 0).build.time
    
    
	public val ()=>String menu = [ 
'''«Meal.label»«
IF Meal.getLabel('comment') !== null
»(«Meal.getLabel('comment')»)«
ENDIF
»:«
FOR f : Meal.values SEPARATOR ','
»«f.label»«
ENDFOR
»''' 
	]
    
    def allCases(Locale locale) {
        i18n = if (locale !== null) I18n.get(Messages, locale) else LABELS
        #[
        	greetingAll.apply, // Test references
        	greetingYou.apply("Joe"), // Test parameter
        	greetingYou.apply(DATE0), // Test value localisation
        	menu.apply // Test classes and enum
		]
    }
    
    @Test
    def void onRoot() {
        assertArrayEquals(#[
        	"Greetings folks !", 
        	"Greetings Joe ...", 
        	"Greetings Feb/1976 ...",
        	"Meal:starter,main course,cheese,dessert" 
		], Locale.ROOT.allCases)
    }
        
    @Test
    def void onLanguage() {
    	val o = Messages.classLoader.loadClass("org.mypsycho.xtend.i18n.tests.Messages_fr")
    	
    	println(o)
    	
        assertArrayEquals(#[
        	"Salut tout le monde !", 
        	"Salut Joe ...", 
        	"Salut févr./1976 ...",
        	"Repas(c'est important):entrée,plat,fromage,dessert"
		], Locale.FRANCE.allCases)
    }
    
            
    @Test
    def void onCountry() {
        assertArrayEquals(#[
        	"Allo tout le monde !", 
        	"Allo Joe ...", 
        	"Allo févr./1976 ...",
			"Bectance(Y a bon):entrée,Poutine,fromage,dessert"
		], Locale.CANADA_FRENCH.allCases)
    }
    
                
    @Test
    def void onStatic() {
        assertArrayEquals(#[
        	"Salut tout le monde !", 
        	"Salut Joe ...", 
        	"Salut févr./1976 ...",
        	"Repas(c'est important):entrée,plat,fromage,dessert"
		], allCases(null))
    }
    
}