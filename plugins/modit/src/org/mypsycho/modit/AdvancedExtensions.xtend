package org.mypsycho.modit

import com.google.common.collect.Maps
import java.util.Iterator
import java.util.Map
import org.eclipse.xtext.xbase.lib.Functions.Function1

/**
 * Unavailable extension in 2.1O
 */
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
		if (computeKeys == null) throw new NullPointerException("computeKeys")
		if (computeValues == null) throw new NullPointerException("computeValues")
		val result = Maps.newLinkedHashMap()
		while(values.hasNext()) {
			val T t = values.next()
			result.put(computeKeys.apply(t), computeValues.apply(t))
		}
		result
	}
}