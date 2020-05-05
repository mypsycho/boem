/**
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 * 
 * SPDX-License-Identifier: EPL-2.0
 * 
 * Contributors:
 *   Nicolas PERANSIN - initial API and implementation
 */
package org.mypsycho.emf.modit.sirius.ui.siriusuiextension;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.sirius.viewpoint.description.DescriptionPackage;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.sirius.ui.siriusuiextension.SueFactory
 * @model kind="package"
 * @generated
 */
public interface SuePackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "siriusuiextension";

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "https://github.com/mypsycho/modit/sirius/uiextension/1.0";

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "sue";

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	SuePackage eINSTANCE = org.mypsycho.emf.modit.sirius.ui.siriusuiextension.impl.SuePackageImpl.init();

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.sirius.ui.siriusuiextension.impl.ExplorerEditionExtensionImpl <em>Explorer Edition Extension</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.sirius.ui.siriusuiextension.impl.ExplorerEditionExtensionImpl
	 * @see org.mypsycho.emf.modit.sirius.ui.siriusuiextension.impl.SuePackageImpl#getExplorerEditionExtension()
	 * @generated
	 */
	int EXPLORER_EDITION_EXTENSION = 0;

	/**
	 * The number of structural features of the '<em>Explorer Edition Extension</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int EXPLORER_EDITION_EXTENSION_FEATURE_COUNT = DescriptionPackage.EXTENSION_FEATURE_COUNT + 0;


	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.sirius.ui.siriusuiextension.ExplorerEditionExtension <em>Explorer Edition Extension</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Explorer Edition Extension</em>'.
	 * @see org.mypsycho.emf.modit.sirius.ui.siriusuiextension.ExplorerEditionExtension
	 * @generated
	 */
	EClass getExplorerEditionExtension();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	SueFactory getSueFactory();

	/**
	 * <!-- begin-user-doc -->
	 * Defines literals for the meta objects that represent
	 * <ul>
	 *   <li>each class,</li>
	 *   <li>each feature of each class,</li>
	 *   <li>each enum,</li>
	 *   <li>and each data type</li>
	 * </ul>
	 * <!-- end-user-doc -->
	 * @generated
	 */
	interface Literals {
		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.sirius.ui.siriusuiextension.impl.ExplorerEditionExtensionImpl <em>Explorer Edition Extension</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.sirius.ui.siriusuiextension.impl.ExplorerEditionExtensionImpl
		 * @see org.mypsycho.emf.modit.sirius.ui.siriusuiextension.impl.SuePackageImpl#getExplorerEditionExtension()
		 * @generated
		 */
		EClass EXPLORER_EDITION_EXTENSION = eINSTANCE.getExplorerEditionExtension();

	}

} //SuePackage
