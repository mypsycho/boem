/**
 */
package fr.obeo.dsl.dart.dart;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Published</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Published#getPublishAs <em>Publish As</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getPublished()
 * @model interface="true" abstract="true"
 * @generated
 */
public interface Published extends AngularType {
	/**
	 * Returns the value of the '<em><b>Publish As</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Publish As</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Publish As</em>' attribute.
	 * @see #setPublishAs(String)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getPublished_PublishAs()
	 * @model unique="false"
	 * @generated
	 */
	String getPublishAs();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Published#getPublishAs <em>Publish As</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Publish As</em>' attribute.
	 * @see #getPublishAs()
	 * @generated
	 */
	void setPublishAs(String value);

} // Published
