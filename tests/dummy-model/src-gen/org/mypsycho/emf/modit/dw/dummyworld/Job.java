/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import java.util.Date;
import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Job</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getEmployee <em>Employee</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getSince <em>Since</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getParent <em>Parent</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getTeam <em>Team</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getJob()
 * @model
 * @generated
 */
public interface Job extends Titled {
	/**
	 * Returns the value of the '<em><b>Employee</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Employee</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Employee</em>' reference.
	 * @see #setEmployee(Person)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getJob_Employee()
	 * @model required="true"
	 * @generated
	 */
	Person getEmployee();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getEmployee <em>Employee</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Employee</em>' reference.
	 * @see #getEmployee()
	 * @generated
	 */
	void setEmployee(Person value);

	/**
	 * Returns the value of the '<em><b>Since</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Since</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Since</em>' attribute.
	 * @see #setSince(Date)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getJob_Since()
	 * @model
	 * @generated
	 */
	Date getSince();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getSince <em>Since</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Since</em>' attribute.
	 * @see #getSince()
	 * @generated
	 */
	void setSince(Date value);

	/**
	 * Returns the value of the '<em><b>Parent</b></em>' container reference.
	 * It is bidirectional and its opposite is '{@link org.mypsycho.emf.modit.dw.dummyworld.Company#getEmployees <em>Employees</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Parent</em>' container reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Parent</em>' container reference.
	 * @see #setParent(Company)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getJob_Parent()
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Company#getEmployees
	 * @model opposite="employees" transient="false"
	 * @generated
	 */
	Company getParent();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getParent <em>Parent</em>}' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Parent</em>' container reference.
	 * @see #getParent()
	 * @generated
	 */
	void setParent(Company value);

	/**
	 * Returns the value of the '<em><b>Team</b></em>' reference list.
	 * The list contents are of type {@link org.mypsycho.emf.modit.dw.dummyworld.Job}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Team</em>' reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getJob_Team()
	 * @model
	 * @generated
	 */
	EList<Job> getTeam();

} // Job
