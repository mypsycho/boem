package org.mypsycho.modit.emf.sirius

import org.eclipse.emf.ecore.EObject

class SiriusModelProviderService {
	new() {
		System.out.println("new ExtPvCustomService");
	}
	
	static def Object moditInvoke(EObject it, int providerId, int methodId, Object params) {
		MisActivator.instance.getProvider(providerId).invoke(methodId, it, params)
	}
}