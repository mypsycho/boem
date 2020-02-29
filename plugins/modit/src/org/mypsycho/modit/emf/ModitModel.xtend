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
package org.mypsycho.modit.emf

import java.util.Collection
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.Resource

/** 
 * Interface for element managed by ModitResourceFactory.
 * <p>
 * It must contain at least an public constructor without argument.
 * </p>
 * @author nperansin
 */
interface ModitModel {
	/** 
	 * Load the content of this model into the provided resource.
	 * @param resource to load
	 * @return model content
	 */
	def Collection<? extends EObject> loadContent(Resource resource)

}
