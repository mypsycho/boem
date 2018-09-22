package org.mypsycho.modit.emf.i18n

import java.util.ArrayList
import java.util.Collections
import java.util.HashMap
import java.util.Locale
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.EEnumLiteral
import org.eclipse.emf.ecore.ENamedElement
import org.eclipse.emf.ecore.EPackage
import org.mypsycho.modit.i18n.I18n

class EmfI18nFactory {

	public static val JAVAEXTENSION = "Package" // well-known extension for Java Classname for EPackage

	public static val EXTENSION = "L10n"

	val instances = new HashMap<Pair<EPackage, Locale>, EmfI18n>

	val defaultValues = new HashMap<EPackage, EmfI18n>

	def EmfI18n get(EPackage it) {
		get(it, Locale.^default)
	}

	// XXX Improper approach for OSGI ?
	def EmfI18n get(EPackage it, Locale locale) {
		instances.computeIfAbsent(it -> locale) 
			[ create(key, locale, key.class.classLoader) ]
	}

	def EmfI18n create(EPackage it, Locale locale, ClassLoader loader) {
		val pkBasename = basename

		val byDefault = defaultValues.computeIfAbsent(it) [
			// default labels
			val byDefault = new EmfI18n(it, Locale.ROOT, EClassifiers.toMap[ instanceClass ])
			byDefault.setLabel(it, toDefaultLabel)
			EClassifiers // we dont want to iterate on sub-packages
				.map[ eAllContents.toIterable + Collections.singletonList(it) ]
				.flatten.filter(ENamedElement)
				.forEach [ byDefault.setLabel(it, toDefaultLabel) ]
			
			(I18n.toL10n(Locale.ROOT, pkBasename, loader) as EmfI18n.L10n)?.apply(byDefault)

			byDefault
		]

		val result = createInstance(it, locale)
		result.labels.putAll(byDefault.labels)

		I18n.RB_CONTROL.getCandidateLocales(name, locale) // note: name is not used, can be anything but null
			.reverseView.tail // from general to local, locale.root is already done
			.map[ I18n.toL10n(it, pkBasename, loader) as EmfI18n.L10n ]
			.filterNull.forEach[ apply(result) ]
		result
	}

	def basename(EPackage it) { // TODO how to handle package name to class name
		toJavaname + EXTENSION
	}

	def EmfI18n createInstance(EPackage it, Locale locale) {
		new EmfI18n(it, locale, defaultValues.get(it).classMap)
	}

	protected def toJavaname(EPackage it) {
		val javaname = class.interfaces.findFirst[ interfaces.contains(EPackage) ].name
		if (javaname.endsWith(JAVAEXTENSION)) 
			javaname.substring(0, javaname.length - JAVAEXTENSION.length) 
		else javaname
	}

	protected def toDefaultLabel(ENamedElement it) {
		if (it instanceof EEnumLiteral) literal // Class should start with Upper case
		else name.toText((it instanceof EClassifier) || (it instanceof EPackage))
	}

	static def toText(String it, boolean startUp) { // public for test purpose
		if (it === null) {
			return null
		}
		if (it.isEmpty()) {
			return it
		}

		val words = new ArrayList<String>
		var int tokenStart = 0
		var int currentType = Character.getType(charAt(tokenStart))
		for (var pos = tokenStart + 1; pos < length; pos++) {
			val type = Character.getType(charAt(pos))
			if (type != currentType) {
				if (type == Character.LOWERCASE_LETTER && currentType == Character.UPPERCASE_LETTER) {
					val newTokenStart = pos - 1
					if (newTokenStart != tokenStart) {
						words += substring(tokenStart, newTokenStart)
						tokenStart = newTokenStart
					}
				} else {
					words += substring(tokenStart, pos)
					tokenStart = pos
				}
				currentType = type
			}
		}
		words += substring(tokenStart, length)

		words.join(" ")
	}

}
