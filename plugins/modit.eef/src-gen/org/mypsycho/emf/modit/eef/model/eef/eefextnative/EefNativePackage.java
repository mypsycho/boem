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

import org.eclipse.eef.EefPackage;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativeFactory
 * @model kind="package"
 * @generated
 */
public interface EefNativePackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "eefextnative"; //$NON-NLS-1$

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "http://www.mypsycho.org/eclipse/eef/ext/native/1.0.0"; //$NON-NLS-1$

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "eefnv"; //$NON-NLS-1$

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	EefNativePackage eINSTANCE = org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl.init();

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl <em>EEF Native Widget Description</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl#getEEFNativeWidgetDescription()
	 * @generated
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION = 0;

	/**
	 * The feature id for the '<em><b>Identifier</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__IDENTIFIER = EefPackage.EEF_WIDGET_DESCRIPTION__IDENTIFIER;

	/**
	 * The feature id for the '<em><b>Label Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION = EefPackage.EEF_WIDGET_DESCRIPTION__LABEL_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Help Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION = EefPackage.EEF_WIDGET_DESCRIPTION__HELP_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Is Enabled Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION = EefPackage.EEF_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Property Validation Rules</b></em>' reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTY_VALIDATION_RULES = EefPackage.EEF_WIDGET_DESCRIPTION__PROPERTY_VALIDATION_RULES;

	/**
	 * The feature id for the '<em><b>Value Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Edit Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Properties</b></em>' map.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 2;

	/**
	 * The feature id for the '<em><b>Style</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__STYLE = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 3;

	/**
	 * The feature id for the '<em><b>Conditional Styles</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 4;

	/**
	 * The feature id for the '<em><b>Plugin Id</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 5;

	/**
	 * The feature id for the '<em><b>Class Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 6;

	/**
	 * The number of structural features of the '<em>EEF Native Widget Description</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_DESCRIPTION_FEATURE_COUNT = EefPackage.EEF_WIDGET_DESCRIPTION_FEATURE_COUNT + 7;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetStyleImpl <em>EEF Native Widget Style</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetStyleImpl
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl#getEEFNativeWidgetStyle()
	 * @generated
	 */
	int EEF_NATIVE_WIDGET_STYLE = 1;

	/**
	 * The feature id for the '<em><b>Label Background Color Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__LABEL_BACKGROUND_COLOR_EXPRESSION = EefPackage.EEF_TEXT_STYLE__LABEL_BACKGROUND_COLOR_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Label Foreground Color Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__LABEL_FOREGROUND_COLOR_EXPRESSION = EefPackage.EEF_TEXT_STYLE__LABEL_FOREGROUND_COLOR_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Label Font Name Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__LABEL_FONT_NAME_EXPRESSION = EefPackage.EEF_TEXT_STYLE__LABEL_FONT_NAME_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Label Font Size Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__LABEL_FONT_SIZE_EXPRESSION = EefPackage.EEF_TEXT_STYLE__LABEL_FONT_SIZE_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Label Font Style Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__LABEL_FONT_STYLE_EXPRESSION = EefPackage.EEF_TEXT_STYLE__LABEL_FONT_STYLE_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Background Color Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__BACKGROUND_COLOR_EXPRESSION = EefPackage.EEF_TEXT_STYLE__BACKGROUND_COLOR_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Foreground Color Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__FOREGROUND_COLOR_EXPRESSION = EefPackage.EEF_TEXT_STYLE__FOREGROUND_COLOR_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Font Name Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__FONT_NAME_EXPRESSION = EefPackage.EEF_TEXT_STYLE__FONT_NAME_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Font Size Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__FONT_SIZE_EXPRESSION = EefPackage.EEF_TEXT_STYLE__FONT_SIZE_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Font Style Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__FONT_STYLE_EXPRESSION = EefPackage.EEF_TEXT_STYLE__FONT_STYLE_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Properties</b></em>' map.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE__PROPERTIES = EefPackage.EEF_TEXT_STYLE_FEATURE_COUNT + 0;

	/**
	 * The number of structural features of the '<em>EEF Native Widget Style</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_STYLE_FEATURE_COUNT = EefPackage.EEF_TEXT_STYLE_FEATURE_COUNT + 1;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetConditionalStyleImpl <em>EEF Native Widget Conditional Style</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetConditionalStyleImpl
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl#getEEFNativeWidgetConditionalStyle()
	 * @generated
	 */
	int EEF_NATIVE_WIDGET_CONDITIONAL_STYLE = 2;

	/**
	 * The feature id for the '<em><b>Precondition Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__PRECONDITION_EXPRESSION = EefPackage.EEF_CONDITIONAL_STYLE__PRECONDITION_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Style</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE = EefPackage.EEF_CONDITIONAL_STYLE_FEATURE_COUNT + 0;

	/**
	 * The number of structural features of the '<em>EEF Native Widget Conditional Style</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EEF_NATIVE_WIDGET_CONDITIONAL_STYLE_FEATURE_COUNT = EefPackage.EEF_CONDITIONAL_STYLE_FEATURE_COUNT + 1;


	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription <em>EEF Native Widget Description</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>EEF Native Widget Description</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription
	 * @generated
	 */
	EClass getEEFNativeWidgetDescription();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getValueExpression <em>Value Expression</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Value Expression</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getValueExpression()
	 * @see #getEEFNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getEEFNativeWidgetDescription_ValueExpression();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getEditExpression <em>Edit Expression</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Edit Expression</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getEditExpression()
	 * @see #getEEFNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getEEFNativeWidgetDescription_EditExpression();

	/**
	 * Returns the meta object for the map '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getProperties <em>Properties</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the map '<em>Properties</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getProperties()
	 * @see #getEEFNativeWidgetDescription()
	 * @generated
	 */
	EReference getEEFNativeWidgetDescription_Properties();

	/**
	 * Returns the meta object for the containment reference '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getStyle <em>Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference '<em>Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getStyle()
	 * @see #getEEFNativeWidgetDescription()
	 * @generated
	 */
	EReference getEEFNativeWidgetDescription_Style();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getConditionalStyles <em>Conditional Styles</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Conditional Styles</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getConditionalStyles()
	 * @see #getEEFNativeWidgetDescription()
	 * @generated
	 */
	EReference getEEFNativeWidgetDescription_ConditionalStyles();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getPluginId <em>Plugin Id</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Plugin Id</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getPluginId()
	 * @see #getEEFNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getEEFNativeWidgetDescription_PluginId();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getClassName <em>Class Name</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Class Name</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription#getClassName()
	 * @see #getEEFNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getEEFNativeWidgetDescription_ClassName();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle <em>EEF Native Widget Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>EEF Native Widget Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle
	 * @generated
	 */
	EClass getEEFNativeWidgetStyle();

	/**
	 * Returns the meta object for the map '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle#getProperties <em>Properties</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the map '<em>Properties</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle#getProperties()
	 * @see #getEEFNativeWidgetStyle()
	 * @generated
	 */
	EReference getEEFNativeWidgetStyle_Properties();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle <em>EEF Native Widget Conditional Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>EEF Native Widget Conditional Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle
	 * @generated
	 */
	EClass getEEFNativeWidgetConditionalStyle();

	/**
	 * Returns the meta object for the containment reference '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle#getStyle <em>Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference '<em>Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle#getStyle()
	 * @see #getEEFNativeWidgetConditionalStyle()
	 * @generated
	 */
	EReference getEEFNativeWidgetConditionalStyle_Style();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	EefNativeFactory getEefNativeFactory();

	/**
	 * <!-- begin-user-doc -->
	 * Defines literals for the meta objects that represent
	 * <ul>
	 *   <li>each class,</li>
	 *   <li>each feature of each class,</li>
	 *   <li>each enum,</li>
	 *   <li>and each data type</li>
	 * </ul>
	 * <!-- end-user-doc -->
	 * @generated
	 */
	interface Literals {
		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl <em>EEF Native Widget Description</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl
		 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl#getEEFNativeWidgetDescription()
		 * @generated
		 */
		EClass EEF_NATIVE_WIDGET_DESCRIPTION = eINSTANCE.getEEFNativeWidgetDescription();

		/**
		 * The meta object literal for the '<em><b>Value Expression</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION = eINSTANCE.getEEFNativeWidgetDescription_ValueExpression();

		/**
		 * The meta object literal for the '<em><b>Edit Expression</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION = eINSTANCE.getEEFNativeWidgetDescription_EditExpression();

		/**
		 * The meta object literal for the '<em><b>Properties</b></em>' map feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES = eINSTANCE.getEEFNativeWidgetDescription_Properties();

		/**
		 * The meta object literal for the '<em><b>Style</b></em>' containment reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference EEF_NATIVE_WIDGET_DESCRIPTION__STYLE = eINSTANCE.getEEFNativeWidgetDescription_Style();

		/**
		 * The meta object literal for the '<em><b>Conditional Styles</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES = eINSTANCE.getEEFNativeWidgetDescription_ConditionalStyles();

		/**
		 * The meta object literal for the '<em><b>Plugin Id</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID = eINSTANCE.getEEFNativeWidgetDescription_PluginId();

		/**
		 * The meta object literal for the '<em><b>Class Name</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME = eINSTANCE.getEEFNativeWidgetDescription_ClassName();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetStyleImpl <em>EEF Native Widget Style</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetStyleImpl
		 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl#getEEFNativeWidgetStyle()
		 * @generated
		 */
		EClass EEF_NATIVE_WIDGET_STYLE = eINSTANCE.getEEFNativeWidgetStyle();

		/**
		 * The meta object literal for the '<em><b>Properties</b></em>' map feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference EEF_NATIVE_WIDGET_STYLE__PROPERTIES = eINSTANCE.getEEFNativeWidgetStyle_Properties();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetConditionalStyleImpl <em>EEF Native Widget Conditional Style</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetConditionalStyleImpl
		 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl#getEEFNativeWidgetConditionalStyle()
		 * @generated
		 */
		EClass EEF_NATIVE_WIDGET_CONDITIONAL_STYLE = eINSTANCE.getEEFNativeWidgetConditionalStyle();

		/**
		 * The meta object literal for the '<em><b>Style</b></em>' containment reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE = eINSTANCE.getEEFNativeWidgetConditionalStyle_Style();

	}

} //EefNativePackage
