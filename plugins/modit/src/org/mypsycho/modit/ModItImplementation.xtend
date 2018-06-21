package org.mypsycho.modit

import org.eclipse.emf.ecore.EObject

/**
 * Factory of EObject.
 */
abstract class ModItImplementation<T, F> {

	/** Context of the factory */
	protected val ModIt<T> context

	/**
	 * Create a factory with immutable strategy.
	 * 
	 * @param descr of the factory
	 */
	new(ModIt<T> context) {
		this.context = context
	}

	def void init(ModItDescriptor<T> descr) {}

	/**
	 * Builds an {@link EObject} and initializes it.
	 * 
	 * @param type of EObject to build
	 * @throw IllegalArgumentException if type is not handled by the factory.
	 */
	def <R extends T> R create(Class<R> type)

	/**
	 * Builds a proxy to be resolved when construction is performed.
	 * 
	 * @param type of proxy to build
	 * @param id of the target object
	 * @throw IllegalArgumentException if type is not handled by the factory.
	 */
	def <R extends T> R ref(Class<R> type, String id, (T)=>R path) {
		val it = create(type)
		initProxyId(id, path)
		it
	}

	/**
	 * Returns true if it is proxy.
	 * @return true if proxy.
	 */
	def boolean isProxy(T it)

	/**
	 * Returns the id stored in it.
	 * <p>
	 * It must be proxy created by this implementation.
	 * </p>
	 * @param it storing an proxy id.
	 * @return id of root target
	 */
	def String getProxyId(T it)

	/**
	 * Returns path to reference from root.
	 * 
	 * @param it storing an proxy id.
	 * @return path from root target
	 */
	def (T)=>T getProxyPath(T it)

    /**
     * Init it as a proxy with provided id.
     * 
     * @param it to initialise
     * @param id of root reference
     * @param path to reference for root
     */
	def <R extends T> void initProxyId(T it, String id, (T)=>R path)

	def T container(T it)

	def String typeName(T it)

	def String propName(F it)

	def String refTypeName(F it)

	def boolean assignableTo(T value, F prop)

	/**
	 * Creator of element and content.
	 * 
	 * @param value to iterate
	 * @return an EObject iterator
	 */
	def Iterable<T> allContent(T value)

	def Iterable<F> allReferences(T container)

	def Iterable<? extends T> getValues(T container, F property)

	/**
	 * Replaces the old value in the object's feature with the new value .
	 * This method prevents the resolution of EList when replacing a value.
	 * 
	 * @param container the object holding the values.
	 * @param feature the feature of the object holding the values.
	 * @param oldValue the value to replace.
	 * @param newValue the replacement value.
	 */
	def void replaceResolved(T container, F feature, T oldValue, T newValue)

	/**
	 * Attaches an id on the given value.
	 * 
	 * @param value to attach
	 * @param id of value
	 */
	def void bindAlias(String id, T value)

	/**
	 * Detach any id from the object and returns it.
	 * 
	 * @param value the targeted EObject
	 * @return attached id or null
	 */
	def String unbindAlias(T value)

	/**
	 * Attaches an content on the given value.
	 * 
	 * @param value to attach
	 * @param content of value
	 */
	def void bindContent(String content, T value)

	/**
	 * Detach any id from the object and returns it.
	 * 
	 * @param value the targeted EObject
	 * @return attached value or null
	 */
	def String unbindContent(T value)

}
