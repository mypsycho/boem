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
package org.mypsycho.emf.modit.eef.model.properties.propertynative.impl;

import java.util.Collection;

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

import org.eclipse.sirius.properties.AbstractWidgetDescription;
import org.eclipse.sirius.properties.PropertiesPackage;
import org.eclipse.sirius.properties.impl.WidgetDescriptionImpl;

import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetStyle;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Native Widget Description</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getLabelExpression <em>Label Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getHelpExpression <em>Help Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getIsEnabledExpression <em>Is Enabled Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getValueExpression <em>Value Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getEditExpression <em>Edit Expression</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getProperties <em>Properties</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getStyle <em>Style</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getConditionalStyles <em>Conditional Styles</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getPluginId <em>Plugin Id</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.eef.model.properties.propertynative.impl.NativeWidgetDescriptionImpl#getClassName <em>Class Name</em>}</li>
 * </ul>
 *
 * @generated
 */
public class NativeWidgetDescriptionImpl extends WidgetDescriptionImpl implements NativeWidgetDescription {
	/**
	 * The default value of the '{@link #getLabelExpression() <em>Label Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getLabelExpression()
	 * @generated
	 * @ordered
	 */
	protected static final String LABEL_EXPRESSION_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getLabelExpression() <em>Label Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getLabelExpression()
	 * @generated
	 * @ordered
	 */
	protected String labelExpression = LABEL_EXPRESSION_EDEFAULT;

	/**
	 * The default value of the '{@link #getHelpExpression() <em>Help Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getHelpExpression()
	 * @generated
	 * @ordered
	 */
	protected static final String HELP_EXPRESSION_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getHelpExpression() <em>Help Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getHelpExpression()
	 * @generated
	 * @ordered
	 */
	protected String helpExpression = HELP_EXPRESSION_EDEFAULT;

	/**
	 * The default value of the '{@link #getIsEnabledExpression() <em>Is Enabled Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getIsEnabledExpression()
	 * @generated
	 * @ordered
	 */
	protected static final String IS_ENABLED_EXPRESSION_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getIsEnabledExpression() <em>Is Enabled Expression</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getIsEnabledExpression()
	 * @generated
	 * @ordered
	 */
	protected String isEnabledExpression = IS_ENABLED_EXPRESSION_EDEFAULT;

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
	protected NativeWidgetStyle style;

