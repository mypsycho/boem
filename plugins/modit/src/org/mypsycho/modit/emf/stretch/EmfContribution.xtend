package org.mypsycho.modit.emf.stretch

import org.eclipse.emf.ecore.EPackage
import java.util.Map

abstract class EmfContribution implements Runnable {

	protected var extension EmfAspect.Package aspect
	protected var extension EmfStretcher context

	// Note: Unfortunately, Xtend extension fails when using generic types
	// We wish we could define something like
	// [code]var extension E eInstance[code] // with E extends EPackage
	// Instead , child class must define its extension
	
	new(EmfStretcher it, EPackage eInstance) {
		context = it
		aspect = getAspect(eInstance)
	}

	static def createStretcher(Map<EPackage, Class<? extends EmfContribution>> contents) {
		val result = new EmfStretcher(contents.keySet).initialize
		// define contribution
		contents.values.filterNull.forEach [
			getConstructor(EmfStretcher).newInstance(result).run
		]
		result
	}

}
