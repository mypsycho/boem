/*******************************************************************************
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Nicolas PERANSIN - initial API and implementation
 *******************************************************************************/
package org.mypsycho.emf.modit.edit;

import org.eclipse.emf.ecore.EPackage
import org.mypsycho.modit.emf.stretch.EmfExtensions
import org.mypsycho.modit.emf.stretch.EmfStretcher
import org.mypsycho.modit.emf.stretch.EmfToolings
import org.eclipse.emf.ecore.EClass

class ModitEdits {
	
	public static val DEFAULT_ICON_PATH = "icons/full/obj16/"
	//// Class level

	// Issue: no local access by default ?
	public static val TEXT = EmfExtensions.byEObjects[ it, ctxt, cache | 
		ModitItemProviderAdapter.getTextFromDefaultFeature(it, cache)
	]

	public static val IMAGE_FROM_NAME = EmfToolings.byClass(false)
	
	// Keep in mind it is the default implementation
	public static val IMAGE_PATH = EmfExtensions.byEObjects[ it, extension ctxt |
		if (eClass*IMAGE_FROM_NAME) DEFAULT_ICON_PATH + eClass.name
	]
	
	static def void allImagesFromName(extension EmfStretcher ctxt, EPackage it) {
		EClassifiers.filter(EClass).forEach[
			it<<IMAGE_FROM_NAME += true 
		]
	}
		
	// Properties for property descriptor
	
	// Properties for children (getChildrenFeatures)
	
	// New Descriptor (for all children feature * for all non-abstract types
	
	//// Property level
	
	// name (based on reflection), description, 
	// editable, multiline (text), category, filterFlag (ie expert mode), editCellFactory
	// cascaded (used by some referencing for provider)
	
	// notifiable ??
	// Cascade: when a value is referenced and value is used in text/font/color -> request 
	


	//// Operational default
	// notify change : list container for update content, attribute for name
	
	// collect new descriptor based on strecher.allSources
	// create map<Feature[containment], list<()=>EObject>
	
	// Properties descriptor based on 

}
