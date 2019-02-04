package org.mypsycho.modit

import java.util.Collection
import java.util.Collections
import java.util.List
import org.eclipse.emf.ecore.EObject
import java.util.ArrayList

/**
 * Utility class that contains the Mod-it abstraction.
 * <p>
 * This class must be associated to an implementation of model.
 * </p>
 * <p>
 * Mod-it frees developers from sequential description constraints and eases reference declarations.
 * </p>
 */
class ModIt<T> {

	/** How to create element and references */
	protected val ModItImplementation<T, ?> impl

	/** Description of the factory */
	protected val ModItDescriptor<T> description


	/**
	 * A factory with immutable strategy.
	 * 
	 * @param descr of the factory
	 */
	new(ModItDescriptor<T> descr, (ModIt<T>)=>ModItImplementation<T, ?> delegation) {
		description = descr.clone // we protect modification after creation
		impl = delegation.apply(this)
		impl.init(descr)
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
	 * Creates an {@link EObject} and initializes it when assembling.
	 * 
	 * @param type of EObject to build
	 * @param content parsed parsed by content provider
	 */
	def <R extends T> R create(Class<R> type, String content) {
		create(type, content, null)
	}

	/**
	 * Creates an {@link EObject} and initializes it.
	 * 
	 * @param type of EObject to build
	 * @param initializer of the given {@link EObject}
	 */
	def <R extends T> R create(Class<R> type, (R)=>void initializer) {
		create(type, null, initializer)
	}

	/**
	 * Creates an {@link EObject} and initializes it when assembling.
	 * 
	 * @param type of EObject to build
	 * @param content parsed by content provider
	 * @param init of the given {@link EObject}
	 * @throw IllegalArgumentException if type is not handled by the factory.
	 */
	def <R extends T> R create(Class<R> type, String content, (R)=>void init) {
		val it = impl.create(type)
		if (content !== null) {
			if (description.contentProvider === null) {
				throw new UnsupportedOperationException("Content cannot be provide as contentProvider is null")
			}
			impl.bindContent(it, content)			
		}
		if (init !== null) {
			impl.bindInit(it, init)
		}
		ModItAssembler.candidate(it)
		
		it
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
		ids.map[ ref(type, it, null) ].toList
	}

	/**
	 * Attaches an id on the given value.
	 * 
	 * @param it to attach
	 * @param id of alias
	 */
	def <R extends T> alias(String id, R it) {
		impl.bindAlias(it, id)
		it
	}
	
	/**
	 * Creates an {@link EObject} and associate it to id.
	 * 
	 * @param id of created element
	 * @param type the type of EObject to build
	 */
	def <R extends T> R createAs(Class<R> type, String id) {
		createAs(type, id, null, null)
	}

	/**
	 * Creates an {@link EObject} and initializes it.
	 * 
	 * @param type of EObject to build
	 * @param initializer of the given {@link EObject}
	 */
	def <R extends T> R createAs(Class<R> type, String id, String content) {
		createAs(type, id, content, null)
	}
	
	/**
	 * Creates an {@link EObject} and initializes it and associate it to id.
	 * 
	 * @param id of created element
	 * @param type of EObject to build
	 * @param initializer of the given {@link EObject}
	 */
	def <R extends T> R createAs(Class<R> type, String id, (R)=>void initializer) {
		createAs(type, id, null, initializer)
	}
	
	/**
	 * Creates an {@link EObject} and initializes it when assembling and associate it to id.
	 * 
	 * @param id of created element
	 * @param type of EObject to build
	 * @param content parsed parsed by content provider
	 */
	def <R extends T> R createAs(Class<R> type, String id, String content, (R)=>void init) {
		id.alias(create(type, content, init))
	}


	/**
	 * Attaches an assembly task on element.
	 * 
	 * @param type of EObject to build
	 * @param task of the given {@link EObject}
	 */
	def <R extends T> onAssembled(R it, (R)=>void task) {
		impl.bindAssemble(it, task)
	}

	/**
	 * Assembles the content tree of the value.
	 * <p>
	 * Shortcut for singleton of {@link #assemble(Collection) }.
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
	 * Assembles the content tree of provided values.
	 * <p>
	 * The value should have been created with factory:
	 * <ul>
	 *   <li>descriptions are parsed and applied,</li>
	 *   <li>initializations are performed,</li>
	 *   <li>references are resolved</li>
	 * </ul>
	 * </p>
	 * <p>
	 * Do not call this method in a initialization.
	 * </p>
	 * 
	 * @param values to assemble
	 * @return a new pool of elements
	 * @throw NoSuchElementException if a reference cannot be found
	 * @throw ClassCastException if a reference target an incompatible type
	 * @throw IllegalStateException if a id defined used more than once
	 */
	def <R extends T> assemble(Collection<R> values) {
		val builts = new ArrayList(values) /* isolate source and Fix order */
		createPool(builts, createAssembler().perform(builts))
	}

	/**
	 * Creates a basic assembler with handle construction phases.
	 * 
	 * @return new assembler instance
	 */
	protected def <S> createAssembler() {
		new ModItAssembler(impl as ModItImplementation<T, S>, createRegistry)
	}

	/**
	 * Create a pool from assembled elements.
	 * 
	 * @param root elements of pool
	 * @param assembler of root elements
	 * @return new pool instance
	 */
	protected def <R extends T> createPool(List<R> root, ModItAssembler<T, ?> assembler) {
		new ModItPool(root, assembler)
	}

	/**
	 * Creates a basic registry for pool.
	 * 
	 * @return new registry instance
	 */
	protected def createRegistry() {
		new ModItRegistry<T>(impl, description.getter)
	}

//
// Deprecated notation: 
//   createAs syntax follow create args order.
//   aliasCreate syntax is not convenient.
//

	/**
	 * Creates an {@link EObject} and associate it to id.
	 * 
	 * @param id of created element
	 * @param type the type of EObject to build
	 */
	@Deprecated // use createAs instead
	def <R extends T> R aliasCreate(String id, Class<R> type) {
		type.createAs(id, null, null)
	}

	/**
	 * Creates an {@link EObject} and initializes it.
	 * 
	 * @param type of EObject to build
	 * @param initializer of the given {@link EObject}
	 */
	@Deprecated // use createAs instead
	def <R extends T> R aliasCreate(String id, Class<R> type, String content) {
		type.createAs(id, content, null)
	}
	
	/**
	 * Creates an {@link EObject} and initializes it and associate it to id.
	 * 
	 * @param id of created element
	 * @param type of EObject to build
	 * @param initializer of the given {@link EObject}
	 */
	@Deprecated // use createAs instead
	def <R extends T> R aliasCreate(String id, Class<R> type, (R)=>void initializer) {
		type.createAs(id, null, initializer)
	}
	
	/**
	 * Creates an {@link EObject} and initializes it when assembling and associate it to id.
	 * 
	 * @param id of created element
	 * @param type of EObject to build
	 * @param content parsed parsed by content provider
	 */
	@Deprecated // use createAs instead
	def <R extends T> R aliasCreate(String id, Class<R> type, String content, (R)=>void init) {
		type.createAs(id, content, init)
	}

		


}
