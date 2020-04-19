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
import org.eclipse.sirius.diagram.description.AbstractNodeMapping
import org.eclipse.sirius.diagram.description.ConditionalContainerStyleDescription
import org.eclipse.sirius.diagram.description.ConditionalNodeStyleDescription
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.DiagramElementMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.style.BorderedStyleDescription
import org.eclipse.sirius.diagram.description.style.BundledImageDescription
import org.eclipse.sirius.diagram.description.style.ContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.NodeStyleDescription
import org.eclipse.sirius.diagram.description.style.WorkspaceImageDescription
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.style.BasicLabelStyleDescription

/**
 * Class regrouping a common adaptation of Sirius into Java and EClass reflection for Diagram.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractDiagram extends AbstractRepresentation<DiagramDescription> {


	/**
	 * Create a factory for a diagram description
	 * 
	 * @param parent of diagram
	 */
	new(AbstractGroup parent, String dLabel, Class<? extends EObject> dClass) {
		super(DiagramDescription, parent, dLabel)
		
		creationTasks.add[
			domainClass = context.asDomainClass(dClass)
		]
	}
		
	/**
	 * Initializes the content of the created diagram.
	 * 
	 * @param it to initialize
	 */
	override initContent(DiagramDescription it) {
		defaultLayer = Layer.create[
			name = "Default"
			initContent
		]
	}
	
	/**
	 * Initializes the content of the created diagram.
	 * 
	 * @param it to initialize
	 */
	def void initContent(Layer it)
	
	
	/**
	 * Sets the domain class of a description.
	 * <p>
	 * EClass is resolved using businessPackages of AbstractGroup.
	 * </p>
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setDomainClass(AbstractNodeMapping it, Class<? extends EObject> type) {
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
	def void setSemanticCandidatesExpression(AbstractNodeMapping it, EReference ref) {
		(it as DiagramElementMapping).semanticCandidatesExpression = ref
		if (domainClass === null) {
			domainClass = SiriusDesigns.encode(ref.EType)
		}
	}

	/**
	 * Sets the candidate expression of a description.
	 * <p>
	 * If name is not set, a derived value is provided
	 * </p>
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setSemanticCandidatesExpression(DiagramElementMapping it, EReference ref) {
		semanticCandidatesExpression = "feature:" + ref.name
		if (name === null) {
			name = ref.name
		}
	}
	
	def <T extends ContainerStyleDescription> caseContainerStyle(String condition, Class<T> type, (T)=>void init) {
		ConditionalContainerStyleDescription.create[
			predicateExpression = condition
			style = type.createStyle(init)
		]
	}
	
	def <T extends NodeStyleDescription> caseNodeStyle(String condition, Class<T> type, (T)=>void init) {
		ConditionalNodeStyleDescription.create[
			predicateExpression = condition
			style = type.createStyle(init)
		]
	}

	override initDefaultStyle(BasicLabelStyleDescription it) {
		super.initDefaultStyle(it)
		
		if (it instanceof BorderedStyleDescription) {
			borderSizeComputationExpression = "1" // default
			borderColor = SystemColor.extraRef("color:black")
		}
		
		if (it instanceof FlatContainerStyleDescription) {
			backgroundColor = SystemColor.extraRef("color:white")
		}

		if (it instanceof NodeStyleDescription) {
			sizeComputationExpression = "2"
		}

		if (it instanceof WorkspaceImageDescription) { // extends BorderedStyleDescription
			// when using a image in node, 
			// we usually don't want icon on label
			showIcon = false
			borderSizeComputationExpression = "0" // hide border
		}

		if (it instanceof BundledImageDescription) {
			color = (extras.get("color:black") as SystemColor)
		}
	}
	
}
