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
package org.mypsycho.modit.emf.stretch

import java.util.HashMap
import java.util.Map
import java.util.Objects
import org.eclipse.emf.ecore.EClass

class PartImplementation {
	
	// This class mainly contain the default value.
	protected var Object value // type compliance ensured by constructor
	protected var direct = false // when true value is not an lambda
	protected var Map<EClass, Object> cache = null
	
	// Static is required to return the same sub-type.
	protected static def <I extends PartImplementation> asValue(I it, Object impl) {
		value = impl
		direct = true
		it
	}
	
	// Static is required to return the same sub-type.
	protected static def <I extends PartImplementation> asFct(I it, Object impl) {
		value = Objects.requireNonNull(impl, "implementation")
		it
	}
	
	// Static is required to return the same sub-type.
	protected static def <I extends PartImplementation> asCache(I it, Object impl) {
		asFct(impl)
		cache = new HashMap
		it
	}
	
	def isDirect() { direct }
}