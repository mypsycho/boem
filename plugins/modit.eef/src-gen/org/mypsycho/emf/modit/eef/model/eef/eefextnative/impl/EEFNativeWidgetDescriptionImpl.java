/**
 *  * Copyright (c) 2020 Nicolas PERANSIN.
 *  * This program and the accompanying materials
 *  * are made available under the terms of the Eclipse Public License 2.0
 *  * which accompanies this distribution, and is available at
 *  * https://www.eclipse.org/legal/epl-2.0/
 *  *
 *  * SPDX-License-Identifier: EPL-2.0
 *  *
 *  * Contributors:
 *  *    Nicolas PERANSIN - initial API and implementation
 * 
 */
package org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl;

import java.util.Collection;

import org.eclipse.eef.impl.EEFWidgetDescriptionImpl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.InternalEList;

import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetConditionalStyle;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetStyle;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>EEF Native Widget Description</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl#getValueExpression <em>Value Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl#getEditExpression <em>Edit Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl#getProperties <em>Properties</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl#getStyle <em>Style</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl#getConditionalStyles <em>Conditional Styles</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl#getPluginId <em>Plugin Id</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.eef.eefextnative.impl.EEFNativeWidgetDescriptionImpl#getClassName <em>Class Name</em>}</li>
 * </ul>
 *
 * @generated
 */
public class EEFNativeWidgetDescriptionImpl extends EEFWidgetDescriptionImpl implements EEFNativeWidgetDescription {
	/**
	 * The default value of the '{@link #getValueExpression() <em>Value Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getValueExpression()
	 * @generated
	 * @ordered
	 */
	protected static final String VALUE_EXPRESSION_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getValueExpression() <em>Value Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getValueExpression()
	 * @generated
	 * @ordered
	 */
	protected String valueExpression = VALUE_EXPRESSION_EDEFAULT;

	/**
	 * The default value of the '{@link #getEditExpression() <em>Edit Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getEditExpression()
	 * @generated
	 * @ordered
	 */
	protected static final String EDIT_EXPRESSION_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getEditExpression() <em>Edit Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getEditExpression()
	 * @generated
	 * @ordered
	 */
	protected String editExpression = EDIT_EXPRESSION_EDEFAULT;

	/**
	 * The cached value of the '{@link #getProperties() <em>Properties</em>}' map.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getProperties()
	 * @generated
	 * @ordered
	 */
	protected EMap<String, String> properties;

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
	 * The cached value of the '{@link #getConditionalStyles() <em>Conditional Styles</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getConditionalStyles()
	 * @generated
	 * @ordered
	 */
	protected EList<EEFNativeWidgetConditionalStyle> conditionalStyles;

	/**
	 * The default value of the '{@link #getPluginId() <em>Plugin Id</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getPluginId()
	 * @generated
	 * @ordered
	 */
	protected static final String PLUGIN_ID_EDEFAULT = ""; //$NON-NLS-1$

	/**
	 * The cached value of the '{@link #getPluginId() <em>Plugin Id</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getPluginId()
	 * @generated
	 * @ordered
	 */
	protected String pluginId = PLUGIN_ID_EDEFAULT;

