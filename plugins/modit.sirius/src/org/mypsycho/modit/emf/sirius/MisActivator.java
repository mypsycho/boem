/**
 * 
 */
package org.mypsycho.modit.emf.sirius;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.sirius.business.api.componentization.ViewpointFileCollector;
import org.eclipse.sirius.business.api.componentization.ViewpointRegistry;
import org.eclipse.sirius.business.internal.componentization.ViewpointRegistryImpl;
import org.eclipse.sirius.viewpoint.description.Group;
import org.eclipse.sirius.viewpoint.description.Viewpoint;
import org.osgi.framework.BundleContext;


/**
 * @author nperansin
 *
 */
public class MisActivator extends Plugin {

	
    /** The plug-in ID */
    public static final String PLUGIN_ID = "org.mypsycho.emf.modit.sirius";

    /** The shared instance */
    private static MisActivator instance;

    // registereds protects itself and serviceProviders content.
    private Map<String, Registration> registereds = null;
    
    // Providers are index for a better performance. Otherwise key would be enough.
    private List<? extends SiriusModelProvider> serviceProviders = null;


    private static final ViewpointFileCollector MODEL_PROVIDER_COLLECTOR = 
    		new ViewpointFileCollector() {

    	@Override
    	public boolean isValid(EObject root) {
    		return root instanceof Group;
    	}

    	@Override
    	public Collection<Viewpoint> collect(EObject root) {
    		return new ArrayList<>(((Group) root).getOwnedViewpoints());
    	}
    };

    class Registration implements IDisposable {
    	
    	static final int UNALLOCATED_INDEX = -1;
    	
        private Set<Viewpoint> viewpoints = new HashSet<>();

        private final String key;
        
        private final String siriusPath;
        
        private int index = UNALLOCATED_INDEX;
        
        
        private SiriusModelProvider instance = null;
        
        public Registration(String pluginId, Class<? extends SiriusModelProvider> mpClass) {
        	key = DesignFactory.toUriPath(pluginId, mpClass);
        	siriusPath = DesignFactory.toModelPath(pluginId, mpClass);
        }
        
        public String getKey() {
			return key;
		}
        
        public int getIndex() {
        	return index;
        }
        
    	@Override
    	public void dispose() {
    		synchronized (registereds) {
    			if (registereds.get(getKey()) == this) {
    				registereds.remove(getKey());
    			}
    			
				if (index != UNALLOCATED_INDEX
						&& index < serviceProviders.size()  
						&& serviceProviders.get(index) == instance) {
					updateServices(index, null);
				}
			}
    		ViewpointRegistry vpReg = ViewpointRegistry.getInstance();
    		viewpoints.forEach(it -> vpReg.disposeFromPlugin(it));
    	}

		public void setIndex(int id) {
			index = id;
		}

		public void allocated(SiriusModelProvider it) {
			
			// search free id
			if (index == Registration.UNALLOCATED_INDEX) {
				index = 0;
				while(index < serviceProviders.size() && serviceProviders.get(index) != null) {
					index++;
				}
			} // else in reload.
			
			instance = it;
			updateServices(index, it);
		}

		public void initViewpoints() {
			viewpoints.addAll(ViewpointRegistry.getInstance().registerFromPlugin(siriusPath));			
		}
    }

    public void start(BundleContext context) throws Exception {
    	super.start(context);
    	instance = this;

    	
    	((ViewpointRegistryImpl) ViewpointRegistry.getInstance())
    	// Seriously, internal ??? Refactor issue.
    		.addViewpointFileCollector(DesignFactory.EXTENSION, 
    				MODEL_PROVIDER_COLLECTOR);
    	
    	registereds = new HashMap<String, Registration>();
    	serviceProviders = new ArrayList<>();
    }

    public void stop(BundleContext context) throws Exception {
    	instance = null;
		
		// Registration.dispose changes registereds
    	// A copy is required.
		new ArrayList<>(registereds.values()).forEach(it -> it.dispose());
		registereds = null;
		serviceProviders = null;
		
		super.stop(context);
    }
    
    /**
     * Update the list of provider.
     * <p>
     * The list is modified by copy to ensure a safe fast access.
     * </p>
     * 
     * @param index
     * @param it
     */
    private void updateServices(int index, SiriusModelProvider it) {
    	
    	List<SiriusModelProvider> newList = new ArrayList<>(serviceProviders);
    	
    	// register
		if (newList.size() == index) { // new index
			newList.add(it);
		} else {
			newList.set(index, it);
		}
		serviceProviders = newList;
    	
    }
    
	public IDisposable registerGroups(String pluginId, Class<? extends SiriusModelProvider> mpClass) {
		Registration result;
		synchronized (registereds) {
			String key = DesignFactory.toUriPath(pluginId, mpClass);
			result = registereds.get(key);
			if (result != null) {
				result.dispose();
			}
			result = new Registration(pluginId, mpClass);
			registereds.put(key, result);
		}
		result.initViewpoints();

    	return result;
    }

    int registerProvider(SiriusModelProvider it) {
    	Registration reg;
    	synchronized (registereds) {
    		String uriPath = it.resource.getURI().path();
    		reg = registereds.get(uriPath);
	    	if (reg == null) { // reloading
	    		throw new IllegalStateException("Unregistered model provider " + uriPath);
	    	}
			reg.allocated(it);
			return reg.getIndex();
		}
    }
    
    SiriusModelProvider getProvider(int id) {
    	return serviceProviders.get(id);
    }
    
    /**
     * Returns the shared instance
     * 
     * @return the shared instance
     */
    public static MisActivator getInstance() {
    	return instance;
    }
}
