/*******************************************************************************
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Nicolas PERANSIN - initial API and implementation
 *******************************************************************************/
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