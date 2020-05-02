/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Location</b></em>'.
 * <!-- end-user-doc -->
 *
 * <!-- begin-model-doc -->
 * where are we ?
 * 
 * <!-- end-model-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getValue <em>Value</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getParent <em>Parent</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getType <em>Type</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getLocation()
 * @model
 * @generated
 */
public interface Location extends Titled, WObject {
	/**
	 * Returns the value of the '<em><b>Value</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Value</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Value</em>' attribute.
	 * @see #setValue(String)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getLocation_Value()
	 * @model
	 * @generated
	 */
	String getValue();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getValue <em>Value</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Value</em>' attribute.
	 * @see #getValue()
	 * @generated
	 */
	void setValue(String value);

	/**
	 * Returns the value of the '<em><b>Parent</b></em>' container reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getLocations <em>Locations</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Parent</em>' container reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Parent</em>' container reference.
	 * @see #setParent(Contact)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getLocation_Parent()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Contact#getLocations
	 * @model opposite="locations" required="true" transient="false"
	 * @generated
	 */
	Contact getParent();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getParent <em>Parent</em>}' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Parent</em>' container reference.
	 * @see #getParent()
	 * @generated
	 */
	void setParent(Contact value);

	/**
	 * Returns the value of the '<em><b>Type</b></em>' attribute.
	 * The literals are from the enumeration {@link org.mypsycho.emf.modit.dw.dummyworld.LocationType}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Type</em>' attribute.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.LocationType
	 * @see #setType(LocationType)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getLocation_Type()
	 * @model
	 * @generated
	 */
	LocationType getType();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getType <em>Type</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Type</em>' attribute.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.LocationType
	 * @see #getType()
	 * @generated
	 */
	void setType(LocationType value);

} // Location
