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
package org.mypsycho.modit.emf;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreEList;

/** 
 * Interface for element managed by ModitResourceFactory.
 * <p>
 * It must contain at least an public constructor without argument.
 * </p>
 * @author nperansin
 */
public interface ModitModel {

	/** 
	 * Load the content of this model into the provided resource.
	 * @param resource to load
	 * @return model content
	 */
	Collection<? extends EObject> loadContent(Resource resource);

	// Only works for feature with keys
	@SuppressWarnings("unchecked")
	static <R extends EObject> R at(EList<?extends EObject> values, Class<R> type, Object... keys) {
		List<EAttribute> attKeys = ((EReference) ((EcoreEList<?>) values).getFeature()).getEKeys();
		
		if (keys.length != attKeys.size()) {
			throw new IllegalArgumentException("Wrong args size: " 
				+ keys.length + " instead of " + attKeys.size()
			);
		}
		return (R) values.stream().filter(it -> type.isInstance(it) 
				&& Arrays.equals(keys, attKeys.stream().map(att -> it.eGet(att)).toArray()   ))
				.findFirst().orElse(null);
			
		
	}
	
	// Only works for feature with keys
	@SuppressWarnings("unchecked")
	static <R extends EObject> R at(EList<R> values, Object... keys) {
		return (R) at(values, EObject.class, keys);
	}
	
	@SuppressWarnings("unchecked")
	static <T extends EObject> T eObject(ResourceSet rs, Class<T> type, String uri) {
		return (T) rs.getEObject(URI.createURI(uri), true);
	}


}
