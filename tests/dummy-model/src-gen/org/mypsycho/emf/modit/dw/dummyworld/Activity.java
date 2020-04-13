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
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getOffer <em>Offer</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getSupportedBy <em>Supported By</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity()
 * @model
 * @generated
 */
public interface Activity extends Titled, Purchase {
	/**
	 * Returns the value of the '<em><b>Offer</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Offer</em>' reference.
	 * @see #setOffer(Service)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity_Offer()
	 * @model required="true"
	 * @generated
	 */
	Service getOffer();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getOffer <em>Offer</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Offer</em>' reference.
	 * @see #getOffer()
	 * @generated
	 */
	void setOffer(Service value);

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

} // Activity
