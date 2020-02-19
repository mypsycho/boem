package org.mypsycho.modit.emf.sirius;

import java.nio.file.Path
import java.util.ArrayList
import java.util.Collections
import org.eclipse.core.runtime.IExtension
import org.eclipse.core.runtime.Platform
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.util.EcoreUtil
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.RepresentationDescription
import org.eclipse.sirius.viewpoint.description.RepresentationExtensionDescription
import org.eclipse.sirius.viewpoint.description.Viewpoint
import org.eclipse.xtend.lib.annotations.Accessors
import org.mypsycho.modit.emf.ClassId
import org.mypsycho.modit.emf.EReversIt

/**
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
				
			aliases.put(source, classId.name)
			 
			explicitExtras.putAll(usedMetamodels)

			explicitExtras.putAll(source.systemColorsPalette.entries.toInvertedMap[ "Color#" + name ])

		]
	}
	
	def findDefaultSplits() {
		source.ownedViewpoints
				.map[ ownedRepresentationExtensions ].flatten
				.toInvertedMap[ new ClassId(classId.pack, toClassname) ]
	}
	
	
	def getUsedMetamodels() {
		// Find them just once
		val emfExtensions = Platform.extensionRegistry
			.getExtensionPoint("org.eclipse.emf.ecore.generated_package")
			?.extensions
		
		// we need a copy as resources list is extended by navigation
		new ArrayList(rs.resources)
			.map[ o | [ o.allContents ] as Iterable<EObject> ].flatten
			.map[ metamodels ].flatten.toSet
			// Some metamodels may be identified by reflection
			.map[ getCanonicalPackage(emfExtensions) ].toSet
			.toInvertedMap[ nsURI ]
	}
	
	def getCanonicalPackage(EPackage epack, IExtension[] emfExtensions) {
		// Sometimes odesign provides the reflexive instance 
		// The resource-loaded instance is better.
		val uri = EcoreUtil.getURI(epack)
		// no public constant for those in URI. (Why ?)
		if (uri.scheme == "platform" && uri.segments.head == "plugin") 
			epack
		// Search which plugin declare it
		else {
			emfExtensions.map[ configurationElements.toList ].flatten
				.filter[ "package" == name && getAttribute("uri") == epack.nsURI ]
				.forEach[ println('emf:' + epack.nsURI + ' = ' + contributor) ]
			
			// FIXME end this
			
			epack
		}
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
	
	def toClassname(RepresentationExtensionDescription it) {
		name.camel
	}
	
	static def camel(String it) {
		split("\\s+").join("")[ toLowerCase.toFirstUpper ]
	}
	
	protected static class Engine extends EReversIt {
		new(String classname, Path dir, Resource res) {
			super(classname, dir, res)
		}
		
		override getMainStaticImports() {
			super.mainStaticImports + #[ SiriusModelProvider ]
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
