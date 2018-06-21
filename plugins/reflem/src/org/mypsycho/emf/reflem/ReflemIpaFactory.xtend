package org.mypsycho.emf.reflem

import java.util.ArrayList
import java.util.HashMap
import java.util.List
import java.util.Map
import org.eclipse.emf.common.EMFPlugin
import org.eclipse.emf.common.notify.Notifier
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.emf.edit.domain.EditingDomain
import org.eclipse.emf.edit.provider.ChildCreationExtenderManager
import org.eclipse.emf.edit.provider.IChildCreationExtender
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider
import org.eclipse.emf.edit.provider.IItemLabelProvider
import org.eclipse.emf.edit.provider.IItemPropertySource
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider
import org.eclipse.emf.edit.provider.ITreeItemContentProvider
import org.eclipse.emf.edit.provider.ItemProviderAdapter
import org.eclipse.emf.edit.provider.ReflectiveItemProviderAdapterFactory

class ReflemIpaFactory extends ReflectiveItemProviderAdapterFactory implements IChildCreationExtender {
    
    static val PROVIDED_TYPES = #[ // Signature created adapter will support
        IEditingDomainItemProvider, 
        ITreeItemContentProvider, /* extends  */IStructuredItemContentProvider,  
        IItemLabelProvider, IItemPropertySource
    ]
    
    val EMFPlugin anchor
    val List<EPackage> packages
    val Map<Class<?>, EClass> reflections
    val categories = new ArrayList<String>
    val edits = new HashMap<EClass, Edit<?>>
    var providers = new HashMap<EClass, Provider>


    val List<ChildCreationExtenderManager> ccExtManagers
    
    
    new (EMFPlugin rlAncher, EPackage... supporteds) {
        if (supporteds.contains(null)) throw new NullPointerException("Null is not supported")
        
        anchor = rlAncher
        packages = supporteds.toList

        ccExtManagers = newArrayList(supporteds.map[ new ChildCreationExtenderManager(anchor, nsURI) ])
        
        reflections = packages.map[ eAllContents.toIterable ].flatten // all definitions
                .filter(EClass) // all creatable EClass
                .toMap([ instanceClass ]) [ it ]
                
    }
    
    
    
    override isFactoryForType(Object it) {
        PROVIDED_TYPES.contains(it) 
        || packages.contains(it) 
        || packages.contains(if (it instanceof EObject) eClass.EPackage) // packages are not null
        || super.isFactoryForType(it)
    }
    
    override getNewChildDescriptors(Object object, EditingDomain editingDomain) {
        ccExtManagers.map[ getNewChildDescriptors(object, editingDomain) ].flatten.toList
    }
    
    override getResourceLocator() {
        anchor
    }

    override createAdapter(Notifier target) {
        if (target instanceof EObject) {
            providers.computeIfAbsent(target.eClass, createAdapter)
        } else super.createAdapter(target) /* unexpected, maybe UnsupportExc */
    }
    
    val createAdapter = [ EClass type | new Provider(this, type) ]
    

 
    static class Edit<T extends EObject> {
        val ReflemIpaFactory parent
        public val EClass type
        val categorieds = new HashMap<EStructuralFeature, String>
        // gen model property
        // observe EStructuralFeature (used in label !)
        // nodes (Id, EStructuralFeature...) or (EStructuralFeature)
        // nodeExtensions
        // notify (EStructuralFeature)[containment=> to refresh children]
        
        // default notification (all edit attributs)
        
        // children -> EFeature[containment]
        // Multi-line 
        
        new(ReflemIpaFactory parent, EClass type) {
            this.parent = parent
            this.type = type
        }
        
        var Object label
        
        def setLabel(String text) {
            label = text
        }
        
        def setLabel((T)=>String filler) {
            label = filler
        }
        
        def category(String id, EStructuralFeature... features) {
            // Ensure category
            if (!parent.categories.contains(id)) {
                throw new IllegalArgumentException('Unknown category ' + id)
            }
            // Ensure feature
            features.filter[ !type.EStructuralFeatures.contains(it) ].toList => [
                if (!empty) throw new IllegalArgumentException(type.name + ' does not define ' + it)
            ]
            features.forEach[ categorieds.put(it, id) ]
        }
    }
    
    
    def <T extends EObject> edit(Class<?> clazz, (Edit<T>)=>void filler) {
        filler.apply(
            (edits.computeIfAbsent(reflections.get(clazz)) 
            [ EClass type | new Edit<T>(this, type) ]) as Edit<T>
        )
    }
    
    
    
    static class Provider extends ItemProviderAdapter /* implements  IEditingDomainItemProvider, 
        ITreeItemContentProvider, IStructuredItemContentProvider,  
        IItemLabelProvider, IItemPropertySource */
        {
            val EClass type
            new(ReflemIpaFactory context, EClass type) {
                super(context)
                this.type = type
            }
            
            // icon
            // decoration
            // label
            // observation
        }
        

}