package org.mypsycho.emf.modit

import java.util.ArrayList
import java.util.Collections
import java.util.HashMap
import java.util.List
import org.eclipse.emf.common.notify.impl.NotificationChainImpl
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.InternalEObject
import org.eclipse.emf.ecore.util.FeatureMapUtil
import org.eclipse.emf.ecore.util.InternalEList
import org.mypsycho.modit.ModIt
import org.mypsycho.modit.ModItDescriptor
import org.mypsycho.modit.ModItImplementation
import org.mypsycho.emf.modit.EModItProcInfo.PiType

import static extension org.mypsycho.emf.modit.EModItProcInfo.*

/**
 * Mod-it implementation for Ecore Modeling Framework.
 * <p>
 * Best way to use is by creating an extension singleton.
 * </p>
 */
class EModIt extends ModIt<EObject> {
    
    // Public for testing purpose
    public static val String PROXY_URI_SCHEME = "modit";
    
    static def using(EPackage...  packages) {
        return using(packages, null)
    }
    
    static def using(EPackage  packages, (Descriptor)=>void initializer) {
        return using(#[ packages ], initializer)
    }
       
    static def using(List<?extends EPackage> packages, (Descriptor)=>void initializer) {
        new EModIt(new Descriptor => [
                ePackages += packages
                initializer?.apply(it)
            ], [ new Implementation(it) ])
    }
    
    static class Descriptor extends ModItDescriptor<EObject> {
        /** Packages containing EClass to use. */
        public val List<EPackage> ePackages = new ArrayList
        public var subPackage = true
    }
    
    
    /**
     * Create a factory with immutable strategy.
     * 
     * @param descr of the factory
     */
    new(Descriptor descr, (ModIt<EObject>)=>ModItImplementation<EObject, ?> delegation) {
        super(descr, delegation)
    }
    
    
    /**
     * Factory of EObject.
     */
    static class Implementation extends ModItImplementation<EObject, EReference> {

        val rules = new HashMap<Class<? extends EObject>, ()=>EObject>()
    
        /**
         * Create a factory with immutable strategy.
         * 
         * @param descr of the factory
         */
        new(ModIt<EObject> context) {
            super(context)
        }
    
        override init(ModItDescriptor<EObject> descr) {
            val eDescr = descr as EModIt.Descriptor
            eDescr.ePackages // all Packages
                .map[ if (eDescr.subPackage) eAllContents.toIterable else EClassifiers ]
                .flatten // all definitions (even in subpackages)
                .filter(EClass).filter[ !abstract ] // all creatable EClass
                .forEach [
                    rules.put(instanceClass as Class<? extends EObject>, // EClass provides EObject
                        [ EPackage.EFactoryInstance.create(it) ])
                ]
        }
    
        /**
         * Builds an {@link EObject} and initializes it.
         *
         * @param type of EObject to build
         * @throw IllegalArgumentException if type is not handled by the factory.
         */
        override <T extends EObject> T create(Class<T> type) {
            val rule = rules.get(type);
            if (rule === null) {
                throw new IllegalArgumentException("Unknown factory for type " + type.name)
            }
            type.cast(rule.apply)
        }
    
        /**
         * Returns true if it is an proxy.
         */
        override isProxy(EObject it) {
            if (it instanceof InternalEObject) (eProxyURI !== null && PROXY_URI_SCHEME == eProxyURI.scheme)
            else false
        }
    

        override getProxyId(EObject it) {
            URI.decode((it as InternalEObject).eProxyURI.opaquePart)
        }
        

        override getProxyPath(EObject it) {
            PiType.path.unbind(it)
        }
        
        /**
         * Init it as a proxy with provided id.
         * 
         * @param it to initialise
         * @param id of root reference
         * @param path to reference for root
         */
        override <R extends EObject> initProxyId(EObject it, String id, (EObject)=>R path) {
            (it as InternalEObject).eSetProxyURI(URI.createGenericURI(PROXY_URI_SCHEME, URI.encodeOpaquePart(id, false), null))
            if (path != null) PiType.path.bind(it, path)

        }
    
        override getValues(EObject container, EReference property) {
            val it = container.eGet(property, false)
            if (it === null) null
            else if (property.isMany) (it as InternalEList<InternalEObject>).basicList
            else Collections.singleton(it as InternalEObject)
        }
     
       /**
         * Creator of element and content.
         *
         * @param value to iterate
         * @return an EObject iterator
         */
        override allContent(EObject value) { [ value.eAllContents ] as Iterable<EObject> }
        
        override allReferences(EObject container) {
            container.eClass.EAllReferences.filter[ !isDerived && !containment ]
        }
    
        override container(EObject it) { eContainer }
        
        override typeName(EObject it) { eClass.name }
    
        override propName(EReference it) { name }
        
        override refTypeName(EReference it) { it.EType.name }
    
        override assignableTo(EObject value, EReference prop) { prop.EType.isInstance(value) }
    
        /**
         * Replaces the old value in the object's feature with the new value .
         * This method prevents the resolution of EList when replacing a value.
         *
         * @param container the object holding the values.
         * @param feature the feature of the object holding the values.
         * @param oldValue the value to replace.
         * @param newValue the replacement value.
         */
        override replaceResolved(EObject container, EReference feature, 
                EObject oldValue, EObject newValue) {
            if (FeatureMapUtil.isMany(container, feature)) {
                // We use internal APIs to avoid resolving any value in the list
                val InternalEList<Object> list = container.eGet(feature, false) as InternalEList<Object>;
                val indexOf = list.basicIndexOf(oldValue)
                list.basicRemove(oldValue, new NotificationChainImpl)
                list.addAllUnique(indexOf, Collections.singleton(newValue))
            } else {
                container.eSet(feature, newValue);
            }
        }
        
        override bindAlias(String id, EObject it) {
            PiType.alias.bind(it, id)
        }
    
        override unbindAlias(EObject it) {
            PiType.alias.unbind(it)
        }
        
        override bindContent(String id, EObject it) {
            PiType.content.bind(it, id)
        }
    
        override unbindContent(EObject it) {
            PiType.content.unbind(it)
        }
        
    }
   
}