	/**
	 * The default value of the '{@link #getClassName() <em>Class Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getClassName()
	 * @generated
	 * @ordered
	 */
	protected static final String CLASS_NAME_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getClassName() <em>Class Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getClassName()
	 * @generated
	 * @ordered
	 */
	protected String className = CLASS_NAME_EDEFAULT;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected EEFNativeWidgetDescriptionImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return EefNativePackage.Literals.EEF_NATIVE_WIDGET_DESCRIPTION;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getValueExpression() {
		return valueExpression;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setValueExpression(String newValueExpression) {
		String oldValueExpression = valueExpression;
		valueExpression = newValueExpression;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION, oldValueExpression, valueExpression));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getEditExpression() {
		return editExpression;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setEditExpression(String newEditExpression) {
		String oldEditExpression = editExpression;
		editExpression = newEditExpression;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION, oldEditExpression, editExpression));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EMap<String, String> getProperties() {
		if (properties == null) {
			properties = new EcoreEMap<String,String>(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, this, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES);
		}
		return properties;
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
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE, oldStyle, newStyle);
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
				msgs = ((InternalEObject)style).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE, null, msgs);
			if (newStyle != null)
				msgs = ((InternalEObject)newStyle).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE, null, msgs);
			msgs = basicSetStyle(newStyle, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE, newStyle, newStyle));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EList<EEFNativeWidgetConditionalStyle> getConditionalStyles() {
		if (conditionalStyles == null) {
			conditionalStyles = new EObjectContainmentEList<EEFNativeWidgetConditionalStyle>(EEFNativeWidgetConditionalStyle.class, this, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES);
		}
		return conditionalStyles;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getPluginId() {
		return pluginId;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setPluginId(String newPluginId) {
		String oldPluginId = pluginId;
		pluginId = newPluginId;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID, oldPluginId, pluginId));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getClassName() {
		return className;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setClassName(String newClassName) {
		String oldClassName = className;
		className = newClassName;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME, oldClassName, className));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				return ((InternalEList<?>)getProperties()).basicRemove(otherEnd, msgs);
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE:
				return basicSetStyle(null, msgs);
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				return ((InternalEList<?>)getConditionalStyles()).basicRemove(otherEnd, msgs);
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
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				return getValueExpression();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				return getEditExpression();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				if (coreType) return getProperties();
				else return getProperties().map();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE:
				return getStyle();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				return getConditionalStyles();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				return getPluginId();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
				return getClassName();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				setValueExpression((String)newValue);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				setEditExpression((String)newValue);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				((EStructuralFeature.Setting)getProperties()).set(newValue);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE:
				setStyle((EEFNativeWidgetStyle)newValue);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				getConditionalStyles().clear();
				getConditionalStyles().addAll((Collection<? extends EEFNativeWidgetConditionalStyle>)newValue);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				setPluginId((String)newValue);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
				setClassName((String)newValue);
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
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				setValueExpression(VALUE_EXPRESSION_EDEFAULT);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				setEditExpression(EDIT_EXPRESSION_EDEFAULT);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				getProperties().clear();
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE:
				setStyle((EEFNativeWidgetStyle)null);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				getConditionalStyles().clear();
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				setPluginId(PLUGIN_ID_EDEFAULT);
				return;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
				setClassName(CLASS_NAME_EDEFAULT);
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
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				return VALUE_EXPRESSION_EDEFAULT == null ? valueExpression != null : !VALUE_EXPRESSION_EDEFAULT.equals(valueExpression);
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				return EDIT_EXPRESSION_EDEFAULT == null ? editExpression != null : !EDIT_EXPRESSION_EDEFAULT.equals(editExpression);
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				return properties != null && !properties.isEmpty();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__STYLE:
				return style != null;
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				return conditionalStyles != null && !conditionalStyles.isEmpty();
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				return PLUGIN_ID_EDEFAULT == null ? pluginId != null : !PLUGIN_ID_EDEFAULT.equals(pluginId);
			case EefNativePackage.EEF_NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
				return CLASS_NAME_EDEFAULT == null ? className != null : !CLASS_NAME_EDEFAULT.equals(className);
		}
		return super.eIsSet(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String toString() {
		if (eIsProxy()) return super.toString();

		StringBuilder result = new StringBuilder(super.toString());
		result.append(" (valueExpression: "); //$NON-NLS-1$
		result.append(valueExpression);
		result.append(", editExpression: "); //$NON-NLS-1$
		result.append(editExpression);
		result.append(", pluginId: "); //$NON-NLS-1$
		result.append(pluginId);
		result.append(", className: "); //$NON-NLS-1$
		result.append(className);
		result.append(')');
		return result.toString();
	}

} //EEFNativeWidgetDescriptionImpl
