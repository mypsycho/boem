package org.mypsycho.modit

import java.util.HashMap

class ModItRegistry<T> {

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
		?: (if (container !== null) container.QName + "." else "") // else use parent qname
		+ '|' + typeName + '|' // and type
	}

}
