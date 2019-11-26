package org.mypsycho.modit.emf.stretch

import java.util.Map
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature

/**
 * Must be access by byObject, byObjects, byProperty, byProperties.
 * <p>
 * No <b>overloading</b> to prevent inference error on participant type.
 * </p>
 * 
 * <T> Type returned by the participant
 * <V> Type of domain class
 * <P> Type of participant
 */
abstract class EmfExtensions<T, V extends EObject, P extends EmfParticipant> extends EmfParticipant.Participation<P> {
	
	/**
	 * Create an implementation for specified type which throws UnsupportedOperationException.
	 * 
	 * @param <T> type of provided extension
	 * @param label of operation
	 * @param expectedType required for inference (but not used)
	 */
	static def <T> (EObject)=>T unsupported(String label, Class<T> expectedType) {
		[ throw new UnsupportedOperationException(label + " for " + it?.eClass?.name) ]
	}
	
	
		
	static def <T, O extends EObject> byObject(Class<O> expectedType, T byDefault) { 
		new XObject<T, O>().asValue(byDefault)
	}

	static def <T, O extends EObject> byObjects((O)=>T byDefault) { 
		new XObject<T, O>().asFct(byDefault)
	}

	static def <T, O extends EObject, C> byObjects((O, Map<EClass, C>)=>T byDefault) { 
		new XObject<T, O>().asCache(byDefault)
	}
	
	static def <T> byEObject(T byDefault) { 
		byObject(EObject, byDefault)
	}

	static def <T> byEObjects((EObject)=>T byDefault) { 
		byObjects(byDefault)
	}

	static def <T,C> byEObjects((EObject, Map<EClass, C>)=>T byDefault) { 
		byObjects(byDefault)
	}


	static def <T> byProperty(T byDefault) { 
		new XValue<T>().asValue(byDefault)
	}

	static def <T> byProperties((EObject)=>T byDefault) { 
		new XValue<T>().asFct(byDefault)
	}

	static def <T> byProperties((EObject, EStructuralFeature)=>T byDefault) { 
		new XValue<T>().asFct(byDefault)
	}

	static def <T,C> byProperties((EObject, EStructuralFeature, Map<EClass, C>)=>T byDefault) { 
		new XValue<T>().asCache(byDefault)
	}

	
	protected new(P key, EClassStretcher target) { super(key, target) }
	

	
	// += 
	def operator_add(T it) { impl }
	def impl(T defValue) {
		asValue(defValue)
		target.context.register()
	}

	def operator_add((V)=>T it) { impl }
	def impl((V)=>T provider) { 
		asFct(provider)
		target.context.register()
	}
	
	/**
	 * 
	 * <C> Cache content
	 * 
	 */
	def <C> operator_add((V, Map<EClass, C>)=>T it) { impl }
	def <C> impl((V, Map<EClass, C>)=>T provider) { 
		asCache(provider)
		target.context.register()
	}

	
	def apply(EObject it) {
		if (cache !== null) 
			(value as (V, Map<EClass, Object>)=>T).apply(it as V, cache)
		else if (direct) value as T
		else (value as (V)=>T).apply(it as V)
	}
		
	static class XObject<T, O extends EObject> extends EmfParticipant {
		
		def <V extends O> bind(EmfStretcher it, Class<V> type) { 
			new OBinding<T, O, V>(this, onClass(type))
		}
		
//		def <V extends EObject> operator_mappedTo(T value) {
//			new OBinding<T, V>(this, null).asValue(value)
//		}
//		
//		def <V extends EObject> operator_mappedTo((V)=>T provider) {
//			new OBinding<T, V>(this, null).asFct(value)
//		}
//		
//		def <V extends EObject, C> operator_mappedTo((V, Map<EClass, C>)=>T provider) {
//			new OBinding<T, V>(this, null).asCache(value)
//		}
		

		def <V extends O> exec(V it, OBinding<T, ?, ? super V> impl) {
			if (impl !== null) impl.apply(it)
			else if (cache !== null) 
				(value as (EObject, Map<EClass, Object>)=>T).apply(it, cache)
			else if (direct) value as T
			else (value as (EObject)=>T).apply(it)
		}

	}
	
	static class OBinding<T, O extends EObject, V extends O> extends EmfExtensions<T, V, XObject<T, O>> {

		new(XObject<T, O> key, EClassStretcher target) { super(key, target) }
		
		override register(EmfStretcher it) {
			add(target.source, this)
		}
	}
	
	static class XValue<T> extends EmfParticipant {

		def <V extends EObject> bind(EmfStretcher it, Class<V> type, EStructuralFeature feat) { 
			new VBinding<T, V>(this, onClass(type), feat)
		}

		def <V extends EObject> exec(V it, EStructuralFeature feat, VBinding<T, ? super V> impl) {
			if (impl !== null) impl.apply(it)
			else if (cache !== null) 
				(value as (EObject, EStructuralFeature, Map<EClass, Object>)=>T).apply(it, feat,  cache)
			else if (direct) value as T
			else switch(value) {
				(EObject)=>T : value.apply(it)
				(EObject, EStructuralFeature)=>T : value.apply(it, feat)
				default: throw new ClassCastException("Implementation is ill-typed: " + value?.class)
			}
		}
		
	}
	
	static class VBinding<T, V extends EObject> extends EmfExtensions<T, V, XValue<T>> {
		
		val EStructuralFeature feature
		new(XValue<T> key, EClassStretcher target, EStructuralFeature feat) {
			super(key, target)
			feature = feat
		}
		
		override register(EmfStretcher it) {	
			add((target.source as EClass)->feature, this)
		}
	}
	
}