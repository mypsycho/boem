/**
 */
package fr.obeo.dsl.dart.dart;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Resource</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.DartResource#getDocumentation <em>Documentation</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.DartResource#getImports <em>Imports</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.DartResource#getExports <em>Exports</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getDartResource()
 * @model abstract="true"
 * @generated
 */
public interface DartResource extends Asset {
	/**
	 * Returns the value of the '<em><b>Documentation</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Documentation</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Documentation</em>' attribute.
	 * @see #setDocumentation(String)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getDartResource_Documentation()
	 * @model
	 * @generated
	 */
	String getDocumentation();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.DartResource#getDocumentation <em>Documentation</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Documentation</em>' attribute.
	 * @see #getDocumentation()
	 * @generated
	 */
	void setDocumentation(String value);

	/**
	 * Returns the value of the '<em><b>Imports</b></em>' containment reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Import}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Imports</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Imports</em>' containment reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getDartResource_Imports()
	 * @model containment="true"
	 * @generated
	 */
	EList<Import> getImports();

	/**
	 * Returns the value of the '<em><b>Exports</b></em>' containment reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Export}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Exports</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Exports</em>' containment reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getDartResource_Exports()
	 * @model containment="true"
	 * @generated
	 */
	EList<Export> getExports();

} // DartResource
