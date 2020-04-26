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

import java.util.concurrent.atomic.AtomicBoolean
import org.eclipse.emf.ecore.EObject
import org.eclipse.sirius.table.metamodel.table.DColumn
import org.eclipse.sirius.table.metamodel.table.description.EditionTableDescription
import org.mypsycho.emf.modit.dw.dummyworld.Contact
import org.mypsycho.emf.modit.dw.dummyworld.Directory
import org.mypsycho.emf.modit.dw.dummyworld.DwFactory
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage
import org.mypsycho.modit.emf.sirius.api.AbstractEditionTable
import org.mypsycho.modit.emf.sirius.api.AbstractGroup

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

	static val LINE_GROUPS = #[ // header   -> add.title -> add.task
		'Companies' -> 'Company' -> [ DwFactory it | createCompany ],
		'People' -> 'Person' -> [ DwFactory it | createPerson ]
	]
	
	new(AbstractGroup context) {
		super(context, "Directory", Directory)
	}
	
	override initContent(EditionTableDescription it) {
		
		ownedLineMappings += "subDir".line [
			domainClass = Directory
			semanticCandidatesExpression = PKG.directory_Directories
			headerLabelExpression = context.expression[ (it as Directory).name ] // could be localized
			reusedSubLines += "subDir".lineRef
			
			reusedSubLines += LINE_GROUPS.map[ key.value.lineRef ]
		]
		
		
		val first = new AtomicBoolean(true) // create contact line once
		LINE_GROUPS.forEach[ descr |
			val title = descr.key.key
			val creationTitle = descr.key.value
			val doCreate = descr.value
			
			ownedLineMappings += creationTitle.line [
				domainClass = Directory
				semanticCandidatesExpression = PKG.directory_Directories
				headerLabelExpression = title // could be localized
				
				if (first.get) {
					ownedSubLines += "contact".line [
						name = creationTitle
						domainClass = Contact
						semanticCandidatesExpression = PKG.directory_Contacts
						headerLabelExpression = context.itemProviderLabel
					]
					first.set(false)
				} else {
					reusedSubLines += "contact".lineRef
				}
				
				addLineCreation(creationTitle, "contact") [
					root, element, container |
					(root as Directory).contacts += doCreate.apply(PKG.dwFactory)
				]
			]
		]
		
		
		// expression should be out of loop
		val columnLabel = context.expression(params(EditArg.lineSemantic, EditArg.column))
			[ EObject it, DColumn col |
				if (it instanceof Contact) locations.findFirst[ name == col.label ]?.value
			]
		val cellEditable = context.expression(EditArg.lineSemantic.name)[ it instanceof Contact ]
		val cellEdit = context.expression(params(EditArg.lineSemantic, EditArg.column, EDIT_VALUE)) [
				Contact it, DColumn col, String value |
				
				(locations.findFirst[ name == col.label ] ?: {
					val newLoc = PKG.dwFactory.createLocation
					newLoc.name = col.label
					locations += newLoc
					newLoc
				}).value = value
			]
		
		
		// well-known location
		"Mail,Phone,Address,Web site".split(",").forEach[ locationId |
			ownedColumnMappings += locationId.column [

				feature = PKG.contact_Locations // any valid property but is useless in all examples.
				headerLabelExpression = locationId
				labelExpression = columnLabel
				
				canEdit = cellEditable
				directEdit = createLabelEdit[ browseExpression = cellEdit ]
			]
		]
		

	}
	
	
}