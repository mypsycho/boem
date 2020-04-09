/**
 */
package fr.obeo.dsl.dart.dart;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Stylesheet</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Stylesheet#getImports <em>Imports</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.Stylesheet#isPartial <em>Partial</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getStylesheet()
 * @model
 * @generated
 */
public interface Stylesheet extends Asset {
	/**
	 * Returns the value of the '<em><b>Imports</b></em>' reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Stylesheet}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Imports</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Imports</em>' reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getStylesheet_Imports()
	 * @model
	 * @generated
	 */
	EList<Stylesheet> getImports();

	/**
	 * Returns the value of the '<em><b>Partial</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Partial</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Partial</em>' attribute.
	 * @see #isSetPartial()
	 * @see #unsetPartial()
	 * @see #setPartial(boolean)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getStylesheet_Partial()
	 * @model unique="false" unsettable="true" volatile="true" derived="true"
	 * @generated
	 */
	boolean isPartial();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Stylesheet#isPartial <em>Partial</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Partial</em>' attribute.
	 * @see #isSetPartial()
	 * @see #unsetPartial()
	 * @see #isPartial()
	 * @generated
	 */
	void setPartial(boolean value);

	/**
	 * Unsets the value of the '{@link fr.obeo.dsl.dart.dart.Stylesheet#isPartial <em>Partial</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #isSetPartial()
	 * @see #isPartial()
	 * @see #setPartial(boolean)
	 * @generated
	 */
	void unsetPartial();

	/**
	 * Returns whether the value of the '{@link fr.obeo.dsl.dart.dart.Stylesheet#isPartial <em>Partial</em>}' attribute is set.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return whether the value of the '<em>Partial</em>' attribute is set.
	 * @see #unsetPartial()
	 * @see #isPartial()
	 * @see #setPartial(boolean)
	 * @generated
	 */
	boolean isSetPartial();

} // Stylesheet
