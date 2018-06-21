package org.mypsycho.modit

import java.util.function.BiConsumer

class ModItDescriptor<T> implements Cloneable {

	/** Fill a created element with provided content. */
	public var BiConsumer<String, ? super T> contentProvider = null

	/** Create automatically an id when assembling element. */
	public var (T)=>String idProvider = null

	/** How to find an element using a specific path strategie. */
	public var (ModItRegistry<T>, String)=>T getter = null

	override ModItDescriptor<T> clone() {
		try {
			super.clone() as ModItDescriptor<T>
		} catch (CloneNotSupportedException cnse) {
			throw new InstantiationError("ModItDescriptor could  not be clone").initCause(cnse) as InstantiationError
		}
	}

}
