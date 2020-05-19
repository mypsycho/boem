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

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.mypsycho.emf.modit.eef.model.eef.eefextnative.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class EefNativeFactoryImpl extends EFactoryImpl implements EefNativeFactory {
	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static EefNativeFactory init() {
		try {
			EefNativeFactory theEefNativeFactory = (EefNativeFactory)EPackage.Registry.INSTANCE.getEFactory(EefNativePackage.eNS_URI);
			if (theEefNativeFactory != null) {
				return theEefNativeFactory;
			}
		}
		catch (Exception exception) {
			EcorePlugin.INSTANCE.log(exception);
		}
		return new EefNativeFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EefNativeFactoryImpl() {
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
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION: return createEEFNativeWidgetDescription();
			case EefNativePackage.EEF_NATIVE_WIDGET_STYLE: return createEEFNativeWidgetStyle();
			case EefNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE: return createEEFNativeWidgetConditionalStyle();
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
	public EefNativePackage getEefNativePackage() {
		return (EefNativePackage)getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	@Deprecated
	public static EefNativePackage getPackage() {
		return EefNativePackage.eINSTANCE;
	}

} //EefNativeFactoryImpl
