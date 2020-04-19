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
 package org.mypsycho.modit.emf.sirius.api

import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.sirius.table.metamodel.table.description.CreateLineTool
import org.eclipse.sirius.table.metamodel.table.description.LabelEditTool
import org.eclipse.sirius.table.metamodel.table.description.LineMapping
import org.eclipse.sirius.table.metamodel.table.description.TableDescription
import org.eclipse.sirius.table.metamodel.table.description.TableVariable
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.EditMaskVariables
import org.eclipse.xtext.xbase.lib.Procedures.Procedure3

/**
 * Class regrouping a common adaptation of Sirius into Java and EClass reflection for Diagram.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractTable<T extends TableDescription> extends AbstractRepresentation<T>{

	/** Current DTable. */
	public static val TABLE = "table"

	/** semantic target of the current DTable. */
	public static val ROOT = "root"
	
	/** DLine of the current DCell: table.DLine */
	public static val LINE_VIEW = "line"
	
	/** semantic target of line */
	public static val LINE = "lineSemantic"
	
	/** DColumn of the current DCell: table.DColumn */
	public static val COl_VIEW = "column"
	
	/** semantic target of column */
	public static val COLUMN = "columnSemantic"
	
	/** Value return by field edit */
	public static val EDIT_VALUE = "arg0"
	
	static val LABEL_EDIT_VARS = #[ TABLE, ROOT, LINE_VIEW, LINE, COl_VIEW, COLUMN ]
	
	// root='ecore.EObject | semantic target of the current DTable.' 
// line='table.DLine | DLine of the current DCell.'
// lineSemantic='ecore.EObject | semantic target of $line' 
// container='ecore.EObject | semantic target of $line.' 
// column='table.DColumn | DColumn of the current DCell.' 
// columnSemantic='ecore.EObject | semantic target of $column'
	
	
	static val CREATE_MAPPING_ARG_DESCRS = #[ 
		"root" -> "The semantic root element of the table.",
		"element" -> "The semantic currently edited element.",
		"container" -> "The semantic element corresponding to the view container."
	]
	static val CREATE_MAPPING_ARGS = CREATE_MAPPING_ARG_DESCRS.join(",")[ key ]

	/**
	 * Create a factory for a diagram description
	 * 
	 * @param parent of diagram
	 */
	new(Class<T> type, AbstractGroup parent, String dLabel, Class<? extends EObject> dClass) {
		super(type, parent, dLabel)
		creationTasks.add [
			domainClass = context.asDomainClass(dClass)
		]
	}
	
	/**
	 * Sets the domain class of a description.
	 * <p>
	 * EClass is resolved using businessPackages of AbstractGroup.
	 * </p>
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setDomainClass(LineMapping it, Class<? extends EObject> type) {
		domainClass = context.asDomainClass(type)
	}

	/**
	 * Sets the candidate expression of a description.
	 * <p>
	 * If domain class and/or name is not set, a derived value is provided
	 * </p>
	 * 
	 * @param it description to define
	 * @param type of the description
	 */

	def void setSemanticCandidatesExpression(LineMapping it, EReference ref) {
		semanticCandidatesExpression = ref
	}

	
	def createLabelEdit((ChangeContext)=>void operation) {
		 LabelEditTool.create [
			// Built-in variables, 
			// required to handle scope in interperter
			// (seems like a dirty hack)
			LABEL_EDIT_VARS.forEach[ v |
				variables += TableVariable.create[ name = v ]
			]
			mask = EditMaskVariables.create[ mask = "{0}" ]
			firstModelOperation = ChangeContext.create(operation)
		]
	}
	
	def createLabelEdit(Procedure3<EObject, EObject, Object> operation) {
		createLabelEdit[
			browseExpression = context.expression(params(LINE, COLUMN, EDIT_VALUE), operation)
		]
	}
	
	def addLineCreation(LineMapping it, String toolLabel, String ref, 
		(CreateLineTool)=>void init, Procedure3<EObject, EObject, EObject> action
	) {
		create += CreateLineTool.create[
			label = toolLabel
			mapping = LineMapping.ref(ref)
			variables += CREATE_MAPPING_ARG_DESCRS.map[ descr |
				TableVariable.create[
					name = descr.key
					documentation = descr.value
				]
			]
			firstModelOperation = ChangeContext.create[
				browseExpression = context.expression(CREATE_MAPPING_ARGS, action)
			]
			init?.apply(it)
		]
	}

	def addLineCreation(LineMapping it, String toolLabel, String ref, 
		Procedure3<EObject, EObject, EObject> action
	) {
		addLineCreation(toolLabel, ref, null, action)
	}


	
}
