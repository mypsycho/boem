/**
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 *  * https://www.eclipse.org/legal/epl-2.0/
 *  *
 *  * SPDX-License-Identifier: EPL-2.0
 *  *
 *  * Contributors:
 *  *    Nicolas PERANSIN - initial API and implementation
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.eclipse.emf.common.util.Enumerator;

/**
 * <!-- begin-user-doc -->
 * A representation of the literals of the enumeration '<em><b>Location Type</b></em>',
 * and utility methods for working with them.
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage#getLocationType()
 * @model
 * @generated
 */
public enum LocationType implements Enumerator {
	/**
	 * The '<em><b>Other</b></em>' literal object.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #OTHER_VALUE
	 * @generated
	 * @ordered
	 */
	OTHER(0, "other", "other"), //$NON-NLS-1$ //$NON-NLS-2$

	/**
	 * The '<em><b>Url</b></em>' literal object.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #URL_VALUE
	 * @generated
	 * @ordered
	 */
	URL(1, "url", "url"), //$NON-NLS-1$ //$NON-NLS-2$

	/**
	 * The '<em><b>Phone</b></em>' literal object.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #PHONE_VALUE
	 * @generated
	 * @ordered
	 */
	PHONE(2, "phone", "phone"), //$NON-NLS-1$ //$NON-NLS-2$

	/**
	 * The '<em><b>Address</b></em>' literal object.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #ADDRESS_VALUE
	 * @generated
	 * @ordered
	 */
	ADDRESS(3, "address", "address"), //$NON-NLS-1$ //$NON-NLS-2$

	/**
	 * The '<em><b>Gps</b></em>' literal object.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #GPS_VALUE
	 * @generated
	 * @ordered
	 */
	GPS(4, "gps", "gps"); //$NON-NLS-1$ //$NON-NLS-2$

	/**
	 * The '<em><b>Other</b></em>' literal value.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #OTHER
	 * @model name="other"
	 * @generated
	 * @ordered
	 */
	public static final int OTHER_VALUE = 0;

	/**
	 * The '<em><b>Url</b></em>' literal value.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #URL
	 * @model name="url"
	 * @generated
	 * @ordered
	 */
	public static final int URL_VALUE = 1;

	/**
	 * The '<em><b>Phone</b></em>' literal value.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #PHONE
	 * @model name="phone"
	 * @generated
	 * @ordered
	 */
	public static final int PHONE_VALUE = 2;

	/**
	 * The '<em><b>Address</b></em>' literal value.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #ADDRESS
	 * @model name="address"
	 * @generated
	 * @ordered
	 */
	public static final int ADDRESS_VALUE = 3;

	/**
	 * The '<em><b>Gps</b></em>' literal value.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #GPS
	 * @model name="gps"
	 * @generated
	 * @ordered
	 */
	public static final int GPS_VALUE = 4;

	/**
	 * An array of all the '<em><b>Location Type</b></em>' enumerators.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private static final LocationType[] VALUES_ARRAY =
		new LocationType[] {
			OTHER,
			URL,
			PHONE,
			ADDRESS,
			GPS,
		};

	/**
	 * A public read-only list of all the '<em><b>Location Type</b></em>' enumerators.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static final List<LocationType> VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));

	/**
	 * Returns the '<em><b>Location Type</b></em>' literal with the specified literal value.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param literal the literal.
	 * @return the matching enumerator or <code>null</code>.
	 * @generated
	 */
	public static LocationType get(String literal) {
		for (int i = 0; i < VALUES_ARRAY.length; ++i) {
			LocationType result = VALUES_ARRAY[i];
			if (result.toString().equals(literal)) {
				return result;
			}
		}
		return null;
	}

	/**
	 * Returns the '<em><b>Location Type</b></em>' literal with the specified name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param name the name.
	 * @return the matching enumerator or <code>null</code>.
	 * @generated
	 */
	public static LocationType getByName(String name) {
		for (int i = 0; i < VALUES_ARRAY.length; ++i) {
			LocationType result = VALUES_ARRAY[i];
			if (result.getName().equals(name)) {
				return result;
			}
		}
		return null;
	}

	/**
	 * Returns the '<em><b>Location Type</b></em>' literal with the specified integer value.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the integer value.
	 * @return the matching enumerator or <code>null</code>.
	 * @generated
	 */
	public static LocationType get(int value) {
		switch (value) {
			case OTHER_VALUE: return OTHER;
			case URL_VALUE: return URL;
			case PHONE_VALUE: return PHONE;
			case ADDRESS_VALUE: return ADDRESS;
			case GPS_VALUE: return GPS;
		}
		return null;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private final int value;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private final String name;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private final String literal;

	/**
	 * Only this class can construct instances.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private LocationType(int value, String name, String literal) {
		this.value = value;
		this.name = name;
		this.literal = literal;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public int getValue() {
	  return value;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getName() {
	  return name;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getLiteral() {
	  return literal;
	}

	/**
	 * Returns the literal value of the enumerator, which is its string representation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String toString() {
		return literal;
	}
	
} //LocationType
