/**
 */
package fr.obeo.dsl.dart.dart;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Constructor</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Constructor#isConstant <em>Constant</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.Constructor#getBody <em>Body</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.Constructor#getMetadata <em>Metadata</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getConstructor()
 * @model
 * @generated
 */
public interface Constructor extends EObject {
	/**
	 * Returns the value of the '<em><b>Constant</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Constant</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Constant</em>' attribute.
	 * @see #setConstant(boolean)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getConstructor_Constant()
	 * @model unique="false"
	 * @generated
	 */
	boolean isConstant();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Constructor#isConstant <em>Constant</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Constant</em>' attribute.
	 * @see #isConstant()
	 * @generated
	 */
	void setConstant(boolean value);

	/**
	 * Returns the value of the '<em><b>Body</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Body</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Body</em>' attribute.
	 * @see #setBody(String)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getConstructor_Body()
	 * @model unique="false"
	 * @generated
	 */
	String getBody();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Constructor#getBody <em>Body</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Body</em>' attribute.
	 * @see #getBody()
	 * @generated
	 */
	void setBody(String value);

	/**
	 * Returns the value of the '<em><b>Metadata</b></em>' reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Metadata}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Metadata</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Metadata</em>' reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getConstructor_Metadata()
	 * @model
	 * @generated
	 */
	EList<Metadata> getMetadata();

} // Constructor
