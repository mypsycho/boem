package org.mypsycho.modit.emf.sirius

import org.mypsycho.modit.emf.ModitModel
import org.mypsycho.modit.emf.ModitResourceFactory

/**
 * Resource Factory used to load Sirius model with dynamic expression.
 * <p>
 * It should only be used by MisActivator service.
 * </p>
 */
class DesignFactory extends ModitResourceFactory {

	public static final String EXTENSION = "modit_sirius"


	new() {
		super(EXTENSION)
	}

	override toContent(Object it, ClassResource res) {
		res.contents += (it as SiriusModelProvider).registerContent(res)
	}

	def static toSiriusUri(String pluginId, Class<? extends SiriusModelProvider> clazz) {
		pluginId.toUri(clazz, EXTENSION)
	}
	
	def static toSiriusPluginPath(String pluginId, Class<? extends SiriusModelProvider> clazz) {
		pluginId.toPluginPath(clazz, EXTENSION)
	}  
}
