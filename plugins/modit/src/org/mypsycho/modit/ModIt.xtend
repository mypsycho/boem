package org.mypsycho.modit

import java.util.Collection
import java.util.Collections
import java.util.List
import org.eclipse.emf.ecore.EObject

/**
 * Utility class that contains the Mod-it abstraction.
 * <p>
 * This class must be associated to an implementation of model.
 * </p>
 * <p>
 * Fork to test new features:
 * <ul>
 *   <li>Build tree of several roots,</li>
 *   <li>Add a content provider mechanism,</li>
 *   <li>Suppress Guava usage,</li>
 *   <li>More detailed messages and exceptions,</li>
 *   <li>Special URI characters supported (#, ?) in id.</li>
 * </ul>
 * </p>
 */
class ModIt<T> {

	/** How to create element and references */
	protected val ModItImplementation<T, ?> impl

	/** Description of the factory */
	protected val ModItDescriptor<T> description

	/**
	 * Create a factory with immutable strategy.
	 * 
	 * @param descr of the factory
	 */
	new(ModItDescriptor<T> descr, (ModIt<T>)=>ModItImplementation<T, ?> delegation) {
		description = descr.clone // we protect modification after creation
		impl = delegation.apply(this)
		impl.init(descr)
	}

	/**
	 * Builds an {@link EObject} and initializes it.
	 * 
	 * @param type of EObject to build
	 * @param content parsed by content provider
	 * @param initializer of the given {@link EObject}
	 * @throw IllegalArgumentException if type is not handled by the factory.
	 */
	def <R extends T> R create(Class<R> type, String content, (R)=>void initializer) {
		val it = impl.create(type)
		if (content !== null) {
			if (description.contentProvider === null) {
				throw new UnsupportedOperationException("Content cannot be provide as contentProvider is null")
			}

			if (ModItAssembler.isDirectApply(this)) {
				description.contentProvider.accept(content, it)
			} else {
				impl.bindContent(content, it)
			}
		}
		initializer?.apply(it)
		it
	}

	/**
	 * Builds an {@link EObject} and initializes it.
	 * 
	 * @param type of EObject to build
	 * @param content parsed parsed by content provider
	 */
	def <R extends T> R create(Class<R> type, String content) {
		create(type, content, null)
	}

	/**
	 * Builds an {@link EObject} and initializes it.
	 * 
	 * @param type of EObject to build
	 * @param initializer of the given {@link EObject}
	 */
	def <R extends T> R create(Class<R> type, (R)=>void initializer) {
		create(type, null, initializer)
	}

	/**
	 * Creates an {@link EObject}.
	 * 
	 * @param type the type of EObject to build
	 */
	def <R extends T> R create(Class<R> type) {
		create(type, null, null)
	}

	/**
	 * Builds a proxy to be resolved
	 * when {@link ModIt#assemble(T)} is called.
	 * 
	 * @param type of proxy to build (the interface of the EClass to build)
	 * @param id of the target object
	 * @throw IllegalArgumentException if type is not handled by the factory.
	 */
	def <R extends T> R ref(Class<R> type, String id) {
		impl.ref(type, id, null)
	}

	/**
	 * Builds a proxy to be resolved
	 * when {@link ModIt#assemble(T)} is called.
	 * 
	 * @param type of proxy to build (the interface of the EClass to build)
	 * @param id of the target object
	 * @throw IllegalArgumentException if type is not handled by the factory.
	 */
	def <R extends T> R ref(Class<R> type, String id, (T)=>R path) {
		impl.ref(type, id, path)
	}

	/**
	 * Builds a proxy to be resolved
	 * when {@link ModIt#assemble(T)} is called.
	 * 
	 * @param type of proxy to build (the interface of the EClass to build)
	 * @param id of the target object
	 * @throw IllegalArgumentException if type is not handled by the factory.
	 */
	def <R extends T> List<R> ref(Class<R> type, String... ids) {
		ids.map[impl.ref(type, it, null)].toList
	}

	/**
	 * Attaches an id on the given value.
	 * 
	 * @param it to attach
	 * @param id of alias
	 */
	def <R extends T> alias(String id, R it) {
		impl.bindAlias(id, it)
		it
	}

	/**
	 * Builds the containment tree.
	 * <p>
	 * This methods gathers all IDs that have been set using ">>" (aka buildRef) method. <br/>
	 * It also evaluates unmapped value with the id provider.
	 * </p>
	 * @param value to assemble
	 * @return a new pool of elements
	 * @throw NoSuchElementException if a reference cannot be found
	 * @throw ClassCastException if a reference target an incompatible type
	 * @throw IllegalStateException if a id defined used more than once
	 */
	def <R extends T> assemble(R value) {
		assemble(Collections.singletonList(value))
	}

	/**
	 * Builds the containment tree.
	 * <p>
	 * This methods gathers all IDs that have been set using ">>" (aka buildRef) method. <br/>
	 * </p>
	 * @param values to assemble
	 * @return a new pool of elements
	 * @throw NoSuchElementException if a reference cannot be found
	 * @throw ClassCastException if a reference target an incompatible type
	 * @throw IllegalStateException if a id defined used more than once
	 */
	def <R extends T> assemble(Collection<R> values) {
		val builts = values.toList /* isolate source and Fix order */
		createPool(builts, createAssembler().perform(builts))
	}

	protected def <S> createAssembler() {
		new ModItAssembler(impl as ModItImplementation<T, S>, createRegistry)
	}

	protected def <R extends T> createPool(List<R> values, ModItAssembler<T, ?> assembler) {
		new ModItPool(values, assembler)
	}

	protected def createRegistry() {
		new ModItRegistry<T>(impl, description.getter)
	}

}
