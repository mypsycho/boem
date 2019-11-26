/**
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
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getType <em>Type</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getInvolveds <em>Involveds</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity()
 * @model
 * @generated
 */
public interface Activity extends Titled, Purchase {
	/**
	 * Returns the value of the '<em><b>Type</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Type</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Type</em>' reference.
	 * @see #setType(Service)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity_Type()
	 * @model required="true"
	 * @generated
	 */
	Service getType();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getType <em>Type</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Type</em>' reference.
	 * @see #getType()
	 * @generated
	 */
	void setType(Service value);

	/**
	 * Returns the value of the '<em><b>Involveds</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Involveds</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Involveds</em>' reference.
	 * @see #setInvolveds(Job)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getActivity_Involveds()
	 * @model
	 * @generated
	 */
	Job getInvolveds();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getInvolveds <em>Involveds</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Involveds</em>' reference.
	 * @see #getInvolveds()
	 * @generated
	 */
	void setInvolveds(Job value);

} // Activity
