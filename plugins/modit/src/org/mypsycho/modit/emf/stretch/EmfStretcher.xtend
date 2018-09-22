package org.mypsycho.modit.emf.stretch

import java.util.ArrayDeque
import java.util.ArrayList
import java.util.Collection
import java.util.Collections
import java.util.Deque
import java.util.HashMap
import java.util.List
import java.util.Map
import java.util.function.Consumer
import java.util.function.Function
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.EcorePackage
import java.util.concurrent.Callable
import java.util.function.BiConsumer
import java.util.function.BiFunction

class EmfStretcher {


	public val List<EPackage> allSources // Order is fixed

	val Map<EPackage, EmfAspect.Package> elements

	val List<EmfStretcher> extensions

	var Map<EClass, EClassStretcher> contents = null

	val extras = new HashMap<EClass, EClassStretcher>

	var progressions = new ArrayDeque<EClassifier> // 

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
		this.extensions = extensions
		elements = allSources.toInvertedMap[ new EmfAspect.Package(it) ]
		
		assertTree(this, new ArrayDeque, new ArrayList)
		
		// Creating EClassStretcher instance requires elements.
		extras.put(EcorePackage.eINSTANCE.EObject, 
			if (extensions.empty) new EClassStretcher(this, EcorePackage.eINSTANCE.EObject)
	 		else extensions.head.onClass(EcorePackage.eINSTANCE.EObject) // We are exposed to inconsistency
		)
		
	}

	static def void assertTree(EmfStretcher it, Deque<EmfStretcher> stack, Collection<EmfStretcher> cumul) {
		if (cumul.contains(it)) { // seen this, done that
			return
		}
		if (stack.contains(it)) {
			throw new IllegalArgumentException(
				"Circular analysis " + stack.join(" -> ")[ allSources.join(",", "Pack[ ", " ]")[ name ] ]
			)
		}

		stack.push(it)
		extensions.forEach[ assertTree(stack, cumul) ]
		cumul.add(it)
		stack.pop
	}

	def getTargets() { allSources }

	def EmfStretcher initialize() {
		if (contents !== null) {
			return this // already done
		}
		extensions.forEach[ initialize ]
		contents = allSources
			.map[ EClassifiers ] // elements, no sub package
			.flatten.filter(EClass) // classes
			.toInvertedMap[ new EClassStretcher(this, it) ]
		
		contents.values.forEach [
			progressions.push(source)
			compute
			progressions.pop
		]
		progressions = null
		this
	}

	def boolean canProvide(EClass it) {
		contents.containsKey(it) || extras.containsKey(it) || extensions.exists[ ext| ext.canProvide(it) ]
	}

	def onClass(Class<? extends EObject> it) {
		// We won't reach extensions
		// User is supposed to know the structure
		val eClass = (contents.keySet + extras.keySet).findFirst[ t| t.instanceClass == it ]
		if (eClass === null) throw new IllegalArgumentException(name + ' is not defined in this context.')
		eClass.onClass
	}

	def onClass(EClass it) {
		val result = tryOnClass
		if (result === null) throw new IllegalArgumentException(name + ' is not defined in this context.')
		result
	}

	protected def EClassStretcher tryOnClass(EClass it) {
		contents.get(it) ?: extras.get(it) ?: extensions.findFirst[ ext|ext.canProvide(it) ]?.onClass(it)
	}

	package def List<EClassStretcher> computeInheritances(EClass it) {
		val EClassStretcher content = tryOnClass ?: extras.computeIfAbsent(it)[ new EClassStretcher(this, it) ]
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

	def getAspect(EPackage it) { elements.get(it) }

	def xIs(EObject it, Object option) { onClass(eClass).isThis(option) }

	def xGet(EObject it, Object option) { 
		onClass(eClass)
		.getThis(option, UNDEFINED)
		.assertDefined(option)
	}

	def xCall(EObject it, Object option) { tryCall(xGet(option), option) }
	
	def xApply(EObject it, Object option, Object params) { tryApply(xGet(option), params, option) }
	
	def <T extends EObject> xIsSuperOf(T it, Class<T> current, Object option) {
		onClass(eClass).isSuper(current, option)
	}
	
	def <T extends EObject, V> xGetSuperOf(T it, Class<T> current, Object option) {
		onClass(eClass).getSuper(current, option, UNDEFINED)
	}

	def <T extends EObject> xCallSuperOf(T it, Class<T> current, Object option) {
		tryCall(xGetSuperOf(current, option), option)
	}
	
	def <T extends EObject> xApplySuperOf(T it, Class<T> current, Object option, Object params) {
		tryApply(xGetSuperOf(current, option), params, option)
	}
	
	
	def static tryCall(EObject it, Object fun, Object option) {
		// Function
		if (fun instanceof Functions.Function1<?, ?>) (fun as Functions.Function1<EObject, ?>).apply(it)
		else if (fun instanceof Function<?, ?>) (fun as Function<EObject, ?>).apply(it)

		// Runnable
		else if (fun instanceof Procedures.Procedure0) {
			fun.apply
			null
		} else if (fun instanceof Runnable) {
			fun.run
			null
		} else if (fun instanceof Callable<?>) {
			fun.call
			null
		}
		// Consumer
		else if (fun instanceof Procedures.Procedure1<?>) { 
			(fun as Procedures.Procedure1<EObject>).apply(it) 
			null
		} else if (fun instanceof Consumer<?>) { 
			(fun as Consumer<EObject>).accept(it) 
			null
		}

		else throw new UnsupportedOperationException(eClass + " does not provide a function " + option);
	}
	
	def static tryApply(EObject it, Object fun, Object params, Object option) {
		// Stateless Function
		if (fun instanceof Functions.Function1<?, ?>) (fun as Functions.Function1<Object, ?>).apply(params)
		else if (fun instanceof Function<?, ?>) (fun as Function<Object, ?>).apply(params)

		// Statefull Function
		else if (fun instanceof Functions.Function2<?, ?, ?>) (fun as Functions.Function2<EObject, Object, ?>).apply(it, params)
		else if (fun instanceof BiFunction<?, ?, ?>) (fun as BiFunction<EObject, Object, ?>).apply(it, params) 

		// Stateless Consumer
		else if (fun instanceof Procedures.Procedure1<?>) { 
			(fun as Procedures.Procedure1<Object>).apply(params) 
			null
		} else if (fun instanceof Consumer<?>) { 
			(fun as Consumer<Object>).accept(params) 
			null
		}
		// Statefull Consumer
		else if (fun instanceof Procedures.Procedure2<?, ?>) { 
			(fun as Procedures.Procedure2<EObject, Object>).apply(it, params) 
			null
		} else if (fun instanceof BiConsumer<?, ?>) { 
			(fun as BiConsumer<EObject, Object>).accept(it, params) 
			null
		}
		else throw new UnsupportedOperationException(eClass + " does not provide a function " + option);
	}
	
	static val UNDEFINED = new Object
	
	private def static assertDefined(Object it, Object option) {
		if (it !== UNDEFINED) it
		else throw new UnsupportedOperationException("" + option)
	}
	

}
