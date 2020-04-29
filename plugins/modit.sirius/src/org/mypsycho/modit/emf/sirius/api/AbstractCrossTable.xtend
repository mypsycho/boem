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
import org.eclipse.sirius.table.metamodel.table.description.CrossTableDescription
import org.eclipse.sirius.table.metamodel.table.description.ElementColumnMapping
import org.eclipse.sirius.table.metamodel.table.description.IntersectionMapping
import org.eclipse.xtext.xbase.lib.Procedures.Procedure3

/**
 * Adaptation of Sirius model into Java and EClass reflections API
 * for Cross tables.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractCrossTable extends AbstractTable<CrossTableDescription> {

	/**
	 * Create a factory for a diagram description
	 * 
	 * @param parent of diagram
	 */
	new(AbstractGroup parent, String dLabel, Class<? extends EObject> dClass) {
		super(CrossTableDescription, parent, dLabel, dClass)
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
	def void setDomainClass(ElementColumnMapping it, Class<? extends EObject> type) {
		domainClass = context.asDomainClass(type)
	}
	
	def void setDirectEdit(IntersectionMapping it, Procedure3<? extends EObject, ? extends EObject, String> operation) {
		directEdit = createLabelEdit[
			browseExpression = context.expression(
				params(EditArg.lineSemantic, EditArg.columnSemantic, EDIT_VALUE), 
				operation
			)
		]
	}
	

}
