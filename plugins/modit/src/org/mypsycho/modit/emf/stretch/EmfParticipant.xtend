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

class EmfParticipant extends PartImplementation {

	// Behave like Pair but provide a static protection based on signature
	static abstract class Participation<P extends EmfParticipant> extends PartImplementation { // Pair is final :-(
		public val P key
		
		protected var EClassStretcher target
		
		protected new(P id, EClassStretcher value) {
			key = id
			target = value
		}
		
		/**
		 * Register the implementation into the strecher.
		 */
		abstract def void register(EmfStretcher it)
		
		/**
		 * Register the implementation into the stretcher.
		 * <p>
		 * Must be called on by stretcher.
		 * </p>
		 */
		package def void register(EClassStretcher it) {
			if (target !== it) throw new IllegalStateException("Already assigned")
			target = it
			context.register()
		}
		
		def getTarget() { target }
		
	}
	
}

