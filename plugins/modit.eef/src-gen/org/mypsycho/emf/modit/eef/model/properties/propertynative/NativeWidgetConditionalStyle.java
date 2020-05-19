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

import org.eclipse.sirius.viewpoint.description.ConditionalStyleDescription;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Native Widget Conditional Style</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle#getStyle <em>Style</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage#getNativeWidgetConditionalStyle()
 * @model
 * @generated
 */
public interface NativeWidgetConditionalStyle extends ConditionalStyleDescription {
	/**
	 * Returns the value of the '<em><b>Style</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Style</em>' containment reference.
	 * @see #setStyle(NativeWidgetStyle)
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage#getNativeWidgetConditionalStyle_Style()
	 * @model containment="true"
	 * @generated
	 */
	NativeWidgetStyle getStyle();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle#getStyle <em>Style</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Style</em>' containment reference.
	 * @see #getStyle()
	 * @generated
	 */
	void setStyle(NativeWidgetStyle value);

} // NativeWidgetConditionalStyle
