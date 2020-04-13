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
package org.mypsycho.emf.modit.edit;

import java.util.Collection
import java.util.Collections
import org.eclipse.emf.ecore.ETypedElement
import org.eclipse.emf.ecore.EcorePackage
import org.mypsycho.modit.emf.stretch.EmfToolings

class ModitEditListeners {
	
	public static val ECONTAINER_DEPENDENCIES = EcorePackage.Literals.EOBJECT___ECONTAINER
	
	public static val DEPENDENCIES = EmfToolings
		.<Collection<? extends ETypedElement>>byClass(Collections.emptyList)
	
	public static val CASCADE = EmfToolings.byClass(true)
	

}
