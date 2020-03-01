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
package org.mypsycho.modit.emf.sirius;

import java.nio.file.Path
import java.util.ArrayList
import java.util.Collections
import java.util.HashMap
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.util.EcoreUtil
import org.eclipse.sirius.properties.ViewExtensionDescription
import org.eclipse.sirius.viewpoint.description.DescriptionPackage
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.RepresentationDescription
import org.eclipse.sirius.viewpoint.description.RepresentationExtensionDescription
import org.eclipse.sirius.viewpoint.description.Viewpoint
import org.eclipse.xtend.lib.annotations.Accessors
import org.mypsycho.modit.emf.ClassId
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.EReversIt
import org.mypsycho.modit.emf.ModitModel

/**
 * 
 * add following plugins 
 * org.eclipse.sirius.properties
 * org.eclipse.sirius.table
 * org.mypsycho.emf.modit.sirius
 * 
 * @author nperansin
 */
class SiriusReverseIt {

	val rs = new ResourceSetImpl()
	val Group source
	val ClassId classId
	
	@Accessors
	val Engine engine
	
	new(String odesignUri, Path dir, String classname) {
		
		classId = new ClassId(classname)
		source = URI.createPlatformPluginURI(odesignUri, true).loadSiriusGroup
		
		engine = source.eResource.createEngine(classname, dir) => [
			
			// Split RepresentationDescription DiagramExtensionDescription
			splits.putAll(findDefaultSplits)
			 
			explicitExtras.putAll(usedMetamodels)

			explicitExtras.putAll(source.systemColorsPalette.entries.toInvertedMap[ "color:" + name ])

			shortcuts += DescriptionPackage.eINSTANCE.identifiedElement_Name
		]
	}
	
	def findDefaultSplits() {
		(
			source.ownedViewpoints
				.map[ ownedRepresentations + ownedRepresentationExtensions ]
				.flatten
			+ source.extensions.filter(ViewExtensionDescription)
		).toInvertedMap[ 
			new ClassId(classId.pack, toClassname)
		]
	}
	
	
	def getUsedMetamodels() {		
		// we need a copy as resources list is extended by navigation
		new ArrayList(rs.resources)
			.map[ o | [ o.allContents ] as Iterable<EObject> ].flatten
			.map[ metamodels ].flatten.toSet
			.toInvertedMap[
				// To improve: Sirius stores 2 kinds of Package instances.
				// We must keep both in reverse so they are found in call tree.
				val uri = EcoreUtil.getURI(it)
				if (uri.scheme == "platform" && uri.segments.head == "plugin") 
					"ecore:" + nsURI 
				else "epackage:" + nsURI
			]
	}
	
	def getMetamodels(Object it) {
		if (it instanceof RepresentationExtensionDescription) metamodel
		else if (it instanceof RepresentationDescription) metamodel
		else Collections.emptyList
	}
	
	def aliasViewpoints(String prefix, String groupUri) {
		engine.explicitExtras.putAll(
			URI.createURI(groupUri).loadSiriusGroup
				.ownedViewpoints.toInvertedMap[ toVpAlias(prefix) ]
		)
	}
	
	def loadSiriusGroup(URI uri) { rs.getResource(uri, true).contents.head as Group }
	
	def toVpAlias(Viewpoint it, String prefix) { "VP:" + prefix + "#" + name }
	
	def createEngine(Resource content, String classname, Path dir) {
		new Engine(classname, dir, content)
	}
	
	def perform() { engine.perform }
	

	def dispatch toClassname(RepresentationDescription it) {
		name.camel
	}	
	
	def dispatch toClassname(RepresentationExtensionDescription it) {
		name.camel
	}
	
	def dispatch toClassname(ViewExtensionDescription it) {
		name.camel
	}
	
	static def camel(String it) {
		split("\\s+").join("")[ toFirstUpper ]
	}
	
	// Only used in SiriusModelProvider class.
	static val UNUSED_IMPORTS = #[ HashMap, ResourceSetImpl, Accessors, EModIt, ModitModel ]
	
	protected static class Engine extends EReversIt {
		new(String classname, Path dir, Resource res) {
			super(classname, dir, res)
		}
		
		override getMainStaticImports() {
			super.mainStaticImports
				.filter[ !UNUSED_IMPORTS.contains(it)]
			+ #[ SiriusModelProvider ]
		}
		
		override templateMain(Iterable<Class<?>> packages, ()=>String content) {
'''package «mainClass.pack»

«templateImports»

class «mainClass.name» extends SiriusModelProvider {

	new(Resource rs) { super(rs) } 

«
IF !implicitExtras.empty || !explicitExtras.empty
»	override initExtras(ResourceSet it) {
		«templateExtras»
	}

«
ENDIF // extras
»	override initContent(Group it) {
		«content.apply»
	}

	def context() { this }

	«templateCommonQueries»

}
'''
		}
		
	// Xtend
	override templateSimpleContent(EObject it) {
		// inspired from templateInnerCreate
'''
«
FOR c : innerContent SEPARATOR statementSeparator 
»«templateProperty(c.key, c.value)»«
ENDFOR
»'''
		}
		
	}
}
