/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import java.math.BigDecimal;

import java.util.Date;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Good</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getOffer <em>Offer</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getBought <em>Bought</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getCost <em>Cost</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getGood()
 * @model
 * @generated
 */
public interface Good extends Detailed, Purchase {
	/**
	 * Returns the value of the '<em><b>Offer</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Offer</em>' reference.
	 * @see #setOffer(Product)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getGood_Offer()
	 * @model
	 * @generated
	 */
	Product getOffer();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getOffer <em>Offer</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Offer</em>' reference.
	 * @see #getOffer()
	 * @generated
	 */
	void setOffer(Product value);

	/**
	 * Returns the value of the '<em><b>Bought</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Bought</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Bought</em>' attribute.
	 * @see #setBought(Date)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getGood_Bought()
	 * @model
	 * @generated
	 */
	Date getBought();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getBought <em>Bought</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Bought</em>' attribute.
	 * @see #getBought()
	 * @generated
	 */
	void setBought(Date value);

	/**
	 * Returns the value of the '<em><b>Cost</b></em>' attribute list.
	 * The list contents are of type {@link java.math.BigDecimal}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Cost</em>' attribute list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Cost</em>' attribute list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getGood_Cost()
	 * @model
	 * @generated
	 */
	EList<BigDecimal> getCost();

} // Good
