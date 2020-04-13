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

import java.util.Collection
import java.util.Collections
import java.util.Set
import org.eclipse.emf.common.notify.Notification
import org.eclipse.emf.common.util.ECollections
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EOperation
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.ETypedElement
import org.eclipse.emf.edit.provider.IItemLabelProvider
import org.eclipse.emf.edit.provider.INotifyChangedListener
import org.eclipse.emf.edit.provider.ViewerNotification
import org.mypsycho.modit.emf.stretch.EmfStretcher

/**
 * This Class is used by ModitItemProviderAdapter to listen to associated Elements.
 * 
 * @author nperansin
 */
class ModitItemProviderForwarder implements INotifyChangedListener {
	
	val boolean cascade
	val Collection<? extends ETypedElement> dependencyRefs
	
	val ModitItemProviderAdapter parent
	
	
	var forwarding = false
	
	new(extension EmfStretcher stretcher, ModitItemProviderAdapter adapter, EClass type) {
		parent = adapter
		cascade = (type * ModitEditListeners.CASCADE)
		dependencyRefs = (type * ModitEditListeners.DEPENDENCIES).checkNavigable
	}
		
	
	override notifyChanged(Notification it) {
		if (forwarding 
			|| parent.target === null 
			|| notifier === null 
			|| !notifier.referenceInstance
		) {
			return
		}
		
		notifyChanged(parent.target as EObject)
		
		for (target : parent.otherTargets) {
			notifyChanged(target as EObject)
		}
	}
	
	def Iterable<? extends EObject> getAssociatedElements(EObject target) {
		target.accumulateAssociatedElements(newHashSet(target))
	}
	
	def Set<EObject> accumulateAssociatedElements(EObject target, Set<EObject> accuml) {
		val elements = target.directAssociateds.toSet
			// using a flat map ensure an editable set is returned

		
		// keep only not accumulated
		elements -= accuml
		
		accuml += elements
		
		if (!elements.empty && cascade) {
			for (value : elements) { // no stream as (value, IItemLabelProvider) is needed
				val itemProvider = parent.adapterFactory.rootAdapterFactory
					.adapt(value, IItemLabelProvider)
				if (itemProvider instanceof ModitItemProviderAdapter) {
					itemProvider.forwarder?.accumulateAssociatedElements(value, accuml)
				}
			}
		}
		
		accuml
	}
	
	def Iterable<? extends EObject> getDirectAssociateds(EObject target) {
		dependencyRefs.map[
			val value = if (it instanceof EReference) target.eGet(it)
				else target.eInvoke(it as EOperation, ECollections.EMPTY_ELIST)
			
			if (value === null)
				Collections.emptyList
			else if (value instanceof Collection) 
				value as Collection<? extends EObject>
			else #[ value as EObject ]
		].flatten
	}
	
		
	private def notifyChanged(Notification it, EObject target) {
		if(notifier !== null && target.directAssociateds.contains(notifier)) {
			forwarding = true // enough to cascade every time ??
			parent.fireNotifyChanged(new ViewerNotification(it, target, false, true))
			forwarding = false
		}
	}
		
		
	def isReferenceInstance(Object value) {
		dependencyRefs.exists[
			EType.instanceClass.isInstance(value)
		]
	}
	
	
	/**
	 * Checks the provided elements can be used as reference provider.
	 * <p>
	 * Typically only EReference and EOperations of EObjects are supported.
	 * <p>
	 * @param it elements to verify
	 * @return provided collection if checks
	 * @throw UnsupportedOperationException
	 */
	static def checkNavigable(Collection<? extends ETypedElement> it) {
		if (exists[ !navigable ]) {
			throw new UnsupportedOperationException(
				'''Following elements cannot be used as dependencies: «
					filter[ !navigable ].join(',')[ 
						'''«name» («eClass.name»)'''
					]»'''
			)
		}
		it
	}
	
	/**
	 * Tests if an operation can be used as reference of EObjects.
	 * <p>
	 * Typically only EReference and EOperations of EObjects are supported.
	 * <p>
	 * @param it element to verify
	 * @return true if navigable
	 */
	static def isNavigable(ETypedElement it) {
		if (it instanceof EOperation) 
			EParameters.empty && EObject.isAssignableFrom(EType.instanceClass)	
		else it instanceof EReference
	}
	

}