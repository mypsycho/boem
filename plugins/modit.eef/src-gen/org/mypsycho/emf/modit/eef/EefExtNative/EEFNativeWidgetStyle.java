/**
 */
package org.mypsycho.emf.modit.eef.EefExtNative;

import org.eclipse.eef.EEFTextStyle;
import org.eclipse.emf.common.util.EMap;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>EEF Native Widget Style</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetStyle#getProperties <em>Properties</em>}</li>
 * </ul>
 *
 * @see org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativePackage#getEEFNativeWidgetStyle()
 * @model
 * @generated
 */
public interface EEFNativeWidgetStyle extends EEFTextStyle {
	/**
	 * Returns the value of the '<em><b>Properties</b></em>' map.
	 * The key is of type {@link java.lang.String},
	 * and the value is of type {@link java.lang.String},
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Properties</em>' map.
	 * @see org.mypsycho.emf.modit.eef.EefExtNative.EefExtNativePackage#getEEFNativeWidgetStyle_Properties()
	 * @model mapType="org.eclipse.emf.ecore.EStringToStringMapEntry&lt;org.eclipse.emf.ecore.EString, org.eclipse.emf.ecore.EString&gt;"
	 * @generated
	 */
	EMap<String, String> getProperties();

} // EEFNativeWidgetStyle
