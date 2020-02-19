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
