/**
 */
package fr.obeo.dsl.dart.dart;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Project</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Project#getPackages <em>Packages</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getProject()
 * @model
 * @generated
 */
public interface Project extends Named {
	/**
	 * Returns the value of the '<em><b>Packages</b></em>' containment reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Package}.
	 * It is bidirectional and its opposite is '{@link fr.obeo.dsl.dart.dart.Package#getProject <em>Project</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Packages</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Packages</em>' containment reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getProject_Packages()
	 * @see fr.obeo.dsl.dart.dart.Package#getProject
	 * @model opposite="project" containment="true"
	 * @generated
	 */
	EList<fr.obeo.dsl.dart.dart.Package> getPackages();

} // Project
