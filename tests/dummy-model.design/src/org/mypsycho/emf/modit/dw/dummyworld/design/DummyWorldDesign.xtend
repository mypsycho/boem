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
package org.mypsycho.emf.modit.dw.dummyworld.design

import org.mypsycho.modit.emf.sirius.api.AbstractGroup
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.Viewpoint
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage

/**
 *
 * @author nperansin
 */
class DummyWorldDesign extends AbstractGroup {
	
	new () {
		businessPackages += DwPackage.eINSTANCE
	}
	
	override protected initContent(Group it) {
		ownedViewpoints += Viewpoint.create[
			name = "DummyWorld"
			modelFileExtension = "*.dw"
			ownedRepresentations += new CompanyDiagram(this).createContent
		]
	}
	
}