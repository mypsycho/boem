package org.mypsycho.modit.emf.stretch

import java.util.Map
import org.eclipse.emf.ecore.EPackage

abstract class EmfContribution implements Runnable {


	protected val extension EmfStretcher context

	// Note: Unfortunately, Xtend extension fails when using generic types
	// We wish we could define something like
	// [code]var extension E eInstance[code] // with E extends EPackage
	// Instead , child class must define its extension
	
	new(EmfStretcher it) {
		context = it
	}

	static def createStretcher(Map<EPackage, Class<? extends EmfContribution>> contents) {
		val result = new EmfStretcher(contents.keySet).initialize
		// define contribution
		contents.values.filterNull.forEach [
			getConstructor(EmfStretcher).newInstance(result).run
		]
		result
	}
	
		

	
	// we must not use overload to enable static definition of service
	// (none) : static value
	// -s/es : computation of several classes
	// -Rt : computation of several classes; result can be reused once computed. 






}
