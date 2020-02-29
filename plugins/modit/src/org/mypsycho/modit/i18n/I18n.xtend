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
package org.mypsycho.modit.i18n

import java.text.DateFormat
import java.text.DecimalFormat
import java.text.DecimalFormatSymbols
import java.text.NumberFormat
import java.text.SimpleDateFormat
import java.util.Date
import java.util.HashMap
import java.util.Locale
import java.util.ResourceBundle
import org.eclipse.xtend.lib.annotations.AccessorType
import org.eclipse.xtend.lib.annotations.Accessors

import static extension org.eclipse.xtend.lib.annotations.AccessorType.*

/**
 * Abstract class to declare internationalized elements.
 * <p>
 * Default elements can be defined in a I18n subclass and localization in applied by redefinition
 * in I18n.L10n class following ResourceBundle pattern.
 * </p>
 * <p>
 * For a faster coding/reading, user should declare accessors as:
 * <pre>
 * @Accessors(#[PUBLIC_GETTER, PACKAGE_SETTER])
 * </pre>
 * </p>
 */
abstract class I18n {
	
	/**
	 * Abstract class to provide localized value of an internationalized class.

	 * <T> I18n class to localize
	 */
	abstract static class L10n<T extends I18n> {
		
		var T instance
		
		protected def void setLabel(Class<?> it, String value) { setLabel(it, null, value) }
			
		protected def void setLabel(Enum<?> it, String value) { setLabel(it, null, value) }
		
		protected def void setLabel(Class<?> it, String hint, String value) { 
			instance.statics.put(staticKey(hint), value)
		}
		
		protected def void setLabel(Enum<?> it, String hint, String value) { 
			instance.statics.put(staticKey(hint), value)
		}
		
		private def void update(T it) {
			instance = it
			apply
		}
		
		/**
		 * Placeholder for user to attach local value to a container.
		 * <p>
		 * For a faster coding/reading, user should declare the content as extension.
		 * </p>
		 * @param content to localize (avoid 'it' to write lambda)
		 */
		def void apply(T content)
	}
	
	/**
	 * Singleton to build localization sequence.
	 */
	static val RB_CONTROL = new ResourceBundle.Control {/* Default instance is not accessible */}
	
	// This singleton is an issue for OSGI classloaders.
	static val INSTANCES = new HashMap<Pair<Class<? extends I18n>,Locale>,I18n>
	
