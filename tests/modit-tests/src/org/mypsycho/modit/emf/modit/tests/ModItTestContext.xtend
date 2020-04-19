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
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage
import org.mypsycho.emf.modit.dw.dummyworld.Job
import org.mypsycho.emf.modit.dw.dummyworld.Location
import org.mypsycho.emf.modit.dw.dummyworld.Named
import org.mypsycho.emf.modit.dw.dummyworld.Person
import org.mypsycho.emf.modit.dw.dummyworld.Titled
import org.mypsycho.modit.emf.EModIt

import static org.junit.Assert.*

/**
 * Abstract class for all tests.
 */
abstract class ModItTestContext {
	
	protected val extension EModIt factory = // tested 
		EModIt.using(DwPackage.eINSTANCE) [
        	idProvider = [ provideId ]
        	contentProvider = [ text, it |
        		if (it instanceof Titled) {
        			name = text
        		} else if (it instanceof Person) {
        			val space = text.indexOf(" ")
        			firstname = if (space != -1) text.substring(0, space) else text
        			lastname =  if (space != -1) text.substring(space + 1) else null
        		}
        	]
		]
	
	

	
	/**
	 * Create an id recursively.
	 * <p>
	 * Test of containment on 
	 * </p>
	 * 
	 */
	static def String provideId(EObject it) {
		// testing auto alias with recursivity
		if (it instanceof Job || it instanceof Location) null // job and location not unique
		else if (it instanceof Named) {
        	val path = 
        		(if (parent !== null) parent.provideId?.concat("/")) ?: ""
        	
        	if (it instanceof Titled) (if (name !== null) path + name)
        	else if (it instanceof Person) 
        		if (firstname !== null && lastname !== null)
        			'''«path»«firstname».«lastname»'''
        }
	}
	
	def static onAll(EObject it) { #[ it ] + [ eAllContents() ] }
	
	static def String indent(EObject it) {
		if (eContainer === null) "" else " " + eContainer.indent
	}
	
	
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
				].flatten.filter[
					if (it instanceof InternalEObject) 
						eIsProxy && EModIt.PROXY_URI_SCHEME == eProxyURI.scheme
					else false
				].size
		)
	}

}
