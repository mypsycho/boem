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

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.sirius.properties.PropertiesPackage;

import org.eclipse.sirius.viewpoint.description.DescriptionPackage;

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
 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativeFactory
 * @model kind="package"
 * @generated
 */
public interface PropNativePackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "propertynative"; //$NON-NLS-1$

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "http://www.mypsycho.org/eclipse/sirius/properties/ext/native/1.0.0"; //$NON-NLS-1$

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "ppn"; //$NON-NLS-1$

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	PropNativePackage eINSTANCE = org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl.init();

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl <em>Native Widget Description</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl#getNativeWidgetDescription()
	 * @generated
	 */
	int NATIVE_WIDGET_DESCRIPTION = 0;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__NAME = PropertiesPackage.WIDGET_DESCRIPTION__NAME;

	/**
	 * The feature id for the '<em><b>Label</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__LABEL = PropertiesPackage.WIDGET_DESCRIPTION__LABEL;

	/**
	 * The feature id for the '<em><b>Documentation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__DOCUMENTATION = PropertiesPackage.WIDGET_DESCRIPTION__DOCUMENTATION;

	/**
	 * The feature id for the '<em><b>Label Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Help Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Is Enabled Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 2;

	/**
	 * The feature id for the '<em><b>Value Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 3;

	/**
	 * The feature id for the '<em><b>Edit Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 4;

	/**
	 * The feature id for the '<em><b>Properties</b></em>' map.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__PROPERTIES = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 5;

	/**
	 * The feature id for the '<em><b>Style</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__STYLE = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 6;

	/**
	 * The feature id for the '<em><b>Conditional Styles</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 7;

	/**
	 * The feature id for the '<em><b>Plugin Id</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 8;

	/**
	 * The feature id for the '<em><b>Class Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION__CLASS_NAME = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 9;

	/**
	 * The number of structural features of the '<em>Native Widget Description</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_DESCRIPTION_FEATURE_COUNT = PropertiesPackage.WIDGET_DESCRIPTION_FEATURE_COUNT + 10;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetStyleImpl <em>Native Widget Style</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetStyleImpl
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl#getNativeWidgetStyle()
	 * @generated
	 */
	int NATIVE_WIDGET_STYLE = 1;

	/**
	 * The feature id for the '<em><b>Label Font Name Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__LABEL_FONT_NAME_EXPRESSION = PropertiesPackage.TEXT_WIDGET_STYLE__LABEL_FONT_NAME_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Label Font Size Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__LABEL_FONT_SIZE_EXPRESSION = PropertiesPackage.TEXT_WIDGET_STYLE__LABEL_FONT_SIZE_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Label Background Color</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__LABEL_BACKGROUND_COLOR = PropertiesPackage.TEXT_WIDGET_STYLE__LABEL_BACKGROUND_COLOR;

	/**
	 * The feature id for the '<em><b>Label Foreground Color</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__LABEL_FOREGROUND_COLOR = PropertiesPackage.TEXT_WIDGET_STYLE__LABEL_FOREGROUND_COLOR;

	/**
	 * The feature id for the '<em><b>Label Font Format</b></em>' attribute list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__LABEL_FONT_FORMAT = PropertiesPackage.TEXT_WIDGET_STYLE__LABEL_FONT_FORMAT;

	/**
	 * The feature id for the '<em><b>Font Name Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__FONT_NAME_EXPRESSION = PropertiesPackage.TEXT_WIDGET_STYLE__FONT_NAME_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Font Size Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__FONT_SIZE_EXPRESSION = PropertiesPackage.TEXT_WIDGET_STYLE__FONT_SIZE_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Background Color</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__BACKGROUND_COLOR = PropertiesPackage.TEXT_WIDGET_STYLE__BACKGROUND_COLOR;

	/**
	 * The feature id for the '<em><b>Foreground Color</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__FOREGROUND_COLOR = PropertiesPackage.TEXT_WIDGET_STYLE__FOREGROUND_COLOR;

	/**
	 * The feature id for the '<em><b>Font Format</b></em>' attribute list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__FONT_FORMAT = PropertiesPackage.TEXT_WIDGET_STYLE__FONT_FORMAT;

	/**
	 * The feature id for the '<em><b>Properties</b></em>' map.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE__PROPERTIES = PropertiesPackage.TEXT_WIDGET_STYLE_FEATURE_COUNT + 0;

	/**
	 * The number of structural features of the '<em>Native Widget Style</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_STYLE_FEATURE_COUNT = PropertiesPackage.TEXT_WIDGET_STYLE_FEATURE_COUNT + 1;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetConditionalStyleImpl <em>Native Widget Conditional Style</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetConditionalStyleImpl
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl#getNativeWidgetConditionalStyle()
	 * @generated
	 */
	int NATIVE_WIDGET_CONDITIONAL_STYLE = 2;

	/**
	 * The feature id for the '<em><b>Predicate Expression</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_CONDITIONAL_STYLE__PREDICATE_EXPRESSION = DescriptionPackage.CONDITIONAL_STYLE_DESCRIPTION__PREDICATE_EXPRESSION;

	/**
	 * The feature id for the '<em><b>Style</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE = DescriptionPackage.CONDITIONAL_STYLE_DESCRIPTION_FEATURE_COUNT + 0;

	/**
	 * The number of structural features of the '<em>Native Widget Conditional Style</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NATIVE_WIDGET_CONDITIONAL_STYLE_FEATURE_COUNT = DescriptionPackage.CONDITIONAL_STYLE_DESCRIPTION_FEATURE_COUNT + 1;


	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription <em>Native Widget Description</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Native Widget Description</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription
	 * @generated
	 */
	EClass getNativeWidgetDescription();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getValueExpression <em>Value Expression</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Value Expression</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getValueExpression()
	 * @see #getNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getNativeWidgetDescription_ValueExpression();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getEditExpression <em>Edit Expression</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Edit Expression</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getEditExpression()
	 * @see #getNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getNativeWidgetDescription_EditExpression();

	/**
	 * Returns the meta object for the map '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getProperties <em>Properties</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the map '<em>Properties</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getProperties()
	 * @see #getNativeWidgetDescription()
	 * @generated
	 */
	EReference getNativeWidgetDescription_Properties();

	/**
	 * Returns the meta object for the containment reference '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getStyle <em>Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference '<em>Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getStyle()
	 * @see #getNativeWidgetDescription()
	 * @generated
	 */
	EReference getNativeWidgetDescription_Style();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getConditionalStyles <em>Conditional Styles</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Conditional Styles</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getConditionalStyles()
	 * @see #getNativeWidgetDescription()
	 * @generated
	 */
	EReference getNativeWidgetDescription_ConditionalStyles();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getPluginId <em>Plugin Id</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Plugin Id</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getPluginId()
	 * @see #getNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getNativeWidgetDescription_PluginId();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getClassName <em>Class Name</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Class Name</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription#getClassName()
	 * @see #getNativeWidgetDescription()
	 * @generated
	 */
	EAttribute getNativeWidgetDescription_ClassName();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetStyle <em>Native Widget Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Native Widget Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetStyle
	 * @generated
	 */
	EClass getNativeWidgetStyle();

	/**
	 * Returns the meta object for the map '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetStyle#getProperties <em>Properties</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the map '<em>Properties</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetStyle#getProperties()
	 * @see #getNativeWidgetStyle()
	 * @generated
	 */
	EReference getNativeWidgetStyle_Properties();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle <em>Native Widget Conditional Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Native Widget Conditional Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle
	 * @generated
	 */
	EClass getNativeWidgetConditionalStyle();

	/**
	 * Returns the meta object for the containment reference '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle#getStyle <em>Style</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference '<em>Style</em>'.
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle#getStyle()
	 * @see #getNativeWidgetConditionalStyle()
	 * @generated
	 */
	EReference getNativeWidgetConditionalStyle_Style();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	PropNativeFactory getPropNativeFactory();

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
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl <em>Native Widget Description</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl
		 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl#getNativeWidgetDescription()
		 * @generated
		 */
		EClass NATIVE_WIDGET_DESCRIPTION = eINSTANCE.getNativeWidgetDescription();

		/**
		 * The meta object literal for the '<em><b>Value Expression</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION = eINSTANCE.getNativeWidgetDescription_ValueExpression();

		/**
		 * The meta object literal for the '<em><b>Edit Expression</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION = eINSTANCE.getNativeWidgetDescription_EditExpression();

		/**
		 * The meta object literal for the '<em><b>Properties</b></em>' map feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference NATIVE_WIDGET_DESCRIPTION__PROPERTIES = eINSTANCE.getNativeWidgetDescription_Properties();

		/**
		 * The meta object literal for the '<em><b>Style</b></em>' containment reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference NATIVE_WIDGET_DESCRIPTION__STYLE = eINSTANCE.getNativeWidgetDescription_Style();

		/**
		 * The meta object literal for the '<em><b>Conditional Styles</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES = eINSTANCE.getNativeWidgetDescription_ConditionalStyles();

		/**
		 * The meta object literal for the '<em><b>Plugin Id</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID = eINSTANCE.getNativeWidgetDescription_PluginId();

		/**
		 * The meta object literal for the '<em><b>Class Name</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute NATIVE_WIDGET_DESCRIPTION__CLASS_NAME = eINSTANCE.getNativeWidgetDescription_ClassName();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetStyleImpl <em>Native Widget Style</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetStyleImpl
		 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl#getNativeWidgetStyle()
		 * @generated
		 */
		EClass NATIVE_WIDGET_STYLE = eINSTANCE.getNativeWidgetStyle();

		/**
		 * The meta object literal for the '<em><b>Properties</b></em>' map feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference NATIVE_WIDGET_STYLE__PROPERTIES = eINSTANCE.getNativeWidgetStyle_Properties();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetConditionalStyleImpl <em>Native Widget Conditional Style</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetConditionalStyleImpl
		 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl#getNativeWidgetConditionalStyle()
		 * @generated
		 */
		EClass NATIVE_WIDGET_CONDITIONAL_STYLE = eINSTANCE.getNativeWidgetConditionalStyle();

		/**
		 * The meta object literal for the '<em><b>Style</b></em>' containment reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE = eINSTANCE.getNativeWidgetConditionalStyle_Style();

	}

} //PropNativePackage
