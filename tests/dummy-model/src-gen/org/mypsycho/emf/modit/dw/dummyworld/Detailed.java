/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import java.util.Map;
import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Detailed</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Detailed#getDescription <em>Description</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.Detailed#getHints <em>Hints</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getDetailed()
 * @model
 * @generated
 */
public interface Detailed extends WObject {
	/**
	 * Returns the value of the '<em><b>Description</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Description</em>' attribute.
	 * @see #setDescription(String)
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getDetailed_Description()
	 * @model
	 * @generated
	 */
	String getDescription();

	/**
	 * Sets the value of the '{@link org.mypsycho.emf.modit.dw.dummyworld.Detailed#getDescription <em>Description</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Description</em>' attribute.
	 * @see #getDescription()
	 * @generated
	 */
	void setDescription(String value);

	/**
	 * Returns the value of the '<em><b>Hints</b></em>' reference list.
	 * The list contents are of type {@link java.util.Map.Entry}<code>&lt;java.lang.String, java.lang.String&gt;</code>.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Hints</em>' reference list.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getDetailed_Hints()
	 * @model mapType="org.eclipse.emf.ecore.EStringToStringMapEntry&lt;org.eclipse.emf.ecore.EString, org.eclipse.emf.ecore.EString&gt;"
	 *        annotation="http://www.eclipse.org/emf/2002/GenModel"
	 * @generated
	 */
	EList<Map.Entry<String, String>> getHints();

} // Detailed
