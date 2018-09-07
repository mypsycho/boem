package org.mypsycho.emf.reflem

import java.util.HashMap
import java.util.List
import java.util.Locale
import java.util.Map
import org.eclipse.emf.common.EMFPlugin
import org.eclipse.emf.common.notify.Notifier
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.ENamedElement
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.edit.domain.EditingDomain
import org.eclipse.emf.edit.provider.ChildCreationExtenderManager
import org.eclipse.emf.edit.provider.IChildCreationExtender
import org.eclipse.emf.edit.provider.ReflectiveItemProviderAdapterFactory
import org.mypsycho.emf.i18n.EmfI18n

class ReflemIpaFactory extends ReflectiveItemProviderAdapterFactory implements IChildCreationExtender {

	public val Locale locale
    public val EMFPlugin anchor
    public val EmfStretcher descriptor
    val Map<EPackage, EmfI18n> labels
    var providers = new HashMap<EClass, ReflemDefaultIpAdapter>

    val List<ChildCreationExtenderManager> ccExtManagers
    
   	new(EMFPlugin anchor, EmfStretcher target) {
        this(anchor, target, Locale.^default)
    }
    
    new(EMFPlugin anchor, EmfStretcher target, Locale locale) {
    	this.locale = locale
        this.anchor = anchor
        this.descriptor = target

        ccExtManagers = newArrayList(descriptor.allSources.map[ new ChildCreationExtenderManager(anchor, nsURI) ])

		labels = descriptor.allSources.toInvertedMap[ EmfI18n.get(it, locale) ]
    }
    
    def getLabel(ENamedElement it) {
    	for (var EObject o = it; o != null; o = eContainer) {
    		if (o instanceof EPackage) {
    			return labels.get(o).getLabel(it)
    		}
    	}
    	throw new UnsupportedOperationException("Cannot provide label for " + it)
    }
    
    
    override isFactoryForType(Object it) {
    	if (it instanceof EObject) descriptor.allSources.contains(eClass.EPackage)
    	else // prevents to catch any EObject
        	descriptor.allSources.contains(it) 
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
            providers.computeIfAbsent(target.eClass) [ createProvider(it) ]
        } else super.createAdapter(target) /* unexpected, maybe UnsupportExc */
    }
    
    protected def createProvider(EClass it) {
    	new ReflemDefaultIpAdapter(this, it)
    }

    

 


}