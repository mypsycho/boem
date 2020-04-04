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
import org.eclipse.emf.ecore.EPackage
import org.mypsycho.modit.emf.sirius.SiriusModelProvider

/**
 * Class regrouping a common adaptation of Sirius into Java and EClass reflection for group.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractGroup extends SiriusModelProvider {
	
	protected val List<EPackage> businessPackages = new ArrayList
	
	/**
	 * Construction of model using provided package.
	 * 
	 * @param descriptorPackages used by Sirius
	 */
	new (Iterable<? extends EPackage> descriptorPackages) {
		super(descriptorPackages)
	}
	
	/**
	 * Construction of model using default Sirius package.
	 */
	new () { }
	
	
	/**
	 * Remove all return carriages from an expression.
	 * <p>
	 * Odesign editor fails to handle multi-line in expression.
	 * </p>
	 * @param text to trim
	 * @param text but '\n' is 'space'
	 */
	def String trimAql(CharSequence text) {
		text.toString.replaceAll("\\R", " ") // 
	}
	
	/**
	 * Provides text used for domainClass properties from java Class.
	 * 
	 * @param type to encode
	 * @return encoded typee
	 */
	def String asDomainClass(Class<? extends EObject> type) {
		val eClass = businessPackages
			.flatMap[ EClassifiers ]
			.findFirst[ instanceClass == type ]
		if (type === null) {
			throw new UnsupportedOperationException(
			'''EClass of «type» is not defined in packages [«businessPackages.join(',')[ name ]»]''')
		}
		
		'''«eClass.EPackage.name».«eClass.name»'''
	}
	
	/**
	 * Get value from extras using key.
	 * 
	 * @param <T> expected type
	 * @param type expected
	 * @param key of value
	 * @return value
	 */
	def <T> T fromExtra(Class<T> type, String key) {
		extras.get(key) as T
	}
}