	// Inspired from {@link java.text.MessageFormat#makeFormat(int, int, StringBuilder[])}
	static val NUMBER_FORMATS = #[
		new PredefinedFormat(null)       [ it, locale | new DecimalFormat(it, DecimalFormatSymbols.getInstance(locale)) ],
		new PredefinedFormat("")         [ it, locale | NumberFormat.getInstance(locale) ],
		new PredefinedFormat("currency") [ it, locale | NumberFormat.getCurrencyInstance(locale) ],
		new PredefinedFormat("percent")  [ it, locale | NumberFormat.getPercentInstance(locale) ],
		new PredefinedFormat("integer")  [ it, locale | NumberFormat.getIntegerInstance(locale) ]
	]
	
	static class PredefinedFormat<T,F> {
		val String pattern
		val (String, Locale)=>F provider
		
		new(String pattern, (String, Locale)=>F provider) {
			this.pattern = pattern
			this.provider = provider
		}
	}
	
	@Accessors(AccessorType.PUBLIC_GETTER)
	package var Locale locale // Protected from modification outside creation
	
	/** 
	 * Association of static elements (class and enum) to labels.
	 */
	package val statics = <Object, String>newHashMap
	
	
	/**
	 * Return the label associated to this element.
	 * 
	 */
	def String getLabel(Object it) { getLabel(it, null) }
	
	def dispatch String getLabel(Object it, String hint) { 
		statics.get(staticKey(hint)) ?: 
		if (hint === null) String.valueOf(it)
	}
			
	def dispatch String getLabel(Enum<?> it, String hint) {
		statics.get(staticKey(hint)) ?: if (hint === null) name
	}
		
	def dispatch String getLabel(Class<?> it, String hint) {
		statics.get(staticKey(hint)) ?: if (hint === null) simpleName
	}
	
	def dispatch getLabel(Date it, String hint) {
		(if (hint === null) 
			DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, locale) 
		else 
			new SimpleDateFormat(hint, locale)
		).format(it)
	}
	
	def dispatch getLabel(Number it, String hint) {
		if (hint === null) String.valueOf(it)
		else (NUMBER_FORMATS.findFirst[ hint == pattern ] ?: NUMBER_FORMATS.get(0))
			.provider.apply(hint, locale).format(it)
	}
	

	/**
	 * Associate a label to the provided class.
	 * <p>
	 * This method is protected so only subclass can call it.
	 * </p>
	 * 
	 * @param it class to associate
	 * @param value associated
	 */
	protected def void setLabel(Class<?> it, String value) { setLabel(it, null, value) }
		
	/**
	 * Associate a label to the provided enumeration.
	 * <p>
	 * This method is protected so only subclass can call it.
	 * </p>
	 * 
	 * @param it enumeration to associate
	 * @param value associated
	 */
	protected def void setLabel(Enum<?> it, String value) { setLabel(it, null, value) }
	
	/**
	 * Associate a label to the provided class with a specific context.
	 * <p>
	 * This method is protected so only subclass can call it.
	 * </p>
	 * 
	 * @param it class to associate
	 * @param value associated
	 * @param hint of association
	 */
	protected def void setLabel(Class<?> it, String hint, String value) { 
		statics.put(staticKey(hint), value)
	}
	
	/**
	 * Associate a label to the provided enumeration with a specific context.
	 * <p>
	 * This method is protected so only subclass can call it.
	 * </p>
	 * 
	 * @param it enumeration to associate
	 * @param value associated
	 * @param hint of association
	 */
	protected def void setLabel(Enum<?> it, String hint, String value) { 
		statics.put(staticKey(hint), value)
	}

	/** 
	 * Create a key for this object  
	 */
	private def static staticKey(Object it, String hint) { if (hint === null) it else it->hint }
	
	// We could offer a printf approach for date and number
	
	static def <T extends I18n> T get(Class<T> it) { get(Locale.^default) }
	
	// Improper approach for OSGI: static INSTANCES ruins bundle class loader.
	static def <T extends I18n> T get(Class<T> type, Locale locale) {
		// may be WeakHashMap<ClassLoader, Map...
		INSTANCES.computeIfAbsent(type->locale) [
			// ResourceBundle wraps the system class loader. I don't know why.
			/*
			if (System.getSecurityManager() === null) 
				create(type, locale)
			else 
				AccessController.doPrivileged(
					[ create(type, locale) ] as PrivilegedAction<I18n>
				) */
			I18n.create(type, locale)
		] as T
	}

	private static def <T extends I18n> T create(Class<T> type, Locale locale) {
		val loader = type.classLoader ?: ClassLoader.systemClassLoader
		val result = type.newInstance
		result.locale = locale
		
		val basename = type.name
		
		RB_CONTROL.getCandidateLocales(type.name, locale)
			.reverseView.tail // from general to local, avoiding root
			.map[ toL10n(basename, loader) ]
			.filter(L10n)
			// Xtend bug : it should provide <?> in parameter.
			.forEach[ Object it | (it as L10n<T>).update(result) ]
		result
	}
	
		
	static def toL10n(Locale it, String basename, ClassLoader loader) {
		val fullname = basename
			+ if (language.empty) "" else '_' + language 
			+ if (country.empty) "" else '_' + country 
			+ if (variant.empty) "" else '_' + variant
		try {
			// it is more fast to test existence or catch an exception
			// if (loader.getResource(fullname.replace('.', '/') + '.java') !== null)
			loader.loadClass(fullname).newInstance
		} catch(ClassNotFoundException e) {
			null
		}	
	}
	
}