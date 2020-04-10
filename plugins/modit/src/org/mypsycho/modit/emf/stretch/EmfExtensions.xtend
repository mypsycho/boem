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
package org.mypsycho.modit.emf.stretch

import java.util.Map
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.xtext.xbase.lib.Functions.Function1
import org.eclipse.xtext.xbase.lib.Functions.Function2
import org.eclipse.xtext.xbase.lib.Functions.Function3
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1
import org.eclipse.xtext.xbase.lib.Procedures.Procedure2
import org.eclipse.xtext.xbase.lib.Procedures.Procedure3

/**
 * Class providing extensive methods for EMF instance.
 * <p>
 * It must be used with a EMF Stretcher instance.
 * </p>
 * <p>
 * Must be access by byObject, byObjects, byProperty or byProperties.
 * </p>
 * <p>
 * 's' suffix is used to avoid <b>overloading</b> preventing inference error on participant type, .
 * </p>
 * 
 * <T> Type returned by the participant
 * <V> Type of domain class
 * <P> Type of participant
 */
abstract class EmfExtensions<T, V extends EObject, P extends EmfParticipant> extends EmfParticipant.Participation<P> {
	
	/**
	 * Create an implementation for specified type which throws UnsupportedOperationException.
	 * <p>
	 * This method can be used for extensions where no result should be provided on undefined class.
	 * </p>
	 * 
	 * @param <T> type of provided by the extension
	 * @param label of operation
	 * @param expectedType required for inference (but not used)
	 */
	static def <T> (EObject)=>T unsupported(String label, Class<T> expectedType) {
		[ throw new UnsupportedOperationException(label + " for " + it?.eClass?.name) ]
	}
	
	
	// Class extension
	//
	static def <T, O extends EObject> byObject(Class<O> expectedType, T byDefault) { 
		new XObject<T, O>().asValue(byDefault)
	}

	static def <T, O extends EObject> byObjects((O)=>T byDefault) { 
		new XObject<T, O>().asFct(byDefault)
	}

	static def <T, O extends EObject> byObjects((O, EmfStretcher)=>T byDefault) { 
		new XObject<T, O>().asFct(byDefault)
	}
	
	static def <T, O extends EObject, C> byObjects((O, EmfStretcher, Map<EClass, C>)=>T byDefault) { 
		new XObject<T, O>().asFct(byDefault)
	}
	
	static def <O extends EObject> onObjects((O)=>void byDefault) { 
		new XObject<Void, O>().asFct(byDefault)
	}

	static def <O extends EObject, C> onObjects((O, EmfStretcher)=>void byDefault) { 
		new XObject<Void, O>().asFct(byDefault)
	}

	static def <O extends EObject, C> onObjects((O, EmfStretcher, Map<EClass, C>)=>void byDefault) { 
		new XObject<Void, O>().asFct(byDefault)
	}

	// Class extension for all models
	//
	static def <T> byEObject(T byDefault) { 
		byObject(EObject, byDefault)
	}

	static def <T> byEObjects((EObject)=>T byDefault) { 
		byObjects(byDefault)
	}

	static def <T> byEObjects((EObject, EmfStretcher)=>T byDefault) { 
		byObjects(byDefault)
	}

	static def <T, C> byEObjects((EObject, EmfStretcher, Map<EClass, C>)=>T byDefault) { 
		byObjects(byDefault)
	}

	static def byEObjects((EObject)=>void byDefault) { 
		onObjects(byDefault)
	}

	static def byEObjects((EObject, EmfStretcher)=>void byDefault) { 
		onObjects(byDefault)
	}

	static def <C> byEObjects((EObject, EmfStretcher, Map<EClass, C>)=>void byDefault) { 
		onObjects(byDefault)
	}


	// Feature extension
	//
	static def <T> byProperty(T byDefault) { 
		new XValue<T>().asValue(byDefault)
	}

	static def <T> byProperties((EObject)=>T byDefault) { 
		new XValue<T>().asFct(byDefault)
	}

	static def <T> byProperties((EObject, EStructuralFeature)=>T byDefault) { 
		new XValue<T>().asFct(byDefault)
	}

	static def <T,C> byProperties((EObject, EStructuralFeature, EmfStretcher)=>T byDefault) { 
		new XValue<T>().asFct(byDefault)
	}

	static def <T,C> byProperties((EObject, EStructuralFeature, EmfStretcher, Map<EClass, C>)=>T byDefault) { 
		new XValue<T>().asFct(byDefault)
	}

	static def byProperties((EObject)=>void byDefault) { 
		new XValue<Void>().asFct(byDefault)
	}

	static def onProperties((EObject, EStructuralFeature)=>void byDefault) { 
		new XValue<Void>().asFct(byDefault)
	}

	static def <C> onProperties((EObject, EStructuralFeature, EmfStretcher)=>void byDefault) { 
		new XValue<Void>().asFct(byDefault)
	}

	static def <C> onProperties((EObject, EStructuralFeature, EmfStretcher, Map<EClass, C>)=>void byDefault) { 
		new XValue<Void>().asFct(byDefault)
	}


	private new(P key, EClassStretcher target) { super(key, target) }


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

	def operator_add((V, EmfStretcher)=>T it) { impl }
	def impl((V, EmfStretcher)=>T provider) { 
		asFct(provider)
		target.context.register()
	}

	def <C> operator_add((V, EmfStretcher, Map<EClass, C>)=>T it) { impl }
	def <C> impl((V, EmfStretcher, Map<EClass, C>)=>T provider) { 
		asFct(provider)
		target.context.register()
	}


	
	private static def Object apply(PartImplementation it, EObject obj, EmfStretcher ctxt) {
		if (direct) value
		else if (value instanceof Function1) 
			(value as (Object)=>Object).apply(obj)
		else if (value instanceof Function2) 
			(value as (Object, EmfStretcher)=>Object).apply(obj, ctxt)
		else if (value instanceof Function3) 
			(value as (Object, EmfStretcher, Map<EClass, Object>)=>Object).apply(obj, ctxt, cache)
		else {
			if (value instanceof Procedure1) 
				(value as (Object)=>void).apply(obj)
			else if (value instanceof Procedure2) 
				(value as (Object, EmfStretcher)=>void).apply(obj, ctxt)
			else if (value instanceof Procedure3) 
				(value as (Object, EmfStretcher, Map<EClass, Object>)=>void).apply(obj, ctxt, cache)
			null
		}
	}
		
	final static class XObject<T, O extends EObject> extends EmfParticipant {
		
		def <V extends O> bind(EmfStretcher it, Class<V> type) { 
			new OBinding<T, O, V>(this, onClass(type))
		}

		def <V extends O> exec(V it, EmfStretcher ctxt, OBinding<T, ?, ? super V> impl) {
			(impl ?: this).apply(it, ctxt) as T
		}

	}

	final static class OBinding<T, O extends EObject, V extends O> extends EmfExtensions<T, V, XObject<T, O>> {

		new(XObject<T, O> key, EClassStretcher target) { super(key, target) }

		override register(EmfStretcher it) {
			add(target.source, this)
		}
	}

	static class XValue<T> extends EmfParticipant {

		def <V extends EObject> bind(EmfStretcher it, Class<V> type, EStructuralFeature feat) { 
			new VBinding<T, V>(this, onClass(type), feat)
		}

		def <V extends EObject> exec(V it, EStructuralFeature feat, EmfStretcher ctxt, VBinding<T, ? super V> impl) {
			(impl ?: this).apply(it, ctxt) as T
		}
	}

	final static class VBinding<T, V extends EObject> extends EmfExtensions<T, V, XValue<T>> {

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