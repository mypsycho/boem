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

import java.util.Map
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.mypsycho.modit.emf.stretch.EmfExtensions
import org.mypsycho.modit.emf.stretch.EmfStretcher
import org.mypsycho.modit.emf.stretch.EmfToolings
import org.mypsycho.modit.emf.i18n.EmfI18n

class ModitEditLabels {
	
	public static val IMAGE_FROM_NAME = EmfToolings.byClass(false)

	// Issue: no local access by default ?
	public static val TEXT = 
		EmfExtensions.byEObjects[ it, ctx, cache | 
			getTextFromDefaultFeature(it, cache)
		]
	
	static val DEFAULT_LABEL_FEATNAMES = #[ "name", "label", "text" ]
	
	
	static def String 
			getTextFromDefaultFeature(EObject it, Map<EClass, (EObject)=>String> cache) {
		// Very slow implementation
		cache.computeIfAbsent(eClass) [
			// Search usual feature
			val feat = DEFAULT_LABEL_FEATNAMES.map[known|
				
				EAllAttributes.findFirst[ 
					known == name 
						&& EAttributeType.instanceClass == String
				]
			].filterNull.head
			
			if (feat !== null) { // use found feature
				[ EObject it | eGet(feat) as String ]
			} else { // use class name as label
				val classLabel = EmfI18n.get(EPackage).getLabel(it)
				// return is required by Xtend (statement ambiguity)
				return [ EObject it | classLabel ]
			}
		].apply(it)
	}
	
	public static val DEFAULT_ICON_PATH = "icons/full/obj16/"
	//// Class level
	
	public static val UNDEFINED_ICON = "obj16/EObject.png"

	
	// Keep in mind it is only the default implementation
	public static val IMAGE_PATH = EmfExtensions.byEObjects[ it, extension ctxt |
		if (eClass*IMAGE_FROM_NAME) DEFAULT_ICON_PATH + eClass.name
	]
	
	static def void allImagesFromName(extension EmfStretcher ctxt, EPackage it) {
		EClassifiers.filter(EClass).forEach[
			it<<IMAGE_FROM_NAME += true 
		]
	}

        	
	

 

}
