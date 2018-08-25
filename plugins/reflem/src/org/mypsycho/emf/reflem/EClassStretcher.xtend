package org.mypsycho.emf.reflem

import java.util.ArrayList
import java.util.Collections
import java.util.List
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject

class EClassStretcher {
    public val EmfStretcher context
    public val EClass source
    public val EmfAspect<EClass> aspect

    // Built info
    var List<EClass> inheritances = null
    var Object keys = null
    
    new (EmfStretcher context, EClass source) {
        this.context = context
        this.source = source
        val parentAspect = context.getAspect(source.EPackage)
        // No aspect for extras
        this.aspect = if(parentAspect !== null) 
                new EmfAspect.Specific(source, parentAspect) 
            else new EmfAspect.Default(source)
    }
    
    def isReady() {
        inheritances !== null
    }
    
    def void compute() {
        val result = new ArrayList(source.ESuperTypes.map[ context.computeInheritances(it) ].flatten.toList)
        for (var i=0; i<result.length; i++) { // We dont iterate on tail to avoid sublist accumulation
            val head = result.get(i)
            val tail = result.subList(i, result.length)
            if (tail.contains(head)) {
                result.remove(i)
                i-- // dont move forward
            }
        }
        
        inheritances = if (result.empty) {
            Collections.singletonList(source)
        } else {
            result.add(0, source)
            newImmutableList(result)
        }
        val keyResult = newImmutableList(inheritances.reverseView.map[ EAttributes ].flatten.filter[ isID ].toList)
        
        keys = if (keyResult.isEmpty) null else if (keyResult.size == 1) keyResult.head else keyResult
    }
    
    def getInheritances() {
        inheritances
    }
    
    def getKeys() {
        keys
    }

    
    def <V> get(Object option, V byDefault) {
        aspect.get(option, byDefault)
    }

    def is(Object option) {
        aspect.is(option)
    }

    def <V> getThis(Object option, V byDefault) {
        inheritances.getThis(option, byDefault)
    }
    
    def <V> isAny(Object option) {
        inheritances.isAny(option)
    }
    
    def <V> getSuper(Class<? extends EObject> from, Object option, V byDefault) {
        superInheritances(from).getThis(option, byDefault)
    }
    
    def <V> wasAny(Class<? extends EObject> from, Object option) {
        superInheritances(from).isAny(option)
    }
    
    def <V> getAll(Object option) {
        inheritances.map[ context.onClass(it).get(option, null) ].filterNull
    }

    protected def <V> superInheritances(Class<? extends EObject> from) {
        val eClass = inheritances.findFirst[ instanceClass == from ]
        if (eClass === null) throw new IllegalAccessException(source.name + ' is not typed by ' + from.name)
        inheritances.subList(inheritances.indexOf(from),  inheritances.length)
    }
            
    protected def <V> getThis(List<EClass> from, Object option, V byDefault) {
        from.map[ context.onClass(it).get(option, null) ].findFirst[ it !== null ] ?: byDefault
    }
    
    protected def <V> isAny(List<EClass> from, Object option) {
        from.exists[ context.onClass(it).is(option) ]
    }
    
}