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
package org.mypsycho.modit.emf.sirius.internal

import org.eclipse.emf.ecore.EObject
import org.mypsycho.modit.emf.sirius.MisActivator
import org.mypsycho.modit.emf.sirius.SiriusModelProvider

class SiriusModelProviderService {
	
	interface Callback {
		def Object invoke(int methodId, EObject value, Object params)
	}
	
	static def Object moditInvoke(EObject it, int providerId, int methodId, Object params) {
		MisActivator.instance.getProvider(providerId).invoke(methodId, it, params)
	}
	
	static def Object moditResInvoke(EObject it, String provider, int methodId, Object params) {
		MisActivator.instance.getProvider(provider)?.invoke(methodId, it, params)
	}
	
	static def String toAql(SiriusModelProvider it, int methodId, Pair<String, String> params) {
		if (id == SiriusModelProvider.RESOURCE_MODE) 
'''aql:«params.key».moditResInvoke(«class.name», «methodId», Sequence{«params.value»})'''
		else
		// Warning: no space between Sequence
'''aql:«params.key».moditInvoke(«id», «methodId», Sequence{«params.value»})'''
	}
}