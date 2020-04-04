/**
 */
package org.mypsycho.emf.modit.eef.EefExtNative.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.mypsycho.emf.modit.eef.EefExtNative.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class EefExtNativeFactoryImpl extends EFactoryImpl implements EefExtNativeFactory {
	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static EefExtNativeFactory init() {
		try {
			EefExtNativeFactory theEefExtNativeFactory = (EefExtNativeFactory)EPackage.Registry.INSTANCE.getEFactory(EefExtNativePackage.eNS_URI);
			if (theEefExtNativeFactory != null) {
				return theEefExtNativeFactory;
			}
		}
		catch (Exception exception) {
			EcorePlugin.INSTANCE.log(exception);
		}
		return new EefExtNativeFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EefExtNativeFactoryImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EObject create(EClass eClass) {
		switch (eClass.getClassifierID()) {
			case EefExtNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION: return createEEFNativeWidgetDescription();
			case EefExtNativePackage.EEF_NATIVE_WIDGET_STYLE: return createEEFNativeWidgetStyle();
			case EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE: return createEEFNativeWidgetConditionalStyle();
			default:
				throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier"); //$NON-NLS-1$ //$NON-NLS-2$
		}
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EEFNativeWidgetDescription createEEFNativeWidgetDescription() {
		EEFNativeWidgetDescriptionImpl eefNativeWidgetDescription = new EEFNativeWidgetDescriptionImpl();
		return eefNativeWidgetDescription;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EEFNativeWidgetStyle createEEFNativeWidgetStyle() {
		EEFNativeWidgetStyleImpl eefNativeWidgetStyle = new EEFNativeWidgetStyleImpl();
		return eefNativeWidgetStyle;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EEFNativeWidgetConditionalStyle createEEFNativeWidgetConditionalStyle() {
		EEFNativeWidgetConditionalStyleImpl eefNativeWidgetConditionalStyle = new EEFNativeWidgetConditionalStyleImpl();
		return eefNativeWidgetConditionalStyle;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EefExtNativePackage getEefExtNativePackage() {
		return (EefExtNativePackage)getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	@Deprecated
	public static EefExtNativePackage getPackage() {
		return EefExtNativePackage.eINSTANCE;
	}

} //EefExtNativeFactoryImpl
