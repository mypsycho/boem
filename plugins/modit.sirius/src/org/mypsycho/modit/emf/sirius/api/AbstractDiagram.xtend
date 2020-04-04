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
import org.eclipse.sirius.diagram.description.AbstractNodeMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.style.BorderedStyleDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.NodeStyleDescription
import org.eclipse.sirius.diagram.description.style.WorkspaceImageDescription
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.style.BasicLabelStyleDescription
import org.mypsycho.modit.emf.EModIt

/**
 * Class regrouping a common adaptation of Sirius into Java and EClass reflection for Diagram.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractDiagram {

	/** Main container */
	protected val AbstractGroup context
	
	/** Factory of Sirius elements */
	protected val extension EModIt factory

	/**
	 * Create a factory for a diagram description
	 * 
	 * @param parent of diagram
	 */
	new(AbstractGroup parent) {
		this.context = parent
		this.factory = parent.factory
	}
	
	/**
	 * Returns alias for the created descriptor.
	 * <p>
	 * Default implementation is based on class name.
	 * </p>
	 * 
	 * @return alias
	 */
	protected def getContentAlias() {
		getClass().simpleName
	}
	
	
	/**
	 * Gets a reference from current diagram.
	 * 
	 * @param <R> result type
	 * @param type to return
	 * @param path in diagram
	 */
	def <R extends EObject> R ref(Class<R> type, (DiagramDescription)=>R path) {
		type.ref(contentAlias) [ path.apply(it as DiagramDescription) ]
	}
	
	/**
	 * Creates a diagram description
	 * 
	 * @return new description
	 */
	def DiagramDescription createContent() {
		DiagramDescription.createAs(contentAlias) [
			name = contentAlias
			initContent
		]
	}
	
	/**
	 * Initializes the content of the created diagram.
	 * 
	 * @param it to initialize
	 */
	def abstract void initContent(DiagramDescription it)
	
	def getExtras() { context.extras }
	
	def <T> T fromExtra(Class<T> type, String key) {
		context.fromExtra(type, key)
	}
	
	/**
	 * Sets the domain class of a description.
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setDomainClass(DiagramDescription it, Class<? extends EObject> type) {
		domainClass = context.asDomainClass(type)
	}
	
	/**
	 * Sets the domain class of a description.
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setDomainClass(AbstractNodeMapping it, Class<? extends EObject> type) {
		domainClass = context.asDomainClass(type)
	}
	
	/**
	 * Remove all return carriages from an expression.
	 * <p>
	 * Odesign editor fails to handle multi-line in expression.
	 * </p>
	 * @param text to trim
	 * @param text but '\n' is 'space'
	 */
	def String trimAql(CharSequence text) {
		context.trimAql(text)
	}

	/**
	 * Creates a Style with common default values.
	 * 
	 * @param <T> type of style
	 * @param type of Style
	 * @param init custom initialization of style
	 * @return created Style
	 */
	protected def <T extends BasicLabelStyleDescription> T createStyle(Class<T> type, (T)=>void init) {
		type.create[
			initDefaultStyle
			init?.apply(it)
		]
	}
	
	/**
	 * Initialize a Style with common default values.
	 * 
	 * @param <T> type of style
	 * @param type of Style
	 * @param init custom initialization of style
	 * @return created Style
	 */
	protected def void initDefaultStyle(BasicLabelStyleDescription it) {
		labelSize = 10 // ODesign is provide 12, but eclipse default is Segoe:9
		labelColor = SystemColor.fromExtra("color:black")
		
		if (it instanceof BorderedStyleDescription) {
			borderSizeComputationExpression = "1" // default
			borderColor = SystemColor.fromExtra("color:black")
		}
		
		if (it instanceof FlatContainerStyleDescription) {
			backgroundColor = SystemColor.fromExtra("color:white")
		}
		if (it instanceof NodeStyleDescription) {
			sizeComputationExpression = "2"
		}
		if (it instanceof WorkspaceImageDescription) {
			// when using a image in node, 
			// we usually don't want icon on label
			showIcon = false
		}
	}
	
}
