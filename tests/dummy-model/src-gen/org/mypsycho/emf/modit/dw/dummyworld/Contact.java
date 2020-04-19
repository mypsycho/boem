/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Contact</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getLocations <em>Locations</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getOwns <em>Owns</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getParent <em>Parent</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getContact()
 * @model abstract="true"
 * @generated
 */
public interface Contact extends Named, Detailed {
	/**
	 * Returns the value of the '<em><b>Locations</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Location}.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Locations</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * 
	 * <!-- end-model-doc -->
	 * @return the value of the '<em>Locations</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getContact_Locations()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Location#getParent
	 * @model opposite="parent" containment="true" keys="name"
	 * @generated
	 */
	EList<Location> getLocations();

	/**
	 * Returns the value of the '<em><b>Owns</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Purchase}.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Purchase#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Owns</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Owns</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getContact_Owns()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Purchase#getParent
	 * @model opposite="parent" containment="true"
	 * @generated
	 */
	EList<Purchase> getOwns();

	/**
	 * Returns the value of the '<em><b>Parent</b></em>' container reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getContacts <em>Contacts</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Parent</em>' container reference.
	 * @see #setParent(Directory)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getContact_Parent()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory#getContacts
	 * @model opposite="contacts" transient="false"
	 * @generated
	 */
	Directory getParent();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getParent <em>Parent</em>}' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Parent</em>' container reference.
	 * @see #getParent()
	 * @generated
	 */
	void setParent(Directory value);

} // Contact
