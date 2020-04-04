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
package org.mypsycho.modit.emf.i18n

import java.util.Locale
import java.util.Map
import java.util.NoSuchElementException
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.ENamedElement
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage

class EmfI18n {

	/** A different package must used to avoid SecurityException[signers informations does not match] */
	public static val PACKAGE_PATH = ".i18n"
	
	public static val CLASS_EXTENSION = "L10n"
		

	// XXX Improper approach for OSGI ?
	// Holding instances of classes losing their classbundle origin seems bad.
	static val DEFAULT_FACTORY = new EmfI18nFactory

	static def EmfI18n get(EPackage it) {
		DEFAULT_FACTORY.get(it, Locale.^default)
	}

	static def EmfI18n get(EPackage it, Locale locale) {
		DEFAULT_FACTORY.get(it, locale)
	}

	static abstract class L10n {

		protected EmfI18n instance

		def void init(EmfI18n it) {
			instance = it
			apply
		}
		
		def void apply()
		
		// Write 
		def String setLabel(ENamedElement it, String value) {
			instance.labels.put(it, value)
		}
		
		// Shortcut
		def String ->(ENamedElement it, String value) {
			label = value
		}
		
		// Write using classes
		def String setLabel(Class<? extends EObject> it, String value) {
			instance.toEClass(it).label = value
		}
		
		// Shortcut
		def String ->(Class<? extends EObject> it, String value) {
			label = value
		}
		
	}

	public val Locale locale

	public val EPackage source

	package val Map<Class<?>, EClassifier> classMap // shared by all locales

	package val Map<ENamedElement, String> labels = newHashMap

	new(EPackage source, Locale locale, Map<Class<?>, EClassifier> classes) {
		this.locale = locale
		this.source = source
		this.classMap = classes
	}

	// Read
	def String getLabel(ENamedElement it) {
		labels.get(it)
	}

	// Class short cuts
	def String getLabel(Class<? extends EObject> it) {
		toEClass(it).label
	}


	private def toEClass(Class<? extends EObject> it) {
		val result = classMap.get(it)
		if(result !== null) result
		else throw new NoSuchElementException("Class " + name + " is undefined for " + source.name)
	}


}
