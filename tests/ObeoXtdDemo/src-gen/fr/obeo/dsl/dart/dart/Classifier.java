/**
 */
package fr.obeo.dsl.dart.dart;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Classifier</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Classifier#getFields <em>Fields</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.Classifier#getMetadata <em>Metadata</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getClassifier()
 * @model abstract="true"
 * @generated
 */
public interface Classifier extends Part {
	/**
	 * Returns the value of the '<em><b>Fields</b></em>' containment reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Variable}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Fields</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Fields</em>' containment reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getClassifier_Fields()
	 * @model containment="true"
	 * @generated
	 */
	EList<Variable> getFields();

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
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getClassifier_Metadata()
	 * @model
	 * @generated
	 */
	EList<Metadata> getMetadata();

} // Classifier
