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

import org.eclipse.emf.ecore.EObject
import org.eclipse.sirius.table.metamodel.table.DColumn
import org.eclipse.sirius.table.metamodel.table.description.EditionTableDescription
import org.eclipse.sirius.table.metamodel.table.description.FeatureColumnMapping
import org.eclipse.sirius.table.metamodel.table.description.LineMapping
import org.mypsycho.emf.modit.dw.dummyworld.Contact
import org.mypsycho.emf.modit.dw.dummyworld.Directory
import org.mypsycho.emf.modit.dw.dummyworld.DwFactory
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage
import org.mypsycho.modit.emf.sirius.api.AbstractEditionTable
import org.mypsycho.modit.emf.sirius.api.AbstractGroup
import org.mypsycho.modit.emf.sirius.api.SiriusDesigns

/**
 * Create a table of contact location.
 * <p>
 * It contains a tree of companies and 
 * </p>
 * 
 * @author nperansin
 */
class DirectoryTable extends AbstractEditionTable {
	
	static val PKG = DwPackage.eINSTANCE

	
	new(AbstractGroup context) {
		super(context, "Directory", Directory)
	}
	
	override initContent(EditionTableDescription it) {
		val first = #[ true ]
		#[ // header   -> add.title -> add.task
			'Companies' -> 'Company' -> [ DwFactory it | createCompany ],
			'People' -> 'Person' -> [ DwFactory it | createPerson ]
		].forEach[ descr |
			val title = descr.key.key
			val creationTitle = descr.key.value
			val doCreate = descr.value
			
			ownedLineMappings += LineMapping.create[
				domainClass = Directory
				semanticCandidatesExpression = SiriusDesigns.IDENTITY
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
				
				addLineCreation(creationTitle, "DirectoryContact") [
					root, element, container |
					element?.toString()
					(root as Directory).contacts += doCreate.apply(PKG.dwFactory)
				]
			]
		]
		
		// well-known location
		"Mail,Phone,Address,Web site".split(",").forEach[ locationId |
			ownedColumnMappings += FeatureColumnMapping.create[
				name = locationId
				feature = PKG.contact_Locations // any valid property but is useless in all examples.
				headerLabelExpression = locationId
				labelExpression = context.expression(params(LINE, COl_VIEW))
					[ EObject it, DColumn col |
						if (it instanceof Contact) locations.findFirst[ name == col.label ]?.value
					]
				
				canEdit = context.expression(LINE)[ it instanceof Contact ]
				directEdit = createLabelEdit[
					browseExpression = context.expression(params(LINE, COl_VIEW, EDIT_VALUE)) [
						Contact it, DColumn col, String value |
						
						(locations.findFirst[ name == col.label ] ?: {
							val newLoc = PKG.dwFactory.createLocation
							newLoc.name = col.label
							locations += newLoc
							newLoc
						}).value = value
					]
				]
			]
		]
		

	}
	
	
}