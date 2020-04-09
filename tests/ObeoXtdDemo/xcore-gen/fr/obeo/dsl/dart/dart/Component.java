/**
 */
package fr.obeo.dsl.dart.dart;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Component</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.dsl.dart.dart.Component#getStylesheet <em>Stylesheet</em>}</li>
 *   <li>{@link fr.obeo.dsl.dart.dart.Component#getTemplate <em>Template</em>}</li>
 * </ul>
 *
 * @see fr.obeo.dsl.dart.dart.DartPackage#getComponent()
 * @model
 * @generated
 */
public interface Component extends Published, Decorator {
	/**
	 * Returns the value of the '<em><b>Stylesheet</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Stylesheet</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Stylesheet</em>' reference.
	 * @see #setStylesheet(Stylesheet)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getComponent_Stylesheet()
	 * @model
	 * @generated
	 */
	Stylesheet getStylesheet();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Component#getStylesheet <em>Stylesheet</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Stylesheet</em>' reference.
	 * @see #getStylesheet()
	 * @generated
	 */
	void setStylesheet(Stylesheet value);

	/**
	 * Returns the value of the '<em><b>Template</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Template</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Template</em>' reference.
	 * @see #setTemplate(HTML)
	 * @see fr.obeo.dsl.dart.dart.DartPackage#getComponent_Template()
	 * @model
	 * @generated
	 */
	HTML getTemplate();

	/**
	 * Sets the value of the '{@link fr.obeo.dsl.dart.dart.Component#getTemplate <em>Template</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Template</em>' reference.
	 * @see #getTemplate()
	 * @generated
	 */
	void setTemplate(HTML value);

} // Component
