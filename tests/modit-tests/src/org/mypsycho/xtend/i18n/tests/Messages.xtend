package org.mypsycho.xtend.i18n.tests

import org.mypsycho.xtend.i18n.I18n

class Messages extends I18n {

	public val COMMENT = "comment"


    public var greetingVerb = "Greetings"
    public var crowd = 'folks'
    
    public var ()=>String greetingAll = [ '''«greetingVerb» «crowd» !''' ]
    public var (Object)=>String greetingYou = [ '''«greetingVerb» «it.getLabel("MMM/yyyy")» ...''' ]
    
    new() {
		Meal.main.label = "main course"
    }
}