/*
 * 
 */
package org.mypsycho.emf.modit.dw.dummyworld;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Activity</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getParent <em>Parent</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getSupportedBy <em>Supported By</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getCustomer <em>Customer</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity()
 * @model
 * @generated
 */
public interface Activity extends Detailed {
	/**
	 * Returns the value of the '<em><b>Parent</b></em>' container reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Service#getActivities <em>Activities</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Parent</em>' container reference.
	 * @see #setParent(Service)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity_Parent()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Service#getActivities
	 * @model opposite="activities" required="true" transient="false"
	 * @generated
	 */
	Service getParent();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getParent <em>Parent</em>}' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Parent</em>' container reference.
	 * @see #getParent()
	 * @generated
	 */
	void setParent(Service value);

	/**
	 * Returns the value of the '<em><b>Supported By</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Supported By</em>' reference.
	 * @see #setSupportedBy(Job)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity_SupportedBy()
	 * @model
	 * @generated
	 */
	Job getSupportedBy();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getSupportedBy <em>Supported By</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Supported By</em>' reference.
	 * @see #getSupportedBy()
	 * @generated
	 */
	void setSupportedBy(Job value);

	/**
	 * Returns the value of the '<em><b>Customer</b></em>' reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Subscription#getActivity <em>Activity</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Customer</em>' reference.
	 * @see #setCustomer(Subscription)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity_Customer()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Subscription#getActivity
	 * @model opposite="activity"
	 * @generated
	 */
	Subscription getCustomer();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getCustomer <em>Customer</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Customer</em>' reference.
	 * @see #getCustomer()
	 * @generated
	 */
	void setCustomer(Subscription value);

} // Activity
