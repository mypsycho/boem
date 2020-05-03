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

import java.util.Objects
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.sirius.table.metamodel.table.description.BackgroundStyleDescription
import org.eclipse.sirius.table.metamodel.table.description.CreateLineTool
import org.eclipse.sirius.table.metamodel.table.description.LabelEditTool
import org.eclipse.sirius.table.metamodel.table.description.LineMapping
import org.eclipse.sirius.table.metamodel.table.description.TableDescription
import org.eclipse.sirius.table.metamodel.table.description.TableVariable
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.EditMaskVariables
import org.eclipse.xtext.xbase.lib.Procedures.Procedure3

/**
 * Class adapting Sirius model into Java and EClass reflection s
 * for tables.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractTable<T extends TableDescription> extends AbstractRepresentation<T>{

	/** Namespaces for identification */
	enum Ns { // namespace for identication
		line, column, create
	}

	enum EditArg {
		/** Current DTable. */ table, 
		/** semantic target of the current DTable. */root, 
		/** DLine of the current DCell: table.DLine */line, 
		/** semantic target of line */lineSemantic, 
		/** DColumn of the current DCell: table.DColumn */column, 
		/** semantic target of column */columnSemantic, // only used by cross table
		/** feature of column */ element // only used by feature table
	}

	
	/** Value return by field edit */
	public static val EDIT_VALUE = "arg0"
	
	
	// root='ecore.EObject | semantic target of the current DTable.' 
// line='table.DLine | DLine of the current DCell.'
// lineSemantic='ecore.EObject | semantic target of $line' 
// container='ecore.EObject | semantic target of $line.' 
// column='table.DColumn | DColumn of the current DCell.' 
// columnSemantic='ecore.EObject | semantic target of $column'
	
	enum CreateMappingArg {
		root, // "The semantic root element of the table.",
		element, //"The semantic currently edited element.",
		container // The semantic element corresponding to the view container."
	}
	static val CREATE_MAPPING_ARGS = CreateMappingArg.values.params

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
		semanticCandidatesExpression = SiriusDesigns.encode(ref)
	}

	protected def line(String id, (LineMapping)=>void initializer) {
		Objects.requireNonNull(initializer)
		LineMapping.createAs(Ns.line.id(id)) [
			name = id
			initializer.apply(it)

			defaultBackground = BackgroundStyleDescription.create [ // null is grey
				backgroundColor = SystemColor.extraRef("color:white")
			]
			
		]
 	}

	protected def lineRef(String id) {
		LineMapping.ref(Ns.line.id(id))
	}

	
	def createLabelEdit((ChangeContext)=>void operation) {
		 LabelEditTool.create [
			// Built-in variables, 
			// required to handle scope in interperter
			// (seems like a dirty hack)
			EditArg.values.forEach[ arg |
				variables += TableVariable.create[ name = arg.name ]
			]
			mask = EditMaskVariables.create[ mask = "{0}" ]
			firstModelOperation = ChangeContext.create(operation)
		]
	}

	
	def createLine(String line, String toolLabel, 
		(CreateLineTool)=>void init, String action
	) {
		CreateLineTool.create[
			name = Ns.create.id(line)
			label = toolLabel
			mapping = line.lineRef
			variables += CreateMappingArg.values.map[ descr |
				TableVariable.create[
					name = descr.name
				]
			]
			firstModelOperation = ChangeContext.create[
				browseExpression = action
			]
			init?.apply(it)
		]
	}

	def createLine(String line, String toolLabel, 
		(CreateLineTool)=>void init, Procedure3<EObject, EObject, EObject> action
	) {
		line.createLine(toolLabel, init, 
			context.expression(CREATE_MAPPING_ARGS, action)
		)
	}

	def createLine(String line, String toolLabel, 
		Procedure3<EObject, EObject, EObject> action
	) {
		line.createLine(toolLabel, null, action)
	}


	
}
