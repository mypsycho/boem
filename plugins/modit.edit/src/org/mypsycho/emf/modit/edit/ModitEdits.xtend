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

import org.mypsycho.modit.emf.stretch.EmfExtensions

class ModitEdits {
	
	public static val DEFAULT_ICON_PATH = "icons/full/obj16/"
	//// Class level

	// Issue: no local access by default ?
	public static val TEXT = EmfExtensions.byEObjects[ it, cache | ModitItemProviderAdapter.getTextFromDefaultFeature(it, cache) ]
	
	public static val IMAGE = EmfExtensions.byEObjects[ DEFAULT_ICON_PATH + eClass.name ]
	
	
		
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
