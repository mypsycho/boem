/**
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 *  * https://www.eclipse.org/legal/epl-2.0/
 *  *
 *  * SPDX-License-Identifier: EPL-2.0
 *  *
 *  * Contributors:
 *  *    Nicolas PERANSIN - initial API and implementation
 */
package org.mypsycho.emf.modit.dw.dummyworld;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Subscription</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Subscription#getActivity <em>Activity</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getSubscription()
 * @model
 * @generated
 */
public interface Subscription extends Purchase {
	/**
	 * Returns the value of the '<em><b>Activity</b></em>' reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getCustomer <em>Customer</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Activity</em>' reference.
	 * @see #setActivity(Activity)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getSubscription_Activity()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Activity#getCustomer
	 * @model opposite="customer"
	 * @generated
	 */
	Activity getActivity();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Subscription#getActivity <em>Activity</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Activity</em>' reference.
	 * @see #getActivity()
	 * @generated
	 */
	void setActivity(Activity value);

} // Subscription
