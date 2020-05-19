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

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.mypsycho.emf.modit.eef.model.properties.propertynative.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class PropNativeFactoryImpl extends EFactoryImpl implements PropNativeFactory {
	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static PropNativeFactory init() {
		try {
			PropNativeFactory thePropNativeFactory = (PropNativeFactory)EPackage.Registry.INSTANCE.getEFactory(PropNativePackage.eNS_URI);
			if (thePropNativeFactory != null) {
				return thePropNativeFactory;
			}
		}
		catch (Exception exception) {
			EcorePlugin.INSTANCE.log(exception);
		}
		return new PropNativeFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public PropNativeFactoryImpl() {
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
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION: return createNativeWidgetDescription();
			case PropNativePackage.NATIVE_WIDGET_STYLE: return createNativeWidgetStyle();
			case PropNativePackage.NATIVE_WIDGET_CONDITIONAL_STYLE: return createNativeWidgetConditionalStyle();
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
	public NativeWidgetDescription createNativeWidgetDescription() {
		NativeWidgetDescriptionImpl nativeWidgetDescription = new NativeWidgetDescriptionImpl();
		return nativeWidgetDescription;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NativeWidgetStyle createNativeWidgetStyle() {
		NativeWidgetStyleImpl nativeWidgetStyle = new NativeWidgetStyleImpl();
		return nativeWidgetStyle;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NativeWidgetConditionalStyle createNativeWidgetConditionalStyle() {
		NativeWidgetConditionalStyleImpl nativeWidgetConditionalStyle = new NativeWidgetConditionalStyleImpl();
		return nativeWidgetConditionalStyle;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public PropNativePackage getPropNativePackage() {
		return (PropNativePackage)getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	@Deprecated
	public static PropNativePackage getPackage() {
		return PropNativePackage.eINSTANCE;
	}

} //PropNativeFactoryImpl
