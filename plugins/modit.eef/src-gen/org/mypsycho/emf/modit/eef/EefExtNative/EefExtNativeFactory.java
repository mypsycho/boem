/**
 */
package org.mypsycho.emf.modit.eef.EefExtNative;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativePackage
 * @generated
 */
public interface EefExtNativeFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	EefExtNativeFactory eINSTANCE = org.mypsycho.emf.modit.eef.EefExtNative.impl.EefExtNativeFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>EEF Native Widget Description</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>EEF Native Widget Description</em>'.
	 * @generated
	 */
	EEFNativeWidgetDescription createEEFNativeWidgetDescription();

	/**
	 * Returns a new object of class '<em>EEF Native Widget Style</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>EEF Native Widget Style</em>'.
	 * @generated
	 */
	EEFNativeWidgetStyle createEEFNativeWidgetStyle();

	/**
	 * Returns a new object of class '<em>EEF Native Widget Conditional Style</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>EEF Native Widget Conditional Style</em>'.
	 * @generated
	 */
	EEFNativeWidgetConditionalStyle createEEFNativeWidgetConditionalStyle();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	EefExtNativePackage getEefExtNativePackage();

} //EefExtNativeFactory
