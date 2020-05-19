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
package org.mypsycho.emf.modit.eef.model.eef.eefextnative.util;

import org.eclipse.eef.EEFConditionalStyle;
import org.eclipse.eef.EEFControlDescription;
import org.eclipse.eef.EEFTextStyle;
import org.eclipse.eef.EEFWidgetDescription;
import org.eclipse.eef.EEFWidgetStyle;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

import org.mypsycho.emf.modit.eef.model.eef.eefextnative.*;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage
 * @generated
 */
public class EefNativeAdapterFactory extends AdapterFactoryImpl {
	/**
	 * The cached model package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static EefNativePackage modelPackage;

	/**
	 * Creates an instance of the adapter factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EefNativeAdapterFactory() {
		if (modelPackage == null) {
			modelPackage = EefNativePackage.eINSTANCE;
		}
	}

	/**
	 * Returns whether this factory is applicable for the type of the object.
	 * <!-- begin-user-doc -->
	 * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
	 * <!-- end-user-doc -->
	 * @return whether this factory is applicable for the type of the object.
	 * @generated
	 */
	@Override
	public boolean isFactoryForType(Object object) {
		if (object == modelPackage) {
			return true;
		}
		if (object instanceof EObject) {
			return ((EObject)object).eClass().getEPackage() == modelPackage;
		}
		return false;
	}

	/**
	 * The switch that delegates to the <code>createXXX</code> methods.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected EefNativeSwitch<Adapter> modelSwitch =
		new EefNativeSwitch<Adapter>() {
			@Override
			public Adapter caseEEFNativeWidgetDescription(EEFNativeWidgetDescription object) {
				return createEEFNativeWidgetDescriptionAdapter();
			}
			@Override
			public Adapter caseEEFNativeWidgetStyle(EEFNativeWidgetStyle object) {
				return createEEFNativeWidgetStyleAdapter();
			}
			@Override
			public Adapter caseEEFNativeWidgetConditionalStyle(EEFNativeWidgetConditionalStyle object) {
				return createEEFNativeWidgetConditionalStyleAdapter();
			}
			@Override
			public Adapter caseEEFControlDescription(EEFControlDescription object) {
				return createEEFControlDescriptionAdapter();
			}
			@Override
			public Adapter caseEEFWidgetDescription(EEFWidgetDescription object) {
				return createEEFWidgetDescriptionAdapter();
			}
			@Override
			public Adapter caseEEFWidgetStyle(EEFWidgetStyle object) {
				return createEEFWidgetStyleAdapter();
			}
			@Override
			public Adapter caseEEFTextStyle(EEFTextStyle object) {
				return createEEFTextStyleAdapter();
			}
			@Override
			public Adapter caseEEFConditionalStyle(EEFConditionalStyle object) {
				return createEEFConditionalStyleAdapter();
			}
			@Override
			public Adapter defaultCase(EObject object) {
				return createEObjectAdapter();
			}
		};

	/**
	 * Creates an adapter for the <code>target</code>.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param target the object to adapt.
	 * @return the adapter for the <code>target</code>.
	 * @generated
	 */
	@Override
	public Adapter createAdapter(Notifier target) {
		return modelSwitch.doSwitch((EObject)target);
	}


	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription <em>EEF Native Widget Description</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription
	 * @generated
	 */
	public Adapter createEEFNativeWidgetDescriptionAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle <em>EEF Native Widget Style</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle
	 * @generated
	 */
	public Adapter createEEFNativeWidgetStyleAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle <em>EEF Native Widget Conditional Style</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle
	 * @generated
	 */
	public Adapter createEEFNativeWidgetConditionalStyleAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.eclipse.eef.EEFControlDescription <em>EEF Control Description</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.eclipse.eef.EEFControlDescription
	 * @generated
	 */
	public Adapter createEEFControlDescriptionAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.eclipse.eef.EEFWidgetDescription <em>EEF Widget Description</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.eclipse.eef.EEFWidgetDescription
	 * @generated
	 */
	public Adapter createEEFWidgetDescriptionAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.eclipse.eef.EEFWidgetStyle <em>EEF Widget Style</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.eclipse.eef.EEFWidgetStyle
	 * @generated
	 */
	public Adapter createEEFWidgetStyleAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.eclipse.eef.EEFTextStyle <em>EEF Text Style</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.eclipse.eef.EEFTextStyle
	 * @generated
	 */
	public Adapter createEEFTextStyleAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.eclipse.eef.EEFConditionalStyle <em>EEF Conditional Style</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.eclipse.eef.EEFConditionalStyle
	 * @generated
	 */
	public Adapter createEEFConditionalStyleAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for the default case.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @generated
	 */
	public Adapter createEObjectAdapter() {
		return null;
	}

} //EefNativeAdapterFactory
