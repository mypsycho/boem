/**
 */
package fr.obeo.dsl.dart.dart;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Package</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Package#getLicense <em>License</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.Package#getDependencies <em>Dependencies</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.Package#getProject <em>Project</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getPackage()
 * @model
 * @generated
 */
public interface Package extends Container {
	/**
	 * Returns the value of the '<em><b>License</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>License</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>License</em>' attribute.
	 * @see #setLicense(String)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getPackage_License()
	 * @model
	 * @generated
	 */
	String getLicense();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Package#getLicense <em>License</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>License</em>' attribute.
	 * @see #getLicense()
	 * @generated
	 */
	void setLicense(String value);

	/**
	 * Returns the value of the '<em><b>Dependencies</b></em>' reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Package}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Dependencies</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Dependencies</em>' reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getPackage_Dependencies()
	 * @model
	 * @generated
	 */
	EList<Package> getDependencies();

	/**
	 * Returns the value of the '<em><b>Project</b></em>' container reference.
	 * It is bidirectional and its opposite is '{@link fr.obeo.dsl.dart.dart.Project#getPackages <em>Packages</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Project</em>' container reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Project</em>' container reference.
	 * @see #setProject(Project)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getPackage_Project()
	 * @see fr.obeo.dsl.dart.dart.Project#getPackages
	 * @model opposite="packages" transient="false"
	 * @generated
	 */
	Project getProject();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Package#getProject <em>Project</em>}' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Project</em>' container reference.
	 * @see #getProject()
	 * @generated
	 */
	void setProject(Project value);

} // Package
