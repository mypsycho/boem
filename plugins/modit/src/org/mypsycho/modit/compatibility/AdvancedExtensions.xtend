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
package org.mypsycho.modit.compatibility

import com.google.common.collect.Maps
import java.util.Iterator
import java.util.Map
import org.eclipse.xtext.xbase.lib.Functions.Function1
import java.util.Objects

/**
 * Unavailable extension in 2.1O
 */
 @Deprecated
class AdvancedExtensions { 
	def static <T, K, V> Map<K, V> toMap(Iterable<? extends T> values,
		Function1<? super T, K> computeKeys, 
		Function1<? super T, V> computeValues
	) {
		toMap(values.iterator(), computeKeys, computeValues)
	}
	
	
	static def <T, K, V> Map<K, V> toMap(Iterator<? extends T> values,
		Function1<? super T, K> computeKeys, 
		Function1<? super T, V> computeValues
	) {
		Objects.requireNonNull(computeKeys, "computeKeys")
		Objects.requireNonNull(computeValues, "computeValues")
		val result = Maps.newLinkedHashMap()
		while(values.hasNext()) {
			val T t = values.next()
			result.put(computeKeys.apply(t), computeValues.apply(t))
		}
		result
	}
}
