package org.mypsycho.emf.reflem

import java.util.EnumMap
import java.util.function.Function
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EClassifier
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.edit.provider.ItemProviderAdapter
import org.mypsycho.modit.emf.stretch.EmfAspect

class ReflemDefaultIpAdapter extends ItemProviderAdapter /* implements  IEditingDomainItemProvider, 
        ITreeItemContentProvider, IStructuredItemContentProvider,  
        IItemLabelProvider, IItemPropertySource */{
	
	
	
	
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

    enum ID { text, image, children, childCreate } 
    	
    public val EClass type
		val EnumMap<ID, Object> impls = new EnumMap(ID)
		protected val EmfAspect<EClassifier> aspect

    new(ReflemIpaFactory context, EClass type) {
        super(context)
        this.type = type
        aspect = context.descriptor.onClass(type).aspect
        
        ID.values.forEach[ impls.put(it, createImplementation) ]
    }
        
		override ReflemIpaFactory getAdapterFactory() {
			super.getAdapterFactory() as ReflemIpaFactory
		}
         
        
    def createImplementation(Object id) {
    	if (id == ID.text) createTextGetter
    }
    
    def Function<EObject, String> createTextGetter() { // 
    	var Object getter = aspect.get(ID.text, [ toString ])
    	if (getter instanceof String) { 
    		val String label = getter
    		getter = [ EObject o| label ]
    	}
    	val defaultGetter = getter as Function
    	[ EObject it | 
    		val feat = eContainingFeature 
    		if (!feat.many) getAdapterFactory().getLabel(feat)
    		else defaultGetter.apply(it) as String
    	]
    }
        
        
		override getText(Object it) {
			(impls.get(ID.text) as Function<EObject, String>).apply(it as EObject)
		}
        
        // icon
        // decoration
        // label
        // observation
    
	
	
	}