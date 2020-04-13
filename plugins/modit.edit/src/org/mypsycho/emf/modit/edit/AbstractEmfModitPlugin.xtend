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

import org.eclipse.emf.common.EMFPlugin
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.provider.EcoreEditPlugin
import org.eclipse.xtend.lib.annotations.Accessors
import org.mypsycho.modit.emf.stretch.EmfStretcher
import org.eclipse.emf.common.EMFPlugin.EclipsePlugin
import org.eclipse.emf.common.util.ResourceLocator

/**
 * Common abstraction for EMF Plugin using EmfStretcher.
 * 
 * @author nperansin
 */
abstract class AbstractEmfModitPlugin<E extends EclipsePlugin> extends EMFPlugin {
	
	@Accessors
	val EmfStretcher stretcher
	
	/**
	 * Create an instance using default delegate resource locator.
	 * 
	 * @param packages to edit
	 */
	new(EPackage... packages) {
		this(#[ EcoreEditPlugin.INSTANCE], packages)
	}
	
	/**
	 * Create an instance using default delegate resource locator.
	 * 
	 * @param packages to edit
	 */
	new(ResourceLocator[] delegateResLocators, EPackage... packages) {
		super(delegateResLocators)
		stretcher = new EmfStretcher(packages)
	}
	
	
	/**
	 * Returns the singleton instance of the Eclipse plugin.
	 * <p>
	 * This is API.
	 * </p>
	 * 
	 * @return the singleton instance.
	 */
	def E getPlugin()
	
	
	/**
	 * Returns the singleton instance of the Eclipse plugin used as resource location.
	 * 
	 * @return the singleton instance.
	 */
	override getPluginResourceLocator() {
		plugin
	}
	
	
}