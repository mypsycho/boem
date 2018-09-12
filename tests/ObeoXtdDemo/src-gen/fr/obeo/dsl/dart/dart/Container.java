/**
 */
package fr.obeo.dsl.dart.dart;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Container</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Container#getAssets <em>Assets</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getContainer()
 * @model abstract="true"
 * @generated
 */
public interface Container extends Named {
	/**
	 * Returns the value of the '<em><b>Assets</b></em>' containment reference list.
	 * The list contents are of type {@link fr.obeo.dsl.dart.dart.Asset}.
	 * It is bidirectional and its opposite is '{@link fr.obeo.dsl.dart.dart.Asset#getContainer <em>Container</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Assets</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Assets</em>' containment reference list.
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getContainer_Assets()
	 * @see fr.obeo.dsl.dart.dart.Asset#getContainer
	 * @model opposite="container" containment="true"
	 * @generated
	 */
	EList<Asset> getAssets();

} // Container
