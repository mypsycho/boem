/*******************************************************************************
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Nicolas PERANSIN - initial API and implementation
 *******************************************************************************/
package org.mypsycho.modit

import java.util.ArrayList
import java.util.Collection
import java.util.List
import java.util.NoSuchElementException

/**
 * Group of elements identified by the assembling of a Mod-It factory.
 * 
 * @param <T> Common abstraction for all model elements: match ModIt constraint
 * @param <R> types of root elements.
 */
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

	static def <I, R extends I> aggregate(ModItPool<I, ? extends R> pool, Iterable<? extends R> values) {
		val all = (pool.roots + values).toList
		pool.context.perform(all)
		new ModItPool(all, pool.context)
	}

}
