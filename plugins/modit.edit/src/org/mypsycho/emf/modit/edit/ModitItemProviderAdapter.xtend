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
package org.mypsycho.emf.modit.edit

import java.util.Collections
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider
import org.eclipse.emf.edit.provider.IItemLabelProvider
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider
import org.eclipse.emf.edit.provider.ITreeItemContentProvider
import org.eclipse.emf.edit.provider.ItemProviderAdapter
import org.mypsycho.modit.emf.stretch.EmfStretcher

class ModitItemProviderAdapter extends ItemProviderAdapter 
	implements IEditingDomainItemProvider, IItemLabelProvider, 
        ITreeItemContentProvider , IStructuredItemContentProvider/*,	
        IItemPropertySource */{ // analyse org.eclipse.emf.edit.provider.ReflectiveItemProvider 

	
    // gen model : package
	// child extender
	// extensible ??

    // gen model : feature
    // children : display childre
    // create children
    // notify
    // observe EStructuralFeature (used in label !)
    // nodes (Id, EStructuralFeature...) or (EStructuralFeature)
    // nodeExtensions
    // notify (EStructuralFeature)[containment=> to refresh children]
    
    // default notification (all edit attributs)
    
    // children -> EFeature[containment]
    // Multi-line 

    // enum ID { text, image, children, childCreate } 
//    	
//    
//		val EnumMap<ID, Object> impls = new EnumMap(ID)
//		protected val EmfAspect<EClassifier> aspect
	
	public val EClass type
	
	protected val extension EmfStretcher context
	
	
	package val ModitItemProviderForwarder forwarder
	
    new(ModitEditFactory adapterFactory, EClass type) {
        super(adapterFactory)
        this.type = type
        context = adapterFactory.descriptor
        
        // Inspired from EMF Recipe
        // https://wiki.eclipse.org/EMF/Recipes#Recipe:_Custom_Labels
        if (adapterFactory.isForwarderRequired(type)) {
        	forwarder = adapterFactory.createForwarder(this, type)
        	adapterFactory.addListener(forwarder) 
        } else {
        	forwarder = null
        }
        
        
        //        aspect = context.descriptor.onClass(type).aspect
//        
//        ID.values.forEach[ impls.put(it, createImplementation) ]
    } 
    
    
	override dispose() {
		super.dispose();
		if (forwarder !== null) {
			getAdapterFactory().removeListener(forwarder);
		}
	}
    
    override ModitEditFactory getAdapterFactory() {
    	super.adapterFactory as ModitEditFactory
    }
    
    package def getOtherTargets() {
    	super.targets ?: Collections.emptyList
    }
    
    
//        
//    def createImplementation(Object id) {
//    	if (id == ID.text) createTextGetter
//    }
//    
//    def Function<EObject, String> createTextGetter() { // 
//    	var Object getter = aspect.get(ID.text, [ toString ])
//    	if (getter instanceof String) { 
//    		val String label = getter
//    		getter = [ EObject o| label ]
//    	}
//    	val defaultGetter = getter as Function<EObject, String>
//    	[ EObject it | 
//    		val feat = eContainingFeature 
//    		if (!feat.many) getAdapterFactory().getLabel(feat)
//    		else defaultGetter.apply(it) as String
//    	]
//    }
//        

	override protected getResourceLocator() {
		(adapterFactory as ModitEditFactory).resourceLocator
	}


	//
	// IItemLabelProvider
	// 

	override getText(Object it) {
		(it as EObject).eClass*ModitEditLabels.TEXT
	}
    
    override getImage(Object it) {
    	val path = (it as EObject)*ModitEditLabels.IMAGE_PATH
    	overlayImage(
    		if (path !== null) resourceLocator.getImage(path)
    		else ModitEditPlugin.INSTANCE.getImage(ModitEditLabels.UNDEFINED_ICON)
    	)
    }

	//
	// IEditingDomainItemProvider, ITreeItemContentProvider, IStructuredItemContentProvider
	//   Mostly inherited from ItemProviderAdapter TODO customize for virtual node.
	

    // icon
    // decoration
    // label
    // observation
    
	override getChildren(Object object) {
		super.getChildren(object)
		// For virtual node, modify getAnyChildrenFeatures and getValue to add virtual feature ??
		
		// Check each feature value is always get through 
		// #getValue(
		// #getFeatureValue -> calls getValue 
		// #isValidValue(
		
	}

// Special behavior for create 





}