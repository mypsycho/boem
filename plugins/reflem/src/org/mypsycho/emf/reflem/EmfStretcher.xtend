package org.mypsycho.emf.reflem

import java.util.ArrayList

import java.util.Collections
import java.util.HashMap
import java.util.List
import java.util.Map
import java.util.Deque
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EPackage
import java.util.Collection
import java.util.ArrayDeque
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EAttribute

class EmfStretcher {
    
    public val List<EPackage> allSources // Order is fixed
    val Map<EPackage, ? extends EmfAspect<EPackage>> elements
    
    val List<EmfStretcher> extensions
    var Map<EClass, EClassStretcher> contents = null

    val extras = new HashMap<EClass, EClassStretcher>
    
    val progressions = new ArrayDeque<EClass>

    
    new(EPackage... sources) {
        this(sources, true, Collections.EMPTY_LIST)
    }
    
    new(List<EPackage> sources, boolean recursive, List<EmfStretcher> extensions) {
        allSources = newArrayList(
            if (recursive) 
            	sources.map[ #[ it ] + eAllContents.toIterable.filter(EPackage) ].flatten 
            else 
            	sources
        )
        elements = allSources.toInvertedMap[ new EmfAspect.Default(it) ]
        this.extensions = extensions
        assertTree(this, new ArrayDeque, new ArrayList)
    }

    
    static def void assertTree(EmfStretcher it, Deque<EmfStretcher> stack, Collection<EmfStretcher> cumul) {
        if (cumul.contains(it)) { // seen this, done that
            return
        }
        if (stack.contains(it)) {
            throw new IllegalArgumentException("Circular analysis " 
                + stack.join(" -> ")[ allSources.join(",", "Pack[", "]") [ name ] ]
            )
        } 

        stack.push(it)
        extensions.forEach[ assertTree(stack, cumul) ]
        cumul.add(it)
        stack.pop
    }
    
    def getTargets() {
        allSources
    }
    
    def Object getKey(EObject it) {
        val keys = eClass.onClass.keys
        if (keys instanceof EAttribute) eGet(keys)
        else if (keys instanceof List) keys.map[a| eGet(a) ] 
        else throw new UnsupportedOperationException(eClass.name + ' has no key')
    }
    
    def EmfStretcher initialize() {
        if (contents != null) {
            return this // already done
        }
        extensions.forEach[ initialize ]
        contents = allSources.map[ EClassifiers ] // elements, no sub package
            .flatten.filter(EClass) // classes
            .toInvertedMap[ new EClassStretcher(this, it) ]
        contents.values.forEach[
            progressions.push(source)
            compute
            progressions.pop
        ]
        this
    }
    
    def boolean canProvide(EClass it) {
        contents.containsKey(it) || extras.containsKey(it) || extensions.exists[ ext | ext.canProvide(it) ]
    }
    
    def onClass(Class<? extends EObject> it) {
        val eClass = (contents.keySet + extras.keySet).findFirst[ t | t.instanceClass == it]
        if (eClass == null) throw new IllegalArgumentException(name + ' is not defined in this context.')
        eClass.onClass
    }
    
    def onClass(EClass it) {
        val result = tryOnClass
        if (result == null) throw new IllegalArgumentException(name + ' is not defined in this context.')
        result
    }
    
        
    protected def EClassStretcher tryOnClass(EClass it) {
        contents.get(it) 
        ?: extras.get(it) 
        ?: extensions.findFirst[ ext | ext.canProvide(it) ]?.onClass(it)
    }
    
    protected def List<EClass> computeInheritances(EClass it) {
        val EClassStretcher content = tryOnClass
            ?: extras.computeIfAbsent(it) [ new EClassStretcher(this, it) ] // build it if not found
        
        if (content.ready) {
            return content.inheritances
        }
        if (progressions.contains(it)) {
            throw new IllegalStateException("Circular evaluation of " + name)
        }
        progressions.push(it)
        content.compute
        progressions.pop
        content.inheritances
    } 
    
    def getAspect(EPackage it) {
        elements.get(it)
    }
    
    
    
}