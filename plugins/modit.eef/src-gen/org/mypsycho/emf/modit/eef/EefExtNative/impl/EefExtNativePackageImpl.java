/**
 */
package org.mypsycho.emf.modit.eef.EefExtNative.impl;

import org.eclipse.eef.EefPackage;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;

import org.eclipse.emf.ecore.impl.EPackageImpl;

import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetConditionalStyle;
import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetDescription;
import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetStyle;
import org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativeFactory;
import org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class EefExtNativePackageImpl extends EPackageImpl implements EefExtNativePackage {
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
	 * @see org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativePackage#eNS_URI
	 * @see #init()
	 * @generated
	 */
	private EefExtNativePackageImpl() {
		super(eNS_URI, EefExtNativeFactory.eINSTANCE);
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
	 * <p>This method is used to initialize {@link EefExtNativePackage#eINSTANCE} when that field is accessed.
	 * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #eNS_URI
	 * @see #createPackageContents()
	 * @see #initializePackageContents()
	 * @generated
	 */
	public static EefExtNativePackage init() {
		if (isInited) return (EefExtNativePackage)EPackage.Registry.INSTANCE.getEPackage(EefExtNativePackage.eNS_URI);

		// Obtain or create and register package
		Object registeredEefExtNativePackage = EPackage.Registry.INSTANCE.get(eNS_URI);
		EefExtNativePackageImpl theEefExtNativePackage = registeredEefExtNativePackage instanceof EefExtNativePackageImpl ? (EefExtNativePackageImpl)registeredEefExtNativePackage : new EefExtNativePackageImpl();

		isInited = true;

		// Initialize simple dependencies
		EcorePackage.eINSTANCE.eClass();
		EefPackage.eINSTANCE.eClass();

		// Create package meta-data objects
		theEefExtNativePackage.createPackageContents();

		// Initialize created meta-data
		theEefExtNativePackage.initializePackageContents();

		// Mark meta-data to indicate it can't be changed
		theEefExtNativePackage.freeze();

		// Update the registry and return the package
		EPackage.Registry.INSTANCE.put(EefExtNativePackage.eNS_URI, theEefExtNativePackage);
		return theEefExtNativePackage;
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
	public EefExtNativeFactory getEefExtNativeFactory() {
		return (EefExtNativeFactory)getEFactoryInstance();
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

		// Create resource
		createResource(eNS_URI);
	}

} //EefExtNativePackageImpl
