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