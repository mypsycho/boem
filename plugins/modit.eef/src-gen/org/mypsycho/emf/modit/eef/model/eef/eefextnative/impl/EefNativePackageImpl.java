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
package org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl;

import org.eclipse.eef.EefPackage;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;

import org.eclipse.emf.ecore.impl.EPackageImpl;

import org.eclipse.sirius.properties.PropertiesPackage;

import org.eclipse.sirius.viewpoint.ViewpointPackage;

import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativeFactory;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage;

import org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage;

import org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.PropNativePackageImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class EefNativePackageImpl extends EPackageImpl implements EefNativePackage {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass eefNativeWidgetDescriptionEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass eefNativeWidgetStyleEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass eefNativeWidgetConditionalStyleEClass = null;

	/**
	 * Creates an instance of the model <b>Package</b>, registered with
	 * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
	 * package URI value.
	 * <p>Note: the correct way to create the package is via the static
	 * factory method {@link #init init()}, which also performs
	 * initialization of the package, or returns the registered package,
	 * if one already exists.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.eclipse.emf.ecore.EPackage.Registry
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage#eNS_URI
	 * @see #init()
	 * @generated
	 */
	private EefNativePackageImpl() {
		super(eNS_URI, EefNativeFactory.eINSTANCE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private static boolean isInited = false;

	/**
	 * Creates, registers, and initializes the <b>Package</b> for this model, and for any others upon which it depends.
	 *
	 * <p>This method is used to initialize {@link EefNativePackage#eINSTANCE} when that field is accessed.
	 * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #eNS_URI
	 * @see #createPackageContents()
	 * @see #initializePackageContents()
	 * @generated
	 */
	public static EefNativePackage init() {
		if (isInited) return (EefNativePackage)EPackage.Registry.INSTANCE.getEPackage(EefNativePackage.eNS_URI);

		// Obtain or create and register package
		Object registeredEefNativePackage = EPackage.Registry.INSTANCE.get(eNS_URI);
		EefNativePackageImpl theEefNativePackage = registeredEefNativePackage instanceof EefNativePackageImpl ? (EefNativePackageImpl)registeredEefNativePackage : new EefNativePackageImpl();

		isInited = true;

		// Initialize simple dependencies
		EcorePackage.eINSTANCE.eClass();
		EefPackage.eINSTANCE.eClass();
		PropertiesPackage.eINSTANCE.eClass();
		ViewpointPackage.eINSTANCE.eClass();

		// Obtain or create and register interdependencies
		Object registeredPackage = EPackage.Registry.INSTANCE.getEPackage(PropNativePackage.eNS_URI);
		PropNativePackageImpl thePropNativePackage = (PropNativePackageImpl)(registeredPackage instanceof PropNativePackageImpl ? registeredPackage : PropNativePackage.eINSTANCE);

		// Create package meta-data objects
		theEefNativePackage.createPackageContents();
		thePropNativePackage.createPackageContents();

		// Initialize created meta-data
		theEefNativePackage.initializePackageContents();
		thePropNativePackage.initializePackageContents();

		// Mark meta-data to indicate it can't be changed
		theEefNativePackage.freeze();

		// Update the registry and return the package
		EPackage.Registry.INSTANCE.put(EefNativePackage.eNS_URI, theEefNativePackage);
		return theEefNativePackage;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EClass getEEFNativeWidgetDescription() {
		return eefNativeWidgetDescriptionEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getEEFNativeWidgetDescription_ValueExpression() {
		return (EAttribute)eefNativeWidgetDescriptionEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getEEFNativeWidgetDescription_EditExpression() {
		return (EAttribute)eefNativeWidgetDescriptionEClass.getEStructuralFeatures().get(1);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getEEFNativeWidgetDescription_Properties() {
		return (EReference)eefNativeWidgetDescriptionEClass.getEStructuralFeatures().get(2);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getEEFNativeWidgetDescription_Style() {
		return (EReference)eefNativeWidgetDescriptionEClass.getEStructuralFeatures().get(3);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getEEFNativeWidgetDescription_ConditionalStyles() {
		return (EReference)eefNativeWidgetDescriptionEClass.getEStructuralFeatures().get(4);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getEEFNativeWidgetDescription_PluginId() {
		return (EAttribute)eefNativeWidgetDescriptionEClass.getEStructuralFeatures().get(5);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getEEFNativeWidgetDescription_ClassName() {
		return (EAttribute)eefNativeWidgetDescriptionEClass.getEStructuralFeatures().get(6);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EClass getEEFNativeWidgetStyle() {
		return eefNativeWidgetStyleEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getEEFNativeWidgetStyle_Properties() {
		return (EReference)eefNativeWidgetStyleEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EClass getEEFNativeWidgetConditionalStyle() {
		return eefNativeWidgetConditionalStyleEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getEEFNativeWidgetConditionalStyle_Style() {
		return (EReference)eefNativeWidgetConditionalStyleEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EefNativeFactory getEefNativeFactory() {
		return (EefNativeFactory)getEFactoryInstance();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private boolean isCreated = false;

	/**
	 * Creates the meta-model objects for the package.  This method is
	 * guarded to have no affect on any invocation but its first.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void createPackageContents() {
		if (isCreated) return;
		isCreated = true;

		// Create classes and their features
		eefNativeWidgetDescriptionEClass = createEClass(EEF_NATIVE_WIDGET_DESCRIPTION);
		createEAttribute(eefNativeWidgetDescriptionEClass, EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION);
		createEAttribute(eefNativeWidgetDescriptionEClass, EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION);
		createEReference(eefNativeWidgetDescriptionEClass, EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES);
		createEReference(eefNativeWidgetDescriptionEClass, EEF_NATIVE_WIDGET_DESCRIPTION__STYLE);
		createEReference(eefNativeWidgetDescriptionEClass, EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES);
		createEAttribute(eefNativeWidgetDescriptionEClass, EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID);
		createEAttribute(eefNativeWidgetDescriptionEClass, EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME);

		eefNativeWidgetStyleEClass = createEClass(EEF_NATIVE_WIDGET_STYLE);
		createEReference(eefNativeWidgetStyleEClass, EEF_NATIVE_WIDGET_STYLE__PROPERTIES);

		eefNativeWidgetConditionalStyleEClass = createEClass(EEF_NATIVE_WIDGET_CONDITIONAL_STYLE);
		createEReference(eefNativeWidgetConditionalStyleEClass, EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private boolean isInitialized = false;

	/**
	 * Complete the initialization of the package and its meta-model.  This
	 * method is guarded to have no affect on any invocation but its first.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void initializePackageContents() {
		if (isInitialized) return;
		isInitialized = true;

		// Initialize package
		setName(eNAME);
		setNsPrefix(eNS_PREFIX);
		setNsURI(eNS_URI);

		// Obtain other dependent packages
		EefPackage theEefPackage = (EefPackage)EPackage.Registry.INSTANCE.getEPackage(EefPackage.eNS_URI);
		EcorePackage theEcorePackage = (EcorePackage)EPackage.Registry.INSTANCE.getEPackage(EcorePackage.eNS_URI);

		// Create type parameters

		// Set bounds for type parameters

		// Add supertypes to classes
		eefNativeWidgetDescriptionEClass.getESuperTypes().add(theEefPackage.getEEFWidgetDescription());
		eefNativeWidgetStyleEClass.getESuperTypes().add(theEefPackage.getEEFTextStyle());
		eefNativeWidgetConditionalStyleEClass.getESuperTypes().add(theEefPackage.getEEFConditionalStyle());

		// Initialize classes and features; add operations and parameters
		initEClass(eefNativeWidgetDescriptionEClass, EEFNativeWidgetDescription.class, "EEFNativeWidgetDescription", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS); //$NON-NLS-1$
		initEAttribute(getEEFNativeWidgetDescription_ValueExpression(), theEcorePackage.getEString(), "valueExpression", null, 0, 1, EEFNativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEAttribute(getEEFNativeWidgetDescription_EditExpression(), theEcorePackage.getEString(), "editExpression", null, 0, 1, EEFNativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEReference(getEEFNativeWidgetDescription_Properties(), theEcorePackage.getEStringToStringMapEntry(), null, "properties", null, 0, -1, EEFNativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEReference(getEEFNativeWidgetDescription_Style(), this.getEEFNativeWidgetStyle(), null, "style", null, 0, 1, EEFNativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEReference(getEEFNativeWidgetDescription_ConditionalStyles(), this.getEEFNativeWidgetConditionalStyle(), null, "conditionalStyles", null, 0, -1, EEFNativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEAttribute(getEEFNativeWidgetDescription_PluginId(), theEcorePackage.getEString(), "pluginId", "", 1, 1, EEFNativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$ //$NON-NLS-2$
		initEAttribute(getEEFNativeWidgetDescription_ClassName(), theEcorePackage.getEString(), "className", null, 1, 1, EEFNativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$

		initEClass(eefNativeWidgetStyleEClass, EEFNativeWidgetStyle.class, "EEFNativeWidgetStyle", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS); //$NON-NLS-1$
		initEReference(getEEFNativeWidgetStyle_Properties(), theEcorePackage.getEStringToStringMapEntry(), null, "properties", null, 0, -1, EEFNativeWidgetStyle.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$

		initEClass(eefNativeWidgetConditionalStyleEClass, EEFNativeWidgetConditionalStyle.class, "EEFNativeWidgetConditionalStyle", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS); //$NON-NLS-1$
		initEReference(getEEFNativeWidgetConditionalStyle_Style(), this.getEEFNativeWidgetStyle(), null, "style", null, 0, 1, EEFNativeWidgetConditionalStyle.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
	}

} //EefNativePackageImpl
