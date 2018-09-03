package org.mypsycho.emf.reflem

import org.eclipse.emf.ecore.EPackage
import java.util.Map

abstract class EmfContribution implements Runnable {

    // Note: Unfortunately, Xtend extension fails with when using generic types
    // We wish we could define something like
    // [code]var extension E eInstance[code] // with E extends EPackage
    protected var extension EmfAspect<EPackage> aspect

    new(EmfStretcher it, EPackage eInstance) {
        aspect = getAspect(eInstance)
    }
    
    static def createStretcher(Map<EPackage, Class<? extends EmfContribution>> contents) {
        val result = new EmfStretcher(contents.keySet).initialize
        // define contribution
        contents.values.filterNull.forEach[
        	getConstructor(EmfStretcher).newInstance(result).run
        ]
        result
    }
    
}