	/**
	 * The cached value of the '{@link #getConditionalStyles() <em>Conditional Styles</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getConditionalStyles()
	 * @generated
	 * @ordered
	 */
	protected EList<NativeWidgetConditionalStyle> conditionalStyles;

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
	protected NativeWidgetDescriptionImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return PropNativePackage.Literals.NATIVE_WIDGET_DESCRIPTION;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getLabelExpression() {
		return labelExpression;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setLabelExpression(String newLabelExpression) {
		String oldLabelExpression = labelExpression;
		labelExpression = newLabelExpression;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION, oldLabelExpression, labelExpression));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getHelpExpression() {
		return helpExpression;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setHelpExpression(String newHelpExpression) {
		String oldHelpExpression = helpExpression;
		helpExpression = newHelpExpression;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION, oldHelpExpression, helpExpression));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getIsEnabledExpression() {
		return isEnabledExpression;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setIsEnabledExpression(String newIsEnabledExpression) {
		String oldIsEnabledExpression = isEnabledExpression;
		isEnabledExpression = newIsEnabledExpression;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION, oldIsEnabledExpression, isEnabledExpression));
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
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION, oldValueExpression, valueExpression));
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
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION, oldEditExpression, editExpression));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EMap<String, String> getProperties() {
		if (properties == null) {
			properties = new EcoreEMap<String,String>(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, this, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PROPERTIES);
		}
		return properties;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NativeWidgetStyle getStyle() {
		return style;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetStyle(NativeWidgetStyle newStyle, NotificationChain msgs) {
		NativeWidgetStyle oldStyle = style;
		style = newStyle;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE, oldStyle, newStyle);
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
	public void setStyle(NativeWidgetStyle newStyle) {
		if (newStyle != style) {
			NotificationChain msgs = null;
			if (style != null)
				msgs = ((InternalEObject)style).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE, null, msgs);
			if (newStyle != null)
				msgs = ((InternalEObject)newStyle).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE, null, msgs);
			msgs = basicSetStyle(newStyle, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE, newStyle, newStyle));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EList<NativeWidgetConditionalStyle> getConditionalStyles() {
		if (conditionalStyles == null) {
			conditionalStyles = new EObjectContainmentEList<NativeWidgetConditionalStyle>(NativeWidgetConditionalStyle.class, this, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES);
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
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID, oldPluginId, pluginId));
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
			eNotify(new ENotificationImpl(this, Notification.SET, PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CLASS_NAME, oldClassName, className));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				return ((InternalEList<?>)getProperties()).basicRemove(otherEnd, msgs);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE:
				return basicSetStyle(null, msgs);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
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
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION:
				return getLabelExpression();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION:
				return getHelpExpression();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION:
				return getIsEnabledExpression();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				return getValueExpression();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				return getEditExpression();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				if (coreType) return getProperties();
				else return getProperties().map();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE:
				return getStyle();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				return getConditionalStyles();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				return getPluginId();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
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
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION:
				setLabelExpression((String)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION:
				setHelpExpression((String)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION:
				setIsEnabledExpression((String)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				setValueExpression((String)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				setEditExpression((String)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				((EStructuralFeature.Setting)getProperties()).set(newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE:
				setStyle((NativeWidgetStyle)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				getConditionalStyles().clear();
				getConditionalStyles().addAll((Collection<? extends NativeWidgetConditionalStyle>)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				setPluginId((String)newValue);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
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
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION:
				setLabelExpression(LABEL_EXPRESSION_EDEFAULT);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION:
				setHelpExpression(HELP_EXPRESSION_EDEFAULT);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION:
				setIsEnabledExpression(IS_ENABLED_EXPRESSION_EDEFAULT);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				setValueExpression(VALUE_EXPRESSION_EDEFAULT);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				setEditExpression(EDIT_EXPRESSION_EDEFAULT);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				getProperties().clear();
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE:
				setStyle((NativeWidgetStyle)null);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				getConditionalStyles().clear();
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				setPluginId(PLUGIN_ID_EDEFAULT);
				return;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
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
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION:
				return LABEL_EXPRESSION_EDEFAULT == null ? labelExpression != null : !LABEL_EXPRESSION_EDEFAULT.equals(labelExpression);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION:
				return HELP_EXPRESSION_EDEFAULT == null ? helpExpression != null : !HELP_EXPRESSION_EDEFAULT.equals(helpExpression);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION:
				return IS_ENABLED_EXPRESSION_EDEFAULT == null ? isEnabledExpression != null : !IS_ENABLED_EXPRESSION_EDEFAULT.equals(isEnabledExpression);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__VALUE_EXPRESSION:
				return VALUE_EXPRESSION_EDEFAULT == null ? valueExpression != null : !VALUE_EXPRESSION_EDEFAULT.equals(valueExpression);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__EDIT_EXPRESSION:
				return EDIT_EXPRESSION_EDEFAULT == null ? editExpression != null : !EDIT_EXPRESSION_EDEFAULT.equals(editExpression);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PROPERTIES:
				return properties != null && !properties.isEmpty();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__STYLE:
				return style != null;
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CONDITIONAL_STYLES:
				return conditionalStyles != null && !conditionalStyles.isEmpty();
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__PLUGIN_ID:
				return PLUGIN_ID_EDEFAULT == null ? pluginId != null : !PLUGIN_ID_EDEFAULT.equals(pluginId);
			case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__CLASS_NAME:
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
	public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
		if (baseClass == AbstractWidgetDescription.class) {
			switch (derivedFeatureID) {
				case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION: return PropertiesPackage.ABSTRACT_WIDGET_DESCRIPTION__LABEL_EXPRESSION;
				case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION: return PropertiesPackage.ABSTRACT_WIDGET_DESCRIPTION__HELP_EXPRESSION;
				case PropNativePackage.NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION: return PropertiesPackage.ABSTRACT_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION;
				default: return -1;
			}
		}
		return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
		if (baseClass == AbstractWidgetDescription.class) {
			switch (baseFeatureID) {
				case PropertiesPackage.ABSTRACT_WIDGET_DESCRIPTION__LABEL_EXPRESSION: return PropNativePackage.NATIVE_WIDGET_DESCRIPTION__LABEL_EXPRESSION;
				case PropertiesPackage.ABSTRACT_WIDGET_DESCRIPTION__HELP_EXPRESSION: return PropNativePackage.NATIVE_WIDGET_DESCRIPTION__HELP_EXPRESSION;
				case PropertiesPackage.ABSTRACT_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION: return PropNativePackage.NATIVE_WIDGET_DESCRIPTION__IS_ENABLED_EXPRESSION;
				default: return -1;
			}
		}
		return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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
		result.append(" (labelExpression: "); //$NON-NLS-1$
		result.append(labelExpression);
		result.append(", helpExpression: "); //$NON-NLS-1$
		result.append(helpExpression);
		result.append(", isEnabledExpression: "); //$NON-NLS-1$
		result.append(isEnabledExpression);
		result.append(", valueExpression: "); //$NON-NLS-1$
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

} //NativeWidgetDescriptionImpl
