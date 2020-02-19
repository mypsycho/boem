package org.mypsycho.modit.emf.stretch

import java.util.HashMap
import java.util.Map
import org.eclipse.emf.ecore.EClass

class PartImplementation {
	
	// This class mainly contain the default value.
	protected var Object value // type compliance ensured by constructor
	protected var direct = true // when true value is not an lambda
	protected var Map<EClass, Object> cache
	
	// Static is required to return the same sub-type.
	protected static def <I extends PartImplementation> asValue(I it, Object impl) {
		value = impl
		direct = true
		cache = null
		it
	}
	
	// Static is required to return the same sub-type.
	protected static def <I extends PartImplementation> asFct(I it, Object impl) {
		if (impl === null) throw new NullPointerException("No implementation")
		value = impl
		direct = false
		cache = null
		it
	}
	
	// Static is required to return the same sub-type.
	protected static def <I extends PartImplementation> asCache(I it, Object impl) {
		if (impl === null) throw new NullPointerException("No implementation")
		value = impl
		cache = new HashMap
		it
	}
	
	def isDirect() { direct }
}