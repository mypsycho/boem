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

import org.eclipse.sirius.table.metamodel.table.description.CrossTableDescription
import org.eclipse.sirius.table.metamodel.table.description.LineMapping
import org.mypsycho.emf.modit.dw.dummyworld.Contact
import org.mypsycho.emf.modit.dw.dummyworld.Directory
import org.mypsycho.emf.modit.dw.dummyworld.DwFactory
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage
import org.mypsycho.modit.emf.sirius.api.AbstractCrossTable
import org.mypsycho.modit.emf.sirius.api.AbstractGroup

/**
 *
 * @author nperansin
 */
class DirectoryTable extends AbstractCrossTable {
	
	static val PKG = DwPackage.eINSTANCE

	
	new(AbstractGroup context) {
		super(context, "Directory", Directory)
	}
	
	override initContent(CrossTableDescription it) {
		val first = #[ true ]
		#[
			'Companies' -> [ DwFactory it | createCompany ],
			'People' -> [ DwFactory it | createPerson ]
		].forEach[ descr |
			val title = descr.key
			val doCreate = descr.value
			
			ownedLineMappings += LineMapping.create[
				domainClass = Directory
				headerLabelExpression = title // could be localized
				
				if (first.head) {
					ownedSubLines += LineMapping.createAs("DirectoryContact") [
						domainClass = Contact
						semanticCandidatesExpression = PKG.directory_Contacts
						headerLabelExpression = context.itemProviderLabel
					]
					first.set(0, false)
				} else {
					reusedSubLines += LineMapping.ref("DirectoryContact")
				}
				
				addLineCreation("Company", "DirectoryContact") [
					root, element, container |
					element?.toString()
					(root as Directory).contacts += doCreate.apply(PKG.dwFactory)
				]
			]
		]
		
		"Mail,Address,Website".split(",").forEach[ locationId |
			// create Column
			
			// create Intersection
			
			
		]
		

	}
	
	
}