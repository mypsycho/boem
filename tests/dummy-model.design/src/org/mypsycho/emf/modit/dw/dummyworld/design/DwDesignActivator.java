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
package org.mypsycho.emf.modit.dw.dummyworld.design;

import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;


public class DwDesignActivator extends AbstractUIPlugin {
    
	// The plug-in ID
    public static final String PLUGIN_ID = "org.mypsycho.emf.modit.dummy-model.design";

    // The shared instance
    private static DwDesignActivator instance;

    private IDisposable vpReference; 

    @Override
    public void start(BundleContext context) throws Exception {
      super.start(context);
      instance = this;
	  // vpReference = MisActivator.getInstance().registerGroups(PLUGIN_ID, DummyWorldDesign.class);
    }

    @Override
    public void stop(BundleContext context) throws Exception {
    	instance = null;
		if (vpReference != null) {
			vpReference.dispose();
			vpReference = null; 
		}
		super.stop(context);
    }

    /**
     * Returns the shared instance.
     * 
     * @return the shared instance
     */
    public static DwDesignActivator getInstance() {
    	return instance;
    }
}