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

import org.eclipse.eef.EEFWidgetDescription;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>EEF Native Widget Description</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getValueExpression <em>Value Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getEditExpression <em>Edit Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getProperties <em>Properties</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getStyle <em>Style</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getConditionalStyles <em>Conditional Styles</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getPluginId <em>Plugin Id</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getClassName <em>Class Name</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription()
 * @model
 * @generated
 */
public interface EEFNativeWidgetDescription extends EEFWidgetDescription {
	/**
	 * Returns the value of the '<em><b>Value Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * Indicates how to display the input value.
	 * <!-- end-model-doc -->
	 * @return the value of the '<em>Value Expression</em>' attribute.
	 * @see #setValueExpression(String)
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription_ValueExpression()
	 * @model
	 * @generated
	 */
	String getValueExpression();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getValueExpression <em>Value Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value Expression</em>' attribute.
	 * @see #getValueExpression()
	 * @generated
	 */
	void setValueExpression(String value);

	/**
	 * Returns the value of the '<em><b>Edit Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * Defines the behavior executed when the end-user updates the value of the text field.
	 * <!-- end-model-doc -->
	 * @return the value of the '<em>Edit Expression</em>' attribute.
	 * @see #setEditExpression(String)
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription_EditExpression()
	 * @model
	 * @generated
	 */
	String getEditExpression();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getEditExpression <em>Edit Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Edit Expression</em>' attribute.
	 * @see #getEditExpression()
	 * @generated
	 */
	void setEditExpression(String value);

	/**
	 * Returns the value of the '<em><b>Properties</b></em>' map.
	 * The key is of type {@link java.lang.String},
	 * and the value is of type {@link java.lang.String},
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Properties</em>' map.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription_Properties()
	 * @model mapType="org.eclipse.emf.ecore.EStringToStringMapEntry&lt;org.eclipse.emf.ecore.EString, org.eclipse.emf.ecore.EString&gt;"
	 * @generated
	 */
	EMap<String, String> getProperties();

	/**
	 * Returns the value of the '<em><b>Style</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Style</em>' containment reference.
	 * @see #setStyle(EEFNativeWidgetStyle)
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription_Style()
	 * @model containment="true"
	 * @generated
	 */
	EEFNativeWidgetStyle getStyle();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getStyle <em>Style</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Style</em>' containment reference.
	 * @see #getStyle()
	 * @generated
	 */
	void setStyle(EEFNativeWidgetStyle value);

	/**
	 * Returns the value of the '<em><b>Conditional Styles</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Conditional Styles</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription_ConditionalStyles()
	 * @model containment="true"
	 * @generated
	 */
	EList<EEFNativeWidgetConditionalStyle> getConditionalStyles();

	/**
	 * Returns the value of the '<em><b>Plugin Id</b></em>' attribute.
	 * The default value is <code>""</code>.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Plugin Id</em>' attribute.
	 * @see #setPluginId(String)
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription_PluginId()
	 * @model default="" required="true"
	 * @generated
	 */
	String getPluginId();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getPluginId <em>Plugin Id</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Plugin Id</em>' attribute.
	 * @see #getPluginId()
	 * @generated
	 */
	void setPluginId(String value);

	/**
	 * Returns the value of the '<em><b>Class Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Class Name</em>' attribute.
	 * @see #setClassName(String)
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#getEEFNativeWidgetDescription_ClassName()
	 * @model required="true"
	 * @generated
	 */
	String getClassName();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getClassName <em>Class Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Class Name</em>' attribute.
	 * @see #getClassName()
	 * @generated
	 */
	void setClassName(String value);

} // EEFNativeWidgetDescription
