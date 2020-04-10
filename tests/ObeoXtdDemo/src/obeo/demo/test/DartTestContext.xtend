package obeo.demo.test

import fr.obeo.dsl.dart.dart.DartPackage
import fr.obeo.dsl.dart.dart.Named
import org.eclipse.emf.ecore.EObject
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.stretch.EmfStretcher

class DartTestContext {
	
	
	protected static val extension EmfStretcher STRETCHER = 
		new EmfStretcher(DartPackage.eINSTANCE) => [
			initialize
			DartContribution.init(it)
		]


	
	protected static extension final EModIt factory = EModIt.using(DartPackage.eINSTANCE) [ desc|
		desc.idProvider = [ // Create an ID when QName is defined
			val parent = eContainer
			val name = toName
			if ((name === null) || name.empty) null
			else if (parent === null) name 
			else desc.idProvider.apply(parent) ?.concat("::" + name) ?: null
		]
		desc.contentProvider = [ content, it |
			if (it instanceof Named) name = content
			else throw new UnsupportedOperationException("No content provider for " + it)
		]
	]
	
	static def String toName(EObject it) {
		if (it instanceof Named) name
	}
	
	def static onAll(EObject it) { #[ it ] + [ eAllContents() ] }
	
	static def String indent(EObject it) {
		if (eContainer === null) "" else " " + eContainer.indent
	}
	
	
}