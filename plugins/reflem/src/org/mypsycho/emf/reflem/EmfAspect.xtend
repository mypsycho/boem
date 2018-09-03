package org.mypsycho.emf.reflem

import java.util.Collections
import java.util.HashMap
import java.util.Map
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.ENamedElement
import org.eclipse.emf.ecore.EObject

abstract class EmfAspect<E extends ENamedElement> {
    
    public val E value
    
    new(E value) {
        this.value = value
    }
    
    // Basic Operation
    def ENamedElement add(ENamedElement it, Iterable<?> options)

    def <V> V get(ENamedElement it, Object option, V byDefault)
    
    def boolean is(ENamedElement it, Object option)

    def void remove(ENamedElement it, Iterable<?> options)
    
    // Operator API
    def operator_add(ENamedElement it, Object option) {
        add(it, Collections.singleton(option))
    }

    def operator_add(ENamedElement it, Iterable<?> options) {
        add(it, options)
    }
    
    def operator_remove(ENamedElement it, Object option) {
        remove(it, Collections.singleton(option))
    }

    def operator_remove(ENamedElement it, Iterable<?> options) {
        remove(it, options)
    }
    
    // Reflective API
    def ENamedElement add(Class<? extends EObject> it, Iterable<?> options) {
        add(toEClass, options)
    }
    
    def <V> V get(Class<? extends EObject> it, Object option, V byDefault) {
        get(toEClass, option, byDefault)
    }
    
    def boolean is(Class<? extends EObject> it, Object option) {
        is(toEClass, option)
    }
    
    def void remove(Class<? extends EObject> it, Iterable<?> options) {
        remove(toEClass, options)
    }

	// Reflective:Operator API
	def operator_add(Class<? extends EObject> it, Object option) {
        add(toEClass, Collections.singleton(option))
    }

    def operator_add(Class<? extends EObject> it, Iterable<?> options) {
        add(toEClass, options)
    }
    
    def operator_remove(Class<? extends EObject> it, Object option) {
        remove(toEClass, Collections.singleton(option))
    }

    def operator_remove(Class<? extends EObject> it, Iterable<?> options) {
        remove(toEClass, options)
    }
    
    // Default value API    
    def ENamedElement add(Iterable<?> options) {
        add(value, options)
    }
    
    def <V> get(Object option, V byDefault) {
        get(value, option, byDefault)
    }
    
    def is(Object option) {
        is(value, option)
    }
        
    def remove(Iterable<?> options) {
        remove(value, options)
    }
    
    // Default value:Operator API
    def operator_add(Object option) {
        add(value, Collections.singleton(option))
    }

    def operator_add(Iterable<?> options) {
        add(value, options)
    }
    
    def operator_remove(Object option) {
        remove(value, Collections.singleton(option))
    }

    def operator_remove(Iterable<?> options) {
        remove(value, options)
    }
    
    
    
    def toEClass(Class<? extends EObject> it) { // Can work only if value is a package
        val target = value.eAllContents.filter(EClassifier).findFirst[ c | c.instanceClass == it ]
        if (target === null) {
            throw new IllegalArgumentException(name + " do not belong to " + value.name)
        }
        target
    }
    
    def static boolean isContaining(EObject it, EObject value) {
        value !== null && (it == value || isContaining(value.eContainer))
    }
    
    /**
     * Assert the value is an ancestor of it.
     * <p>
     * @param it should be the ancestor
     * @param value to test
     * @return value when ok
     * @throws IllegalArgumentException when KO
     */
    def static <E extends ENamedElement> assertContaining(ENamedElement it, E value) {
        if (!isContaining(value))
            throw new IllegalArgumentException(name + " do not belong to " + value.name)
        else value
    }
    
    public static class Default<E extends ENamedElement> extends EmfAspect<E> {
    
        val properties = new HashMap<ENamedElement, Map<Object, Object>> 
        
        new(E value) {
            super(value)
        }
        
        protected def doAdd(ENamedElement target, Iterable<?> options) {
            val specific = properties.computeIfAbsent(target, [ new HashMap ])
            options.forEach[
                if (it instanceof Pair<?,?>) {
                     // Xtend fails to resolve it.value and resolve this.value
                    specific.put(key, it.value)
                } else if (it instanceof ENamedElement) {
                    target.assertContaining(it)
                } else { // We use null to undefine an inheritance
                    specific.put(it, it)
                }
            ]
        }
        
        override add(ENamedElement it, Iterable<?> options) {
            doAdd(value.assertContaining(it), options)
            it
        }
        
        override <V> get(ENamedElement it, Object option, V byDefault) {
            (properties.get(it)?.get(option) as V) ?: byDefault
        }
        
        override is(ENamedElement it, Object option) {
            val specific = properties.get(it)
            if (specific !== null) specific.get(option) != null else false
        }
        
        override remove(ENamedElement it, Iterable<?> options) {
            val specific = properties.get(it)
            if (specific !== null) options.forEach[ specific.remove(it) ]
        }

    }
    
    public static class Specific<E extends ENamedElement> extends EmfAspect<E> {
    
        val EmfAspect<?> container
        
        new(E value, EmfAspect<?> parent) {
            super(parent.value.assertContaining(value))
            this.container = parent
        }

        override add(ENamedElement it, Iterable<?> options) {
            container.add(value.assertContaining(it), options)
        }
        
        override <V> get(ENamedElement it, Object option, V byDefault) {
            container.get(value.assertContaining(it), option, byDefault)
        }
        
        override is(ENamedElement it, Object option) {
            container.is(value.assertContaining(it), option)
        }
        
        override remove(ENamedElement it, Iterable<?> options) {
            container.remove(value.assertContaining(it), options)
        }

    }

}
