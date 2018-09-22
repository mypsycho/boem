package org.mypsycho.modit.emf.i18n

import java.util.Locale
import java.util.Map
import java.util.NoSuchElementException
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.ENamedElement
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage

class EmfI18n {

	public static val JAVAEXTENSION = "Package" // well-known extension for Java Classname for EPackage

	public static val EXTENSION = "L10n"

	// XXX Improper approach for OSGI ?
	static val DEFAULT_FACTORY = new EmfI18nFactory

	static def EmfI18n get(EPackage it) {
		DEFAULT_FACTORY.get(it, Locale.^default)
	}

	static def EmfI18n get(EPackage it, Locale locale) {
		DEFAULT_FACTORY.get(it, locale)
	}

	abstract interface L10n {

		def void apply(EmfI18n it)

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

	// Write
	def String setLabel(ENamedElement it, String value) {
		labels.put(it, value)
	}

	def String ->(ENamedElement it, String value) {
		label = value
	}

	// Class short cuts
	def String getLabel(Class<? extends EObject> it) {
		toEClass(it).label
	}

	def String setLabel(Class<? extends EObject> it, String value) {
		toEClass.label = value
	}

	def String ->(Class<? extends EObject> it, String value) {
		toEClass.label = value
	}

	private def toEClass(Class<? extends EObject> it) {
		val result = classMap.get(it)
		if(result !== null) result
		else throw new NoSuchElementException("Class " + name + " is undefined for " + source.name)
	}


}
