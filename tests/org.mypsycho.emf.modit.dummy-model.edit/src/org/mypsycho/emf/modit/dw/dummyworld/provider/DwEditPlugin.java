/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.provider;

import org.eclipse.emf.common.EMFPlugin.EclipsePlugin;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.edit.ModitEmfPlugin;

/**
 * This is the central singleton for the DummyWorld edit plugin.
 */
public final class DwEditPlugin extends ModitEmfPlugin<DwEditPlugin.Implementation> {

	/** The EMF singleton. */
	public static final DwEditPlugin INSTANCE = new DwEditPlugin();
	
	/**
	 * Create the instance.
	 */
	public DwEditPlugin() {
		super(DwPackage.eINSTANCE);
	}

	/**
	 * Returns the singleton instance of the Eclipse plugin.
	 * <p>
	 * This is API.
	 * </p>
	 * 
	 * @return the singleton instance.
	 */
	@Override
	public Implementation getPlugin() {
		return Implementation.plugin;
	}


	/**
	 * The actual implementation of the Eclipse <b>Plugin</b>.
	 */
	public static class Implementation extends EclipsePlugin {

		/** The activator. */
		private static Implementation plugin;

		/**
		 * Creates an instance.
		 */
		public Implementation() {
			// unlike usual activators which use 'start' and 'stop', 
			// EMF registers the singleton at creation.
			plugin = this;
		}
	}

}


