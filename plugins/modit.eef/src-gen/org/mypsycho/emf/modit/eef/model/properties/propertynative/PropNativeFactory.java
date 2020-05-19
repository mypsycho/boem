/**
 *  * Copyright (c) 2020 Nicolas PERANSIN.
 *  * This program and the accompanying materials
 *  * are made available under the terms of the Eclipse Public License 2.0
 *  * which accompanies this distribution, and is available at
 *  * https://www.eclipse.org/legal/epl-2.0/
 *  *
 *  * SPDX-License-Identifier: EPL-2.0
 *  *
 *  * Contributors:
 *  *    Nicolas PERANSIN - initial API and implementation
 * 
 */
package org.mypsycho.emf.modit.eef.model.properties.propertynative;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage
 * @generated
 */
public interface PropNativeFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	PropNativeFactory eINSTANCE = org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativeFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>Native Widget Description</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Native Widget Description</em>'.
	 * @generated
	 */
	NativeWidgetDescription createNativeWidgetDescription();

	/**
	 * Returns a new object of class '<em>Native Widget Style</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Native Widget Style</em>'.
	 * @generated
	 */
	NativeWidgetStyle createNativeWidgetStyle();

	/**
	 * Returns a new object of class '<em>Native Widget Conditional Style</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Native Widget Conditional Style</em>'.
	 * @generated
	 */
	NativeWidgetConditionalStyle createNativeWidgetConditionalStyle();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	PropNativePackage getPropNativePackage();

} //PropNativeFactory
