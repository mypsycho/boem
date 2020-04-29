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

import java.util.ArrayList
import java.util.List
import org.eclipse.emf.ecore.EObject
import org.eclipse.sirius.viewpoint.description.RepresentationDescription
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.style.BasicLabelStyleDescription
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.sirius.SiriusModelProvider
import java.util.Objects

/**
 * Adaptation of Sirius model into Java and EClass reflections API
 * for representation.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractRepresentation<T extends RepresentationDescription> {

	/** Main container */
	protected val extension AbstractGroup context
	
	/** Factory of Sirius elements */
	protected val extension EModIt factory

	val Class<T> contentType
	
	protected val List<(T)=>void> creationTasks = new ArrayList(5)

	/**
	 * Create a factory for a diagram description
	 * 
	 * @param parent of diagram
	 */
	new(Class<T> type, AbstractGroup parent, String dLabel) {
		this.context = parent
		this.factory = parent.factory
	
		contentType = type
		creationTasks.add[ label = dLabel ] // xtend fails to infere '+=' .
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
	def <R extends EObject> R ref(Class<R> type, (T)=>R path) {
		factory.ref(type, contentAlias) [ path.apply(it as T) ]
	}
	
	/**
	 * Creates a diagram description
	 * 
	 * @return new description
	 */
	def T createContent() {
		contentType.createAs(contentAlias) [
			creationTasks.forEach[task | task.apply(it) ]
			name = contentAlias
			metamodel += context.businessPackages
			initContent
		]
	}
	
	/**
	 * Initializes the content of the created table.
	 * 
	 * @param it to initialize
	 */
	def void initContent(T it)
	
	/**
	 * Returns a reference from extra elements.
	 * 
	 * @param type of referenced element (strict, no inheritance)
	 * @param key of reference
	 * @return element
	 */
	def <T> T extraRef(Class<T> type, String key) {
		context.extraRef(type, key)
	}

	/**
	 * Creates a Style with common default values.
	 * 
	 * @param <T> type of style
	 * @param it type of Style
	 * @param init custom initialization of style
	 * @return created Style
	 */
	protected def <T extends BasicLabelStyleDescription> T createStyle(Class<T> it, (T)=>void init) {
		create[
			initDefaultStyle
			init?.apply(it)
		]
	}
	
	/**
	 * Creates a Style with common default values.
	 * 
	 * @param <T> type of style
	 * @param type of Style
	 * @return created Style
	 */
	protected def <T extends BasicLabelStyleDescription> T createStyle(Class<T> it) {
		// explicit it is required to avoid infinite loop
		it.createStyle(null)
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
		labelColor = SystemColor.extraRef("color:black")
		
		labelExpression = context.itemProviderLabel
	}
	
	/**
	 * Creates an identification with provided category.
	 * <p>
	 * This method has no side-effect, no id is reserved.
	 * </p>
	 * 
	 * @param cat of identification
	 * @param path 
	 */
	protected def String id(Enum<?> cat, String path) {
		'''«cat.name»:«contentAlias».«Objects.requireNonNull(path).toLowerCase.replace(" ", "_")»'''
	}
	
	/**
	 * Create a string from expression from a sequence of parameter names.
	 * 
	 * @param params names
	 * @return string of parameters
	 */
	static def params(String... params) { 
		params.join(SiriusModelProvider.PARAM_SEP)
	}
	
	/**
	 * Create a string from expression from a sequence of parameter names.
	 * 
	 * @param params names
	 * @return string of parameters
	 */
	static def params(Object... params) { 
		params.join(SiriusModelProvider.PARAM_SEP)
	}
}
