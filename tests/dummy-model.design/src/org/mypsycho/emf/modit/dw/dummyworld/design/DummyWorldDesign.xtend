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

import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.ViewExtensionDescription
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.Viewpoint
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage
import org.mypsycho.modit.emf.sirius.api.AbstractGroup
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.LabelDescription
import org.eclipse.emf.ecore.EClass

/**
 *
 * @author nperansin
 */
class DummyWorldDesign extends AbstractGroup {
	
	new () {
		businessPackages += DwPackage.eINSTANCE
	}
	
	override protected initExtras() {
		super.initExtras
		
		extras.put("default_properties", Group.eObject("platform:/plugin/org.eclipse.sirius.properties.defaultrules/model/properties.odesign#/").extensions.head)
			// /@extensions.0/@categories.0/@pages.0"/>
		
	}
	
	override protected initContent(Group it) {
		ownedViewpoints += Viewpoint.create[
			name = "DummyWorld"
			modelFileExtension = "*.dw"
			ownedRepresentations += new CompanyDiagram(this).createContent
			ownedRepresentations += new DirectoryTable(this).createContent
		]
		
		extensions += ViewExtensionDescription.create[
			name = "DummyWorldPropsExtension"
			metamodels += businessPackages
			categories += Category.create[
				name = "DummyWorldPropsCategory"
				groups += GroupDescription.create[
					name = "DummyWorldSuppProps"
					extends = ViewExtensionDescription.extraRef("default_properties").categories.head.groups.head
					controls += LabelDescription.create[
						name = "DummyWorldSuppLabel"
						labelExpression = "aql:'Type'"
						valueExpression = "aql:self"
						displayExpression = expression[ eClass.name ]
					]
				]
				
			]
		]
	}
	
}