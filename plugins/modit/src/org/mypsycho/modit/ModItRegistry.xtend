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

import java.util.HashMap
import java.io.PrintStream

/**
 * Registry of identified elements filled by ModitAssembler and access by ModitPool.
 * 
 * @param <T> Common abstraction for all model elements: match ModIt constraint
 * @param <R> types of root elements.
 */
class ModItRegistry<T> {

	public static val DEBUG = Boolean.getBoolean("modit.registry.debug")

	extension val ModItImplementation<T, ?> implementation

	val explicits = new HashMap<String, T>()

	val (ModItRegistry<T>, String)=>T delegation

	new(ModItImplementation<T, ?> impl, (ModItRegistry<T>, String)=>T deleg) {
		implementation = impl
		delegation = deleg
	}

	def get(String key) {
		explicits.get(key) ?: delegation?.apply(this, key)
	}

	protected def put(String key, T value) {
		explicits.put(key, value)
	}

	def String getQName(T it) {
		(explicits.entrySet.findFirst[m|m.value === it]?.key) // Find name
		?: (if (containerOf(it) !== null) containerOf(it).QName + "." else "") // else use parent qname
		+ '|' + typeName + '|' // and type
	}
	
	def debug() {
		if (DEBUG) trace(System.err)
	}
	
	def trace(PrintStream out) {
		out.println("*** ModIt registry ***")
		explicits.entrySet.sortBy[ key ].forEach[
			out.println("\t" + key +":"+value.class)
		]
	}

}
