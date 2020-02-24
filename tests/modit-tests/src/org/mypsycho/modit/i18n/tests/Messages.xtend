package org.mypsycho.modit.i18n.tests

import org.mypsycho.modit.i18n.I18n
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.Date

/**
 * Test class declaring internationalized text.
 * <p>
 * It provides static text, dynamic text (with parameters) and text for enumeration.
 * </p>
 */
@Accessors(#[PUBLIC_GETTER, PACKAGE_SETTER])
class Messages extends I18n {

	public static val COMMENT = "comment"

	String greetingVerb = "Greetings"
	String crowd = 'folks'

	()=>String greetingAll = [ '''«greetingVerb» «crowd» !''' ]
	(Object)=>String greetingYou = [ '''«greetingVerb» «label» ...''' ]
	(Date)=>String greetingAt = [ '''«greetingVerb» on «it.getLabel("MMM/yyyy")» ...''' ]

	new() {
		Meal.main.label = "main course"
	}
}