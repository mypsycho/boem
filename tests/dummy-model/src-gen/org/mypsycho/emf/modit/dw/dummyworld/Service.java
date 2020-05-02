/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import org.eclipse.emf.common.util.EList;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Service</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Service#getActivities <em>Activities</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getService()
 * @model
 * @generated
 */
public interface Service extends Offer {

	/**
	 * Returns the value of the '<em><b>Activities</b></em>' containment reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Activity}.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Activities</em>' containment reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getService_Activities()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Activity#getParent
	 * @model opposite="parent" containment="true"
	 * @generated
	 */
	EList<Activity> getActivities();
} // Service
