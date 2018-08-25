package org.mypsycho.modit

import java.util.function.BiConsumer

/**
 * Class describing specific behavior of an factory.
 */
class ModItDescriptor<T> implements Cloneable {

	/** Fill a created element with provided content. */
	public var BiConsumer<String, ? super T> contentProvider = null

	/** Create automatically an id when assembling element. */
	public var (T)=>String idProvider = null

	/** How to find an element using a specific path strategie. */
	public var (ModItRegistry<T>, String)=>T getter = null

	override ModItDescriptor<T> clone() {
		// safe implementation to used when creating a factory
		super.clone() as ModItDescriptor<T>
	}

}
