package org.mypsycho.modit

import java.util.Collections
import java.util.List
import java.util.NoSuchElementException

/**
 * 
 */
class ModItAssembler<T, F> {

	protected static val ThreadLocal<ModItAssembler<?, ?>> CURRENT_RUN = new ThreadLocal()

	extension val ModItImplementation<T, F> implementation

	protected val ModItRegistry<T> registry

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

			// Fill with content and the registry (+check for duplications)
			val iInclusive = [Collections.singleton(it) + allContent]
			values.map(iInclusive).flatten.forEach [
				// Fill element
				val content = unbindContent
				if (content !== null) context.description.contentProvider.accept(content, it)

				//
				var String id = unbindAlias ?: context.description.idProvider?.apply(it)
				if (id !== null) {
					val registered = registry.get(id)
					if (registered !== null && registered !== it) {
						throw new IllegalStateException("Duplicated id '" + id + "'");
					}
					if (registered === null) { // Already done, how could we skip it ?
						registry.put(id, it)
					}
				}
			]

			// Resolve all references using the registry
			values.map(iInclusive).flatten.forEach [ value |
				allReferences(value).forEach[value.updateRef(it)]
			]

		} finally {
			CURRENT_RUN.remove
		}

		this
	}

	static def <T> isDirectApply(ModIt<T> context) {
		val ModItAssembler<?, ?> run = ModItAssembler.CURRENT_RUN.get
		return run !== null // not assembling
		&& run.implementation.context === context // Strange case : several facory, which user case ?            
	}

	def updateRef(T container, F prop) {
		// As this method is called is called A LOT. We avoid nice xtend functional syntax.
		val values = getValues(container, prop)
		if (values === null) return;

		values.filter[isProxy].forEach [

			var targetValue = registry.get(proxyId);
			if (targetValue === null) { // assert found
				throw new NoSuchElementException('''Unknown «proxyId» for «prop.propName» of «registry.getQName(container)»''')
			}
			targetValue = (getProxyPath?.apply(targetValue)) ?: targetValue

			if (!targetValue.assignableTo(prop)) {
				throw new ClassCastException(
                    '''At «registry.getQName(container)».«prop.propName», «proxyId» targets a «targetValue.typeName» incompatible with «prop.refTypeName»''')
			}

			container.replaceResolved(prop, it, targetValue)
		]

	}

}
