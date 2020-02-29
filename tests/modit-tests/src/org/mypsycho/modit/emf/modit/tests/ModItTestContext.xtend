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
package org.mypsycho.modit.emf.modit.tests

import java.util.Collection
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.InternalEObject
import org.mypsycho.modit.emf.EModIt

import static org.junit.Assert.*

/**
 * Abstract class for all tests.
 */
abstract class ModItTestContext {
	
	
	/**
	 * Checks that there is not adapter lest in the model (some adapters are added while building the model)
	 */
	protected def assertNoAdapterLeft(EObject it) {
		(#[ it ] + [ eAllContents ])
			.forEach[ eObject | assertEquals(0, eObject.eAdapters.size) ]
	}

	/**
	 * Checks that there are no BoemURIs left in the model
	 */
	protected def assertNoBuildUriLeft(EObject it) {
		(#[ it ] + [ eAllContents ])
			.forEach[ eObject | eObject.assertNoRefToBuildURI ]
	}

	private def void assertNoRefToBuildURI(EObject eObject) {
		assertEquals("Unexpected temporary URI", 0, 
			eObject.eClass.EAllReferences
				.map[ 
					if (many) eObject.eGet(it, false) as Collection<InternalEObject>
					else #[ eObject.eGet(it, false) as InternalEObject ]
				].flatten
				.filter[
					if (it instanceof InternalEObject) 
						eIsProxy && EModIt.PROXY_URI_SCHEME == eProxyURI.scheme
					else false
				].size
		)
	}

}
