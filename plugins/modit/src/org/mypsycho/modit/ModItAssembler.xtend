package org.mypsycho.modit

import java.util.Collection
import java.util.LinkedList
import java.util.List
import java.util.NoSuchElementException

/**
 * This class wraps the construction of elements together.
 */
class ModItAssembler<T, F> {

	/**  */
	protected static val ThreadLocal<ModItAssembler<?, ?>> CURRENT_RUN = new ThreadLocal()

	extension val ModItImplementation<T, F> implementation

	protected val ModItRegistry<T> registry
	
	protected val onFlies = new LinkedList<T>

	new(ModItImplementation<T, F> impl, ModItRegistry<T> reg) {
		implementation = impl
		registry = reg
	}

	/**
	 * Implementation of buildTree.
	 * <p>
	 * Walk all objects to identify them. Then, update all references.
	 * </p>
	 * @throw NoSuchElementException if a reference cannot be found
	 * @throw ClassCastException if a reference target an incompatible type
	 * @throw IllegalStateException if a id defined used more than once
	 */
	def <R extends T> perform(List<R> values) {
		if (CURRENT_RUN.get !== null) throw new IllegalStateException("No inception supported, sorry")

		try {
			CURRENT_RUN.set(this)

			val onAssemblies = new LinkedList<Pair<T, (T)=>void>>
			// Builds all contents
			val stack = new LinkedList<T>(values)
			while (!stack.empty || !onFlies.empty) {
				if (!stack.empty) {
					stack.applyPopAll[ 
						val content = unbindContent
						if (content !== null) {
							context.description.contentProvider.accept(content, it)	
						}
						unbindInit?.apply(it)
						val onAssembly = unbindAssemble
						if (onAssembly != null) {
							onAssemblies.add(0, it->onAssembly)
						}
						onFlies.remove(it) // if already attached
					]
				} else {
					stack += onFlies.filter[ containedBy(it, values)  ]
					onFlies.clear
				}
			}

			// Builds all IDs
			stack += values
			while (!stack.empty) {
				stack.applyPopAll[ 
					var String id = unbindAlias ?: context.description.idProvider?.apply(it)
					if (id !== null) {
						val registered = registry.get(id)
						if ((registered !== null) && (registered !== it)) {
							throw new IllegalStateException("Duplicated id '" + id + "'")
						}
						registry.put(id, it)
					}
				]
			}

			stack += values
			while (!stack.empty) {
				stack.applyPopAll[ 
					allReferences(it).forEach[ ref | updateRef(ref) ]
				]
			}
			
			// At the end, perform assembly tasks
			onAssemblies.forEach[ value.apply(key) ]

		} finally {
			onFlies.clear
			CURRENT_RUN.remove
		}
		
		this
	}
	
	private def void applyPopAll(LinkedList<T> it, (T)=>void action) {
		val head = pop
		if (!contains(head)) { // Ensure uniqueness of work
			action.apply(head)
			addAll(0, implementation.contentOf(head))
		}
	}

	private def boolean containedBy(T it, Collection<?> pool) {
		(it !== null) && (pool.contains(it) || containedBy(implementation.containerOf(it), pool))
	}
	

	package static def <T> void candidate(T element) {
		(ModItAssembler.CURRENT_RUN.get as ModItAssembler<T, ?>)?.onFlies?.add(element)
	}

	def updateRef(T container, F prop) {
		// As this method is called is called A LOT. We avoid nice xtend functional syntax.
		val values = getValues(container, prop)
		if (values === null) return;

		values.filter[isProxy].forEach [

			var targetValue = registry.get(proxyId);
			if (targetValue === null) { // assert found
				throw new NoSuchElementException(
'''Unknown «proxyId» for «prop.propName»«««
 of «registry.getQName(container)»'''
 				)
			}
			val path = getProxyPath 
			// Warning: if path is return null (illegal), 
			// Elvis (?:) provide the wrong value
			if (path != null) {
				targetValue = path.apply(targetValue)
			}

			if (targetValue != null && !targetValue.assignableTo(prop)) {
				throw new ClassCastException(
'''At «registry.getQName(container)».«prop.propName», «««
«proxyId» targets a «targetValue.typeName» «««
incompatible with «prop.refTypeName»'''
				)
			}

			val fail = container.replaceResolved(prop, it, targetValue)
			if (fail != null) {
				throw new IllegalStateException(
'''At «registry.getQName(container)».«prop.propName», «««
«proxyId» value fails because «fail»'''
				)
			}
		]

	}

}
