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
package org.mypsycho.emf.modit.eef.model.eef.eefextnative;

import org.eclipse.eef.EEFConditionalStyle;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>EEF Native Widget Conditional Style</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle#getStyle <em>Style</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetConditionalStyle()
 * @model
 * @generated
 */
public interface EEFNativeWidgetConditionalStyle extends EEFConditionalStyle {
	/**
	 * Returns the value of the '<em><b>Style</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Style</em>' containment reference.
	 * @see #setStyle(EEFNativeWidgetStyle)
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetConditionalStyle_Style()
	 * @model containment="true"
	 * @generated
	 */
	EEFNativeWidgetStyle getStyle();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle#getStyle <em>Style</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Style</em>' containment reference.
	 * @see #getStyle()
	 * @generated
	 */
	void setStyle(EEFNativeWidgetStyle value);

} // EEFNativeWidgetConditionalStyle
