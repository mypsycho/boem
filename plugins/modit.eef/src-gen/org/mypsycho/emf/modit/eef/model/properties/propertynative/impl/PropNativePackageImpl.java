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
package org.mypsycho.emf.modit.eef.model.properties.propertynative.impl;

import org.eclipse.eef.EefPackage;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;

import org.eclipse.emf.ecore.impl.EPackageImpl;

import org.eclipse.sirius.properties.PropertiesPackage;

import org.eclipse.sirius.viewpoint.ViewpointPackage;

import org.eclipse.sirius.viewpoint.description.DescriptionPackage;

import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage;

import org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EefNativePackageImpl;

import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetStyle;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativeFactory;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class PropNativePackageImpl extends EPackageImpl implements PropNativePackage {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass nativeWidgetDescriptionEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass nativeWidgetStyleEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass nativeWidgetConditionalStyleEClass = null;

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
	 * @see org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage#eNS_URI
	 * @see #init()
	 * @generated
	 */
	private PropNativePackageImpl() {
		super(eNS_URI, PropNativeFactory.eINSTANCE);
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
	 * <p>This method is used to initialize {@link PropNativePackage#eINSTANCE} when that field is accessed.
	 * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #eNS_URI
	 * @see #createPackageContents()
	 * @see #initializePackageContents()
	 * @generated
	 */
	public static PropNativePackage init() {
		if (isInited) return (PropNativePackage)EPackage.Registry.INSTANCE.getEPackage(PropNativePackage.eNS_URI);

		// Obtain or create and register package
		Object registeredPropNativePackage = EPackage.Registry.INSTANCE.get(eNS_URI);
		PropNativePackageImpl thePropNativePackage = registeredPropNativePackage instanceof PropNativePackageImpl ? (PropNativePackageImpl)registeredPropNativePackage : new PropNativePackageImpl();

		isInited = true;

		// Initialize simple dependencies
		EcorePackage.eINSTANCE.eClass();
		EefPackage.eINSTANCE.eClass();
		PropertiesPackage.eINSTANCE.eClass();
		ViewpointPackage.eINSTANCE.eClass();

		// Obtain or create and register interdependencies
		Object registeredPackage = EPackage.Registry.INSTANCE.getEPackage(EefNativePackage.eNS_URI);
		EefNativePackageImpl theEefNativePackage = (EefNativePackageImpl)(registeredPackage instanceof EefNativePackageImpl ? registeredPackage : EefNativePackage.eINSTANCE);

		// Create package meta-data objects
		thePropNativePackage.createPackageContents();
		theEefNativePackage.createPackageContents();

		// Initialize created meta-data
		thePropNativePackage.initializePackageContents();
		theEefNativePackage.initializePackageContents();

		// Mark meta-data to indicate it can't be changed
		thePropNativePackage.freeze();

		// Update the registry and return the package
		EPackage.Registry.INSTANCE.put(PropNativePackage.eNS_URI, thePropNativePackage);
		return thePropNativePackage;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EClass getNativeWidgetDescription() {
		return nativeWidgetDescriptionEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getNativeWidgetDescription_ValueExpression() {
		return (EAttribute)nativeWidgetDescriptionEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getNativeWidgetDescription_EditExpression() {
		return (EAttribute)nativeWidgetDescriptionEClass.getEStructuralFeatures().get(1);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getNativeWidgetDescription_Properties() {
		return (EReference)nativeWidgetDescriptionEClass.getEStructuralFeatures().get(2);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getNativeWidgetDescription_Style() {
		return (EReference)nativeWidgetDescriptionEClass.getEStructuralFeatures().get(3);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getNativeWidgetDescription_ConditionalStyles() {
		return (EReference)nativeWidgetDescriptionEClass.getEStructuralFeatures().get(4);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getNativeWidgetDescription_PluginId() {
		return (EAttribute)nativeWidgetDescriptionEClass.getEStructuralFeatures().get(5);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EAttribute getNativeWidgetDescription_ClassName() {
		return (EAttribute)nativeWidgetDescriptionEClass.getEStructuralFeatures().get(6);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EClass getNativeWidgetStyle() {
		return nativeWidgetStyleEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getNativeWidgetStyle_Properties() {
		return (EReference)nativeWidgetStyleEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EClass getNativeWidgetConditionalStyle() {
		return nativeWidgetConditionalStyleEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EReference getNativeWidgetConditionalStyle_Style() {
		return (EReference)nativeWidgetConditionalStyleEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public PropNativeFactory getPropNativeFactory() {
		return (PropNativeFactory)getEFactoryInstance();
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
		nativeWidgetDescriptionEClass = createEClass(NATIVE_WIDGET_DESCRIPTION);
		createEAttribute(nativeWidgetDescriptionEClass, NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION);
		createEAttribute(nativeWidgetDescriptionEClass, NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION);
		createEReference(nativeWidgetDescriptionEClass, NATIVE_WIDGET_DESCRIPTION__PROPERTIES);
		createEReference(nativeWidgetDescriptionEClass, NATIVE_WIDGET_DESCRIPTION__STYLE);
		createEReference(nativeWidgetDescriptionEClass, NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES);
		createEAttribute(nativeWidgetDescriptionEClass, NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID);
		createEAttribute(nativeWidgetDescriptionEClass, NATIVE_WIDGET_DESCRIPTION__CLASS_NAME);

		nativeWidgetStyleEClass = createEClass(NATIVE_WIDGET_STYLE);
		createEReference(nativeWidgetStyleEClass, NATIVE_WIDGET_STYLE__PROPERTIES);

		nativeWidgetConditionalStyleEClass = createEClass(NATIVE_WIDGET_CONDITIONAL_STYLE);
		createEReference(nativeWidgetConditionalStyleEClass, NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE);
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
		EefNativePackage theEefNativePackage = (EefNativePackage)EPackage.Registry.INSTANCE.getEPackage(EefNativePackage.eNS_URI);
		PropertiesPackage thePropertiesPackage = (PropertiesPackage)EPackage.Registry.INSTANCE.getEPackage(PropertiesPackage.eNS_URI);
		DescriptionPackage theDescriptionPackage = (DescriptionPackage)EPackage.Registry.INSTANCE.getEPackage(DescriptionPackage.eNS_URI);
		EcorePackage theEcorePackage = (EcorePackage)EPackage.Registry.INSTANCE.getEPackage(EcorePackage.eNS_URI);

		// Add subpackages
		getESubpackages().add(theEefNativePackage);

		// Create type parameters

		// Set bounds for type parameters

		// Add supertypes to classes
		nativeWidgetDescriptionEClass.getESuperTypes().add(thePropertiesPackage.getWidgetDescription());
		nativeWidgetDescriptionEClass.getESuperTypes().add(thePropertiesPackage.getAbstractWidgetDescription());
		nativeWidgetStyleEClass.getESuperTypes().add(thePropertiesPackage.getTextWidgetStyle());
		nativeWidgetConditionalStyleEClass.getESuperTypes().add(theDescriptionPackage.getConditionalStyleDescription());

		// Initialize classes and features; add operations and parameters
		initEClass(nativeWidgetDescriptionEClass, NativeWidgetDescription.class, "NativeWidgetDescription", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS); //$NON-NLS-1$
		initEAttribute(getNativeWidgetDescription_ValueExpression(), theDescriptionPackage.getInterpretedExpression(), "valueExpression", null, 0, 1, NativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEAttribute(getNativeWidgetDescription_EditExpression(), theEcorePackage.getEString(), "editExpression", null, 0, 1, NativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEReference(getNativeWidgetDescription_Properties(), theEcorePackage.getEStringToStringMapEntry(), null, "properties", null, 0, -1, NativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEReference(getNativeWidgetDescription_Style(), this.getNativeWidgetStyle(), null, "style", null, 0, 1, NativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEReference(getNativeWidgetDescription_ConditionalStyles(), this.getNativeWidgetConditionalStyle(), null, "conditionalStyles", null, 0, -1, NativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$
		initEAttribute(getNativeWidgetDescription_PluginId(), theEcorePackage.getEString(), "pluginId", "", 1, 1, NativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$ //$NON-NLS-2$
		initEAttribute(getNativeWidgetDescription_ClassName(), theEcorePackage.getEString(), "className", null, 1, 1, NativeWidgetDescription.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$

		initEClass(nativeWidgetStyleEClass, NativeWidgetStyle.class, "NativeWidgetStyle", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS); //$NON-NLS-1$
		initEReference(getNativeWidgetStyle_Properties(), theEcorePackage.getEStringToStringMapEntry(), null, "properties", null, 0, -1, NativeWidgetStyle.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$

		initEClass(nativeWidgetConditionalStyleEClass, NativeWidgetConditionalStyle.class, "NativeWidgetConditionalStyle", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS); //$NON-NLS-1$
		initEReference(getNativeWidgetConditionalStyle_Style(), this.getNativeWidgetStyle(), null, "style", null, 0, 1, NativeWidgetConditionalStyle.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED); //$NON-NLS-1$

		// Create resource
		createResource(eNS_URI);
	}

} //PropNativePackageImpl
