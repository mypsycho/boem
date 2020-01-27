package org.mypsycho.modit.emf.sirius

import org.eclipse.emf.ecore.EObject

class SiriusModelProviderService {
	
	static def Object moditInvoke(EObject it, int providerId, int methodId, Object params) {
		MisActivator.instance.getProvider(providerId).invoke(methodId, it, params)
	}
	
	static def Object moditResInvoke(EObject it, String provider, int methodId, Object params) {
		MisActivator.instance.getProvider(provider)?.invoke(methodId, it, params)
	}
}