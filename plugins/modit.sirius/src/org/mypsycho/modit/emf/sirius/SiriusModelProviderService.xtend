package org.mypsycho.modit.emf.sirius

import org.eclipse.emf.ecore.EObject

class SiriusModelProviderService {
	
	static def Object moditInvoke(EObject it, int providerId, int methodId, Object params) {
		MisActivator.instance.getProvider(providerId).invoke(methodId, it, params)
	}
	
	static def Object moditResInvoke(EObject it, String provider, int methodId, Object params) {
		MisActivator.instance.getProvider(provider)?.invoke(methodId, it, params)
	}
	
	protected static def String toAql(SiriusModelProvider it, int methodId, Pair<String, String> params) {
		if (id == SiriusModelProvider.RESOURCE_MODE) 
'''aql:«params.key».moditResInvoke(«class.name», «methodId», Sequence{«params.value»})'''
		else
		// Warning: no space between Sequence
'''aql:«params.key».moditInvoke(«id», «methodId», Sequence{«params.value»})'''
	}
}