package org.mypsycho.modit.emf.stretch

import java.util.Map
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EStructuralFeature

/**
 * Must be access by byClass, byObjects, byProperty, byProperties.
 * <p>
 * No <b>overloading</b> to prevent inference error on participant type.
 * </p>
 * 
 * <T> Type returned by the participant
 * <P> Type of participant
 */
abstract class EmfToolings<T, P extends EmfParticipant> extends EmfParticipant.Participation<P> {

	
	/**
	 * Create an implementation for specified type which throws UnsupportedOperationException.
	 * 
	 * @param <T> type of provided extension
	 * @param label of operation
	 * @param expectedType required for inference (but not used)
	 */
	static def <T> (EClass)=>T unsupported(String label, Class<T> expectedType) {
		[ throw new UnsupportedOperationException(label + " for " + it?.name) ]
	}
	
	// Class extension
	//
	
	static def <T> byClass(T byDefault) { new XClass<T>().asValue(byDefault) }

	static def <T> byClasses((EClass)=>T byDefault) { new XClass<T>().asFct(byDefault) }

	static def <T,C> byClasses((EClass, Map<EClass, C>)=>T byDefault) { new XClass<T>().asCache(byDefault) }

	// Feature extension
	//

	static def <T> byFeature(T byDefault) { new XFeature<T>().asValue(byDefault) }

	// note: byFeatures((EClass)=>T) is useless; unlike all feature of a class 
	static def <T> byFeatures((EClass, EStructuralFeature)=>T byDefault) { 
		new XFeature<T>().asValue(byDefault)
	}
	
	static def <T, C> byFeatures((EClass, EStructuralFeature, Map<EClass, C>)=>T byDefault) { 
		new XFeature<T>().asCache(byDefault)
	}
	

	protected new(P key, EClassStretcher target) { super(key, target) }
	

	
	// += 
	def operator_add(T it) { impl }
	def impl(T defValue) {
		asValue(defValue)
		target.context.register()
	}

	def operator_add((EClass)=>T it) { impl }
	def impl((EClass)=>T provider) { 
		asFct(provider)
		target.context.register()
	}
	
	/**
	 * 
	 * <C> Cache content
	 * 
	 */
	def <C> operator_add((EClass, Map<EClass, C>)=>T it) { impl }
	def <C> impl((EClass, Map<EClass, C>)=>T provider) { 
		asCache(provider)
		target.context.register()
	}
	
	def apply(EClass it) {
		if (cache !== null) 
			(value as (EClass, Map<EClass, Object>)=>T).apply(it, cache)
		else if (direct) value as T
		else (value as (EClass)=>T).apply(it)
	}
	
	
	static class XClass<T> extends EmfParticipant {
		
		def bind(EmfStretcher it, EClass type) { 
			new CBinding<T>(this, onClass(type))
		}

		def exec(EClass it, CBinding<T> impl) {
			if (impl !== null) impl.apply(it)
			else if (cache !== null) 
				(value as (EClass, Map<EClass, Object>)=>T).apply(it, cache)
			else if (direct) value as T
			else (value as (EClass)=>T).apply(it)
		}

	}
	
	static class CBinding<T> extends EmfToolings<T, XClass<T>> {

		new(XClass<T> key, EClassStretcher target) { super(key, target) }
		
		override register(EmfStretcher it) { 
			add(target.source, this)
		}
		
	}
	
	static class XFeature<T> extends EmfParticipant {

		def bind(EmfStretcher it, EClass type, EStructuralFeature feat) { 
			new FBinding<T>(this, onClass(type), feat)
		}
		
		def bind(EmfStretcher it, EStructuralFeature feat) { 
			new FBinding<T>(this, onClass(feat.EContainingClass), feat)
		}

		def exec(EClass it, EStructuralFeature feat, FBinding<T> impl) {
			if (cache !== null) 
				(value as (EClass, EStructuralFeature, Map<EClass, Object>)=>T).apply(it, feat,  cache)
			else if (direct) value as T
			else switch(value) {
				(EClass, EStructuralFeature)=>T : value.apply(it, feat)
				default: throw new ClassCastException("Implementation is ill-typed: " + value?.class)
			}
		}
	}
	
		
	static class FBinding<T> extends EmfToolings<T, XFeature<T>> {
		
		val EStructuralFeature feature
		
		new(XFeature<T> key, EClassStretcher target, EStructuralFeature feat) {
			super(key, target)
			feature = feat
		}
		
		override register(EmfStretcher it) {	
			add((target.source as EClass)->feature, this)
		}
	}
}
