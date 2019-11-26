package org.mypsycho.modit.emf.stretch

import java.util.ArrayList
import java.util.Collections
import java.util.HashMap
import java.util.List
import java.util.Map
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.EObject

class EClassStretcher {

	public val EmfStretcher context

	public val EClassifier source

	public val EmfAspect<? extends EClassifier> aspect/*<>*/

	// Built info
	var List<? extends EClassStretcher> inheritances = null

	// Cache is used to avoid continuous resolution
	// LIMITATION: definition are immuable
	val Map<Object, Object> cache = new HashMap
	
	val cacheResolution = [ inheritances.getThis(it) ] // Prevent useless instance


	new(EmfStretcher context, EClassifier source) {
		this.context = context
		this.source = source
		val parentAspect = context.getAspect(source.EPackage)
		// No aspect for extras
		this.aspect = 
			if (parentAspect !== null)
				new EmfAspect.Specific(source, parentAspect)
			else new EmfAspect.Default(source, true)
	}

	def isComputed() { inheritances !== null }

	def void compute() {
		if (source instanceof EClass) {
			val result = new ArrayList(
				source.ESuperTypes.map[ context.computeInheritances(it) ].flatten.toList
			)
			for (var i = 0; i < result.length; i++) { // We dont iterate on tail to avoid sublist accumulation
				val head = result.get(i)
				val tail = result.subList(i+1, result.length)
				if (tail.contains(head)) {
					result.remove(i)
					i-- // dont move forward
				}
			}

			inheritances = 
				if (result.empty) 
					#[ this, context.onClass(EObject) ]
				else {
					result.add(0, this)
					Collections.unmodifiableList(result)
				}

		} else {
			inheritances = Collections.emptyList
		}
	}

	def getInheritances() { inheritances }

	def <V> getThis(Object option) {
		cache.computeIfAbsent(option, cacheResolution)
	}

	def <V> getAll(Object option) { inheritances.getAll(option) }
	
	def <V> getSuper(Class<? extends EObject> from, Object option) {
		superInheritances(from).getThis(option)
	}
	
	protected def <V> superInheritances(Class<? extends EObject> from) {
		var position = 0;
		for(val iInherit = inheritances.iterator; iInherit.hasNext; ) {
			if (iInherit.next.source.instanceClass == from) {
				return inheritances.subList(position + 1, inheritances.length)
			}
			position++;
		}
		throw new IllegalAccessException(source.name + ' does not inherit of ' + from.name)
	}

	protected static def getThis(List<? extends EClassStretcher> from, Object option) {
		from.map[ aspect.get(source, option) ].findFirst[ it !== null ]
	}

	
	protected static def <V> getAll(List<? extends EClassStretcher> from, Object option) {
		from.map[ aspect.get(source, option) ].filterNull
	}

}
