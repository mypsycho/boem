/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Directory</b></em>'.
 * <!-- end-user-doc -->
 *
 * <!-- begin-model-doc -->
 * Group of social interactions.
 * <!-- end-model-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getContacts <em>Contacts</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getDirectories <em>Directories</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getParent <em>Parent</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getDirectory()
 * @model
 * @generated
 */
public interface Directory extends Titled {
	/**
	 * Returns the value of the '<em><b>Contacts</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Contact}.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Contacts</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Contacts</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getDirectory_Contacts()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Contact#getParent
	 * @model opposite="parent" containment="true"
	 * @generated
	 */
	EList<Contact> getContacts();

	/**
	 * Returns the value of the '<em><b>Directories</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Directory}.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Directories</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getDirectory_Directories()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory#getParent
	 * @model opposite="parent" containment="true" keys="name"
	 * @generated
	 */
	EList<Directory> getDirectories();

	/**
	 * Returns the value of the '<em><b>Parent</b></em>' container reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getDirectories <em>Directories</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Parent</em>' container reference.
	 * @see #setParent(Directory)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getDirectory_Parent()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory#getDirectories
	 * @model opposite="directories" transient="false"
	 * @generated
	 */
	Directory getParent();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getParent <em>Parent</em>}' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Parent</em>' container reference.
	 * @see #getParent()
	 * @generated
	 */
	void setParent(Directory value);

} // Directory
