/**
 */
package org.mypsycho.emf.modit.eef.EefExtNative.util;

import org.eclipse.eef.EEFConditionalStyle;
import org.eclipse.eef.EEFControlDescription;
import org.eclipse.eef.EEFTextStyle;
import org.eclipse.eef.EEFWidgetDescription;

import org.eclipse.eef.EEFWidgetStyle;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.util.Switch;

import org.mypsycho.emf.modit.eef.EefExtNative.*;

/**
 * <!-- begin-user-doc -->
 * The <b>Switch</b> for the model's inheritance hierarchy.
 * It supports the call {@link #doSwitch(EObject) doSwitch(object)}
 * to invoke the <code>caseXXX</code> method for each class of the model,
 * starting with the actual class of the object
 * and proceeding up the inheritance hierarchy
 * until a non-null result is returned,
 * which is the result of the switch.
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativePackage
 * @generated
 */
public class EefExtNativeSwitch<T> extends Switch<T> {
	/**
	 * The cached model package
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static EefExtNativePackage modelPackage;

	/**
	 * Creates an instance of the switch.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EefExtNativeSwitch() {
		if (modelPackage == null) {
			modelPackage = EefExtNativePackage.eINSTANCE;
		}
	}

	/**
	 * Checks whether this is a switch for the given package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param ePackage the package in question.
	 * @return whether this is a switch for the given package.
	 * @generated
	 */
	@Override
	protected boolean isSwitchFor(EPackage ePackage) {
		return ePackage == modelPackage;
	}

	/**
	 * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the first non-null result returned by a <code>caseXXX</code> call.
	 * @generated
	 */
	@Override
	protected T doSwitch(int classifierID, EObject theEObject) {
		switch (classifierID) {
			case EefExtNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION: {
				EEFNativeWidgetDescription eefNativeWidgetDescription = (EEFNativeWidgetDescription)theEObject;
				T result = caseEEFNativeWidgetDescription(eefNativeWidgetDescription);
				if (result == null) result = caseEEFWidgetDescription(eefNativeWidgetDescription);
				if (result == null) result = caseEEFControlDescription(eefNativeWidgetDescription);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case EefExtNativePackage.EEF_NATIVE_WIDGET_STYLE: {
				EEFNativeWidgetStyle eefNativeWidgetStyle = (EEFNativeWidgetStyle)theEObject;
				T result = caseEEFNativeWidgetStyle(eefNativeWidgetStyle);
				if (result == null) result = caseEEFTextStyle(eefNativeWidgetStyle);
				if (result == null) result = caseEEFWidgetStyle(eefNativeWidgetStyle);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE: {
				EEFNativeWidgetConditionalStyle eefNativeWidgetConditionalStyle = (EEFNativeWidgetConditionalStyle)theEObject;
				T result = caseEEFNativeWidgetConditionalStyle(eefNativeWidgetConditionalStyle);
				if (result == null) result = caseEEFConditionalStyle(eefNativeWidgetConditionalStyle);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			default: return defaultCase(theEObject);
		}
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Native Widget Description</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Native Widget Description</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFNativeWidgetDescription(EEFNativeWidgetDescription object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Native Widget Style</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Native Widget Style</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFNativeWidgetStyle(EEFNativeWidgetStyle object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Native Widget Conditional Style</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Native Widget Conditional Style</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFNativeWidgetConditionalStyle(EEFNativeWidgetConditionalStyle object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Control Description</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Control Description</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFControlDescription(EEFControlDescription object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Widget Description</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Widget Description</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFWidgetDescription(EEFWidgetDescription object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Widget Style</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Widget Style</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFWidgetStyle(EEFWidgetStyle object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Text Style</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Text Style</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFTextStyle(EEFTextStyle object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EEF Conditional Style</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EEF Conditional Style</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseEEFConditionalStyle(EEFConditionalStyle object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch, but this is the last case anyway.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject)
	 * @generated
	 */
	@Override
	public T defaultCase(EObject object) {
		return null;
	}

} //EefExtNativeSwitch
