/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Company</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Company#getEmployees <em>Employees</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Company#getOffers <em>Offers</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getCompany()
 * @model
 * @generated
 */
public interface Company extends Contact, Titled {
	/**
	 * Returns the value of the '<em><b>Employees</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Job}.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Employees</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Employees</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getCompany_Employees()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Job#getParent
	 * @model opposite="parent" containment="true"
	 * @generated
	 */
	EList<Job> getEmployees();

	/**
	 * Returns the value of the '<em><b>Offers</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Offer}.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Offer#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Offers</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Offers</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getCompany_Offers()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Offer#getParent
	 * @model opposite="parent" containment="true" keys="name"
	 * @generated
	 */
	EList<Offer> getOffers();

} // Company
