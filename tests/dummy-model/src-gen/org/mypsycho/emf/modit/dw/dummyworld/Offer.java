/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import java.math.BigDecimal;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Offer</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Offer#getPrice <em>Price</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Offer#getParent <em>Parent</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getOffer()
 * @model abstract="true"
 * @generated
 */
public interface Offer extends Titled {
	/**
	 * Returns the value of the '<em><b>Price</b></em>' attribute list.
	 * The list contents are of type {@link java.math.BigDecimal}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Price</em>' attribute list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Price</em>' attribute list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getOffer_Price()
	 * @model
	 * @generated
	 */
	EList<BigDecimal> getPrice();

	/**
	 * Returns the value of the '<em><b>Parent</b></em>' container reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Company#getOffers <em>Offers</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Parent</em>' container reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Parent</em>' container reference.
	 * @see #setParent(Company)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getOffer_Parent()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Company#getOffers
	 * @model opposite="offers" transient="false"
	 * @generated
	 */
	Company getParent();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Offer#getParent <em>Parent</em>}' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Parent</em>' container reference.
	 * @see #getParent()
	 * @generated
	 */
	void setParent(Company value);

} // Offer
