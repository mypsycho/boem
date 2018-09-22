package org.mypsycho.modit.emf.stretch

import java.util.ArrayList
import java.util.Collections
import java.util.List
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.EObject

class EClassStretcher {

	public val EmfStretcher context

	public val EClassifier source

	public val EmfAspect<EClassifier> aspect

	// Built info
	var List<EClassStretcher> inheritances = null


	new(EmfStretcher context, EClass source) {
		this.context = context
		this.source = source
		val parentAspect = context.getAspect(source.EPackage)
		// No aspect for extras
		this.aspect = if (parentAspect !== null)
			new EmfAspect.Specific(source, parentAspect)
		else
			new EmfAspect.Default(source)
	}

	def isReady() {
		inheritances !== null
	}

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

			inheritances = if (result.empty) #[ this, context.onClass(EObject) ]
				else {
					result.add(0, this)
					newImmutableList(result)
				}

		} else {
			inheritances = Collections.emptyList
		}
	}

	def getInheritances() {
		inheritances
	}


	def <V> getThis(Object option, V byDefault) {
		inheritances.getThis(option, byDefault)
	}

	def <V> isThis(Object option) {
		inheritances.isAny(option)
	}

	def <V> getAll(Object option) {
		inheritances.getAll(option)
	}
	
	def <V> getSuper(Class<? extends EObject> from, Object option, V byDefault) {
		superInheritances(from).getThis(option, byDefault)
	}

	def <V> isSuper(Class<? extends EObject> from, Object option) {
		superInheritances(from).isAny(option)
	}

	def <V> getSuperAll(Class<? extends EObject> from, Object option) {
		superInheritances(from).getAll(option)
	}
	
	protected def <V> superInheritances(Class<? extends EObject> from) {
		var position = 0;
		for(val iInherit = inheritances.iterator; iInherit.hasNext; ) {
			if (iInherit.next.source.instanceClass == from) {
				return inheritances.subList(position + 1, inheritances.length)
			}
			position++;
		}
		throw new IllegalAccessException(source.name + ' is not typed by ' + from.name)
	}

	protected static def <V> getThis(List<EClassStretcher> from, Object option, V byDefault) {
		from.map[ aspect.get(option, null) ].findFirst[ it !== null ] ?: byDefault
	}

	protected static def <V> isAny(List<EClassStretcher> from, Object option) {
		from.exists[ aspect.is(option) ]
	}
	
	protected static def <V> getAll(List<EClassStretcher> from, Object option) {
		from.map[ aspect.get(option, null) ].filterNull
	}

}
