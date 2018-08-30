package org.mypsycho.modit

import java.util.ArrayList
import java.util.Collection
import java.util.List
import java.util.NoSuchElementException

class ModItPool<T, R extends T> {

	/** Root elements fi */
	val List<R> roots;

	val ModItAssembler<T, ?> context

	/**
	 * Creation of pool of assembled values.
	 * 
	 * @param roots of elements
	 * @param registry of identifiable elements
	 * @param context which created the pool
	 */
	new(List<R> values, ModItAssembler<T, ?> context) {
		this.roots = values
		this.context = context
	}

	/**
	 * Returns built values.
	 * 
	 * @return built values.
	 */
	def getRoots() {
		roots;
	}

	/**
	 * Returns first built value.
	 * 
	 * @return built value.
	 */
	def getRoot() {
		roots.head;
	}

	/**
	 * Gets the semantic element registered against the given id or null.
	 * 
	 * @param id of the element
	 */
	def T access(String id) {
		val it = context.registry.get(id)
		if (it === null) {
			throw new NoSuchElementException(id + " is  not defined")
		}
		it
	}

	/**
	 * Gets the semantic element registered against the given id.
	 * 
	 * @param type the type of the expected element
	 * @param id the id of the element
	 */
	def <V extends T> V access(Class<V> type, String id) {
		type.cast(access(id));
	}

	def R update((R)=>void filler) {
		update(root, filler)
	}

	/**
	 * Method used to update a model referenced in this ModelAccessor.
	 * </p>
	 * This method update the semantic model but also update the Map of element with an id.
	 * </p>
	 * @param config the updater
	 */
	def <U extends T> U update(U value, (U)=>void filler) {
		filler.apply(value)
		context.perform(roots)
		value
	}

	def <U extends T> U update(Class<U> type, String id, (U)=>void filler) {
		update(access(type, id), filler)
	}

	static def <I, R extends I, A extends R, B extends R> aggregate(ModItPool<I, A> pool, Collection<B> values) {
		val all = new ArrayList<R>()
		all += pool.roots
		all += values
		pool.context.perform(all)
	}

}