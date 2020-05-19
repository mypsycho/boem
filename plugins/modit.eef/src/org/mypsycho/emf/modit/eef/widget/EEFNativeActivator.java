package org.mypsycho.emf.modit.eef.widget;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.BundleContext;

public class EEFNativeActivator extends Plugin {

	/** The plug-in ID */
	public static final String PLUGIN_ID = "org.mypsycho.emf.modit.eef";

	private static EEFNativeActivator instance;
	
	/**
	 * Returns the shared instance
	 * 
	 * @return the shared instance
	 */
	public static EEFNativeActivator getInstance() {
		return instance;
	}
	
	public void start(BundleContext context) throws Exception {
		super.start(context);
		instance = this;
	}
	
	@Override
	public void stop(BundleContext context) throws Exception {
		instance = null;
		super.stop(context);
	}
	
	static void logError(String message, Throwable cause) {
		getInstance().getLog().log(
				new Status(IStatus.ERROR, PLUGIN_ID, message, cause));
	}
	
}
