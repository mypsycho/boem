/**
 */
package org.mypsycho.emf.modit.eef.EefExtNative.impl;

import org.eclipse.eef.impl.EEFConditionalStyleImpl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetConditionalStyle;
import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetStyle;
import org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>EEF Native Widget Conditional Style</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.eef.EefExtNative.impl.EEFNativeWidgetConditionalStyleImpl#getStyle <em>Style</em>}</li>
 * </ul>
 *
 * @generated
 */
public class EEFNativeWidgetConditionalStyleImpl extends EEFConditionalStyleImpl implements EEFNativeWidgetConditionalStyle {
	/**
	 * The cached value of the '{@link #getStyle() <em>Style</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getStyle()
	 * @generated
	 * @ordered
	 */
	protected EEFNativeWidgetStyle style;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected EEFNativeWidgetConditionalStyleImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return EefExtNativePackage.Literals.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EEFNativeWidgetStyle getStyle() {
		return style;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetStyle(EEFNativeWidgetStyle newStyle, NotificationChain msgs) {
		EEFNativeWidgetStyle oldStyle = style;
		style = newStyle;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE, oldStyle, newStyle);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setStyle(EEFNativeWidgetStyle newStyle) {
		if (newStyle != style) {
			NotificationChain msgs = null;
			if (style != null)
				msgs = ((InternalEObject)style).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE, null, msgs);
			if (newStyle != null)
				msgs = ((InternalEObject)newStyle).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE, null, msgs);
			msgs = basicSetStyle(newStyle, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE, newStyle, newStyle));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE:
				return basicSetStyle(null, msgs);
		}
		return super.eInverseRemove(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE:
				return getStyle();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE:
				setStyle((EEFNativeWidgetStyle)newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE:
				setStyle((EEFNativeWidgetStyle)null);
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case EefExtNativePackage.EEF_NATIVE_WIDGET_CONDITIONAL_STYLE__STYLE:
				return style != null;
		}
		return super.eIsSet(featureID);
	}

} //EEFNativeWidgetConditionalStyleImpl
