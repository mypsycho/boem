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

import java.util.HashMap
import java.util.List
import java.util.Locale
import java.util.Map
import org.eclipse.emf.common.EMFPlugin
import org.eclipse.emf.common.notify.Notifier
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.edit.domain.EditingDomain
import org.eclipse.emf.edit.provider.ChildCreationExtenderManager
import org.eclipse.emf.edit.provider.IChildCreationExtender
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider
import org.eclipse.emf.edit.provider.IItemLabelProvider
import org.eclipse.emf.edit.provider.IItemPropertySource
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider
import org.eclipse.emf.edit.provider.ITreeItemContentProvider
import org.eclipse.emf.edit.provider.ReflectiveItemProviderAdapterFactory
import org.mypsycho.modit.emf.i18n.EmfI18n
import org.mypsycho.modit.emf.stretch.EmfStretcher
import org.eclipse.xtend.lib.annotations.Accessors

class ModitItemProviderAdapterFactory extends ReflectiveItemProviderAdapterFactory 
		implements IChildCreationExtender {

	static val MINUMUM_SUPPORTED_TYPES = #[
		IEditingDomainItemProvider, 
		IStructuredItemContentProvider,
		ITreeItemContentProvider, 
		IItemPropertySource,
		IItemLabelProvider
	]

	@Accessors
	val Locale locale

	@Accessors
	val EMFPlugin anchor

	@Accessors
	protected val extension EmfStretcher descriptor

	val Map<? extends EPackage, ? extends EmfI18n> metaLabels

	val Map<EClass, ModitItemProviderAdapter> providers = new HashMap

	val List<ChildCreationExtenderManager> ccExtManagers


	new(AbstractEmfModitPlugin<?> plugin) {
		this(plugin, Locale.^default)
	}
	
	new(AbstractEmfModitPlugin<?> plugin, Locale locale) {
		this(plugin, plugin.stretcher, locale)
	}
	
	new(EMFPlugin resLoc, EmfStretcher descr) {
		this(resLoc, descr, Locale.^default)
	}

	new(EMFPlugin resLoc, EmfStretcher descr, Locale locale) {
		this.locale = locale
		this.anchor = resLoc
		this.descriptor = descr

		ccExtManagers = newArrayList(descriptor.allSources
			.map[ 
				new ChildCreationExtenderManager(anchor, nsURI)
			])

		metaLabels = descriptor.allSources
			.toInvertedMap[ EmfI18n.get(it, locale) ]
		
		MINUMUM_SUPPORTED_TYPES.forEach[ supportedTypes.add(it) ]

// minimum
//		supportedTypes.add(IEditingDomainItemProvider.class);
//		supportedTypes.add(IStructuredItemContentProvider.class);
//		supportedTypes.add(ITreeItemContentProvider.class);
//		supportedTypes.add(IItemLabelProvider.class);
//		supportedTypes.add(IItemPropertySource.class);
//		supportedTypes.add(IItemColorProvider.class);

// extra
		// supportedTypes.add(IItemColorProvider.class);
		// supportedTypes.add(IItemFontProvider.class);
		// supportedTypes.add(IItemStyledLabelProvider.class);
	}

	/**
	 * Returns the local label of provided class.
	 */
	def getLabel(EClass it) {
		metaLabels.get(getEPackage()).getLabel(it)
	}

	override isFactoryForType(Object it) {
		if (it instanceof EObject) // auto-cast + prevents to catch any EObject
			descriptor.allSources.contains(eClass.EPackage)
		else // NB: Super() catch all EObject
			descriptor.allSources.contains(it) || super.isFactoryForType(it)
	}

	
	override getNewChildDescriptors(Object object, EditingDomain editingDomain) {
		// classic implements also create a new list each time.
		ccExtManagers.map[ getNewChildDescriptors(object, editingDomain) ].flatten.toList
	}

	override getResourceLocator() {
		anchor
	}

	override createAdapter(Notifier target) {
		if (target instanceof EObject) 
			providers.computeIfAbsent(target.eClass)[ createProvider(it) ]
		/* else unexpected: null is default result */
	}

	protected def createProvider(EClass it) {
		new ModitItemProviderAdapter(this, it)
	}

	

	protected def createForwarder(ModitItemProviderAdapter parent, EClass it) {
		new ModitItemProviderForwarder(descriptor, parent, it)
	}


	protected def isForwarderRequired(EClass it) {
		(it * ModitEditListeners.DEPENDENCIES).empty
	}
}
