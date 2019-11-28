/**
 * 
 */
package org.mypsycho.modit.emf.sirius;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Stream;

import org.eclipse.core.runtime.Plugin;
import org.eclipse.sirius.business.api.componentization.ViewpointRegistry;
import org.eclipse.sirius.viewpoint.description.Viewpoint;
import org.osgi.framework.BundleContext;


/**
 * @author nperansin
 *
 */
public class MisActivator extends Plugin {

	
    // The plug-in ID
    public static final String PLUGIN_ID = "org.mypsycho.emf.modit.sirius";

    // The shared instance
    private static MisActivator plugin;

    private Set<Registration> registereds = new HashSet<>();
    private List<ModelProvider> serviceProviders = new ArrayList<>();
    private ThreadLocal<Registration> currentRegistration = new ThreadLocal<>();
    
    class Registration implements Closeable {
    	
        private Map<ModelProvider, Integer> providerIds = new HashMap<>();
        private Set<Viewpoint> viewpoints = new HashSet<>();

    	@Override
    	public void close() {
    		synchronized (registereds) {
    			registereds.remove(this);
    			providerIds.forEach((mp, id)-> {
    				if (serviceProviders.size() > id && serviceProviders.get(id) == mp) {
    					serviceProviders.set(id, null);
    				}
    			});
			}
    		ViewpointRegistry vpReg = ViewpointRegistry.getInstance();
    		viewpoints.forEach(it -> vpReg.disposeFromPlugin(it));
    		viewpoints = null;
    	}
    }

    public void start(BundleContext context) throws Exception {
	      super.start(context);
		  plugin = this;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framework.BundleContext)
     */
    public void stop(BundleContext context) throws Exception {
		plugin = null;
		
		new ArrayList<>(registereds).forEach(it -> it.close());
		registereds.clear(); // should be useless
		serviceProviders.clear(); // should be useless
		
		super.stop(context);
    }
    
    @SuppressWarnings("unchecked")
	public Closeable registerGroups(String pluginId, Class<? extends ModelProvider>... mpClasses) {
    	try {
    		Registration result = new Registration();
    		currentRegistration.set(result);
    		ViewpointRegistry vpReg = ViewpointRegistry.getInstance();
    		Stream.of(mpClasses).forEach(it -> 
    			result.viewpoints.addAll(vpReg.registerFromPlugin(DesignFactory.toUri(pluginId, it)))
    		);
    		synchronized (registereds) {
    			registereds.add(result);
			}
        	return result;
    	} finally {
    		currentRegistration.remove();
    	}
    }

    int registerProvider(ModelProvider it) {
    	Registration reg = currentRegistration.get();
    	Objects.nonNull(reg);
    	synchronized (registereds) {
			int id = 0; // search free id
			while(serviceProviders.size() < id && serviceProviders.get(id) != null) {
				id++;
			}
			// register
			if (serviceProviders.size() == id) {
				serviceProviders.add(it);
			} else {
				serviceProviders.set(id, it);
			}
			reg.providerIds.put(it, id);
			return id;
		}
    }
    
    ModelProvider getProvider(int id) {
    	return serviceProviders.get(id);
    }
    
    /**
     * Returns the shared instance
     * 
     * @return the shared instance
     */
    public static MisActivator getDefault() {
    	return plugin;
    }
}
