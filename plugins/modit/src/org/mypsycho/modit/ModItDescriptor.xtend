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

import java.util.function.BiConsumer

/**
 * Class describing specific behavior of an factory.
 * 
 * @param <T> Common abstraction for all model elements: match ModIt constraint
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
