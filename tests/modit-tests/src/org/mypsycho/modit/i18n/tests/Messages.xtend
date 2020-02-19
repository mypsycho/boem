package org.mypsycho.modit.i18n.tests

import org.mypsycho.modit.i18n.I18n

/**
 * Test class declaring internationalized text.
 * <p>
 * It provides static text, dynamic text (with parameters) and text for enumeration.
 * </p>
 */
 class Messages extends I18n {

	public static val COMMENT = "comment"

	public var greetingVerb = "Greetings"
	public var crowd = 'folks'

	public var ()=>String greetingAll = [ '''«greetingVerb» «crowd» !''' ]
	public var (Object)=>String greetingYou = [ '''«greetingVerb» «it.getLabel("MMM/yyyy")» ...''' ]

	new() {
		Meal.main.label = "main course"
	}
}