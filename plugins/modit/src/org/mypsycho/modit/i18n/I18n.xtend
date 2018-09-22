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

abstract class I18n {
	
	abstract interface L10n<T extends I18n> {
        def void apply(T it)
    }
	
	public static val RB_CONTROL = new ResourceBundle.Control {/* Default instance is not accessible */}
	static val INSTANCES = new HashMap<Pair<Class<? extends I18n>,Locale>,I18n>
	
	// Inspired from {@link java.text.MessageFormat#makeFormat(int, int, StringBuilder[])}
	static val INTEGER_FORMATS = #[
        new PredefinedFormat(null) [ it, locale | new DecimalFormat(it, DecimalFormatSymbols.getInstance(locale)) ],
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
	
	package var Locale locale // Protected from modification outside creation
	val statics = <Object, String>newHashMap
	
	def Locale getLocale() { locale }
	
	def String getLabel(Object it) { getLabel(it, null) }
    
    def dispatch getLabel(String it, String hint) { it }
    		
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
        else (INTEGER_FORMATS.findFirst[ hint == pattern ] ?: INTEGER_FORMATS.get(0))
            .provider.apply(hint, locale).format(it)
    }
    
    def dispatch String getLabel(Object it, String hint) { String.valueOf(it) }
    
	def void setLabel(Class<?> it, String value) { setLabel(it, null, value) }
        
	def void setLabel(Enum<?> it, String value) { setLabel(it, null, value) }
    
	def void setLabel(Class<?> it, String hint, String value) { statics.put(staticKey(hint), value) }
    
    def void setLabel(Enum<?> it, String hint, String value) { statics.put(staticKey(hint), value) }

	private def static staticKey(Object it, String hint) { if (hint === null) it else Pair.of(it, hint) }
    
    // We could offer a printf approach for date and number
	
	static def <T extends I18n> T get(Class<T> it) {
		get(Locale.^default)
	}
	
	// Improper approach for OSGI
	static def <T extends I18n> T get(Class<T> type, Locale locale) {	    
		INSTANCES.computeIfAbsent(type->locale) [
		    // ResourceBundle wraps the system class loader. I dont know why.
		    /*
			if (System.getSecurityManager() === null) 
				create(type, locale)
			else 
				AccessController.doPrivileged(
				    [ create(type, locale) ] as PrivilegedAction<I18n>
				) */
				create(type, locale)
		] as T
	}
    
    protected static def <T extends I18n> T create(Class<T> type, Locale locale) {
        val loader = type.classLoader ?: ClassLoader.systemClassLoader
        val result = type.newInstance
        result.locale = locale
        
        val basename = type.name
        
        RB_CONTROL.getCandidateLocales(type.name, locale)
            .reverseView.tail // from general to local, avoiding root
            .map[ toL10n(basename, loader) ].filterNull
            .forEach[ (it as L10n<T>).apply(result) ]
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