/**
 */
package fr.obeo.dsl.dart.dart;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Part</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Part#getPartOf <em>Part Of</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getPart()
 * @model abstract="true"
 * @generated
 */
public interface Part extends DartResource {
	/**
	 * Returns the value of the '<em><b>Part Of</b></em>' reference.
	 * It is bidirectional and its opposite is '{@link fr.obeo.dsl.dart.dart.Library#getParts <em>Parts</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Part Of</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Part Of</em>' reference.
	 * @see #setPartOf(Library)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getPart_PartOf()
	 * @see fr.obeo.dsl.dart.dart.Library#getParts
	 * @model opposite="parts"
	 * @generated
	 */
	Library getPartOf();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Part#getPartOf <em>Part Of</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Part Of</em>' reference.
	 * @see #getPartOf()
	 * @generated
	 */
	void setPartOf(Library value);

} // Part
