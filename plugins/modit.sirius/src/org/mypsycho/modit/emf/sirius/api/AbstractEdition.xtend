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
import org.eclipse.emf.ecore.EClass
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.sirius.SiriusModelProvider

/**
 * Adaptation of Sirius model into Java and EClass reflections API
 * for representation.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractEdition {

	/** Main container */
	protected val extension AbstractGroup context
	
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
	 * Creates an identification with provided category.
	 * <p>
	 * This method has no side-effect, no id is reserved.
	 * </p>
	 * 
	 * @param cat of identification
	 * @param path 
	 */
	protected def String id(EClass cat, String path) {
		cat.name.id(path)
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
		cat.name.id(path)
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
	protected def String id(String category, String path) {
		'''«category»:«contentAlias».«Objects.requireNonNull(path).toLowerCase.replace(" ", "_")»'''
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
