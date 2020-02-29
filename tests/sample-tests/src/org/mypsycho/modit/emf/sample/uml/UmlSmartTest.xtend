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
package org.mypsycho.modit.emf.sample.uml

import org.eclipse.uml2.uml.Generalization
import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.Model
import org.eclipse.uml2.uml.Operation
import org.eclipse.uml2.uml.Parameter
import org.eclipse.uml2.uml.UMLPackage
import org.junit.Test
import org.mypsycho.modit.emf.EModIt

import static org.junit.Assert.*
import org.eclipse.uml2.uml.NamedElement

/**
 * This class provides an implementation of testing an Meta-Model using EMF Mod-it.
 * <p>
 * It should be compared with {@link UmlPainfullTest }.
 * </p>
 */
class UmlSmartTest {
	
    extension EModIt factory = EModIt.using(UMLPackage.eINSTANCE) [
    	idProvider = [ if (it instanceof NamedElement) name else null ]
    	// This simple ID provider forces you to have unique name in your
    	// A provider based on qualified name would be better.
    ]
    
	@Test
	def void nominal() {
		val it = Model.create [
			// Each element content is described with a Tree layout.
			name = "myUmlModel"
			packagedElements += #{
				Interface.create [ 
					name = "Service"
					ownedOperations += Operation.create [ 
						name = "request"
						// We can use an element and defined it later
						type = Interface.ref("Data")
						ownedParameters += Parameter.create [
							name = "context"
							type = Interface.ref("Context")
						]
					]
				],
				Interface.create [ 
					name = "Facade"
					generalizations += Generalization.create [
						general = Interface.ref("Service")
					]
				],
				Interface.create [ name = "Data" ],
				Interface.create [ name = "Context" ]
			}
		].assemble

		// Syntax is still boring, see {@link UmlSmarterTest } 
		// to see how a content provider can limit boiler plates.

		assertEquals(1, access(Interface, "Facade").allOperations.size);
		assertEquals("request", access(Interface, "Facade").allOperations.head.name);

	}

}
