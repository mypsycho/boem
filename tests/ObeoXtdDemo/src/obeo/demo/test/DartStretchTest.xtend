package obeo.demo.test

import fr.obeo.dsl.dart.dart.Class
import fr.obeo.dsl.dart.dart.Component
import fr.obeo.dsl.dart.dart.DartPackage
import fr.obeo.dsl.dart.dart.Function
import fr.obeo.dsl.dart.dart.Named
import fr.obeo.dsl.dart.dart.Package
import fr.obeo.dsl.dart.dart.Parameter
import fr.obeo.dsl.dart.dart.Project
import java.io.File
import obeo.demo.XmiEcoreLoader
import org.eclipse.emf.ecore.EObject
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.stretch.EmfStretcher

/**
 * TODO transform into a JUnit
 * 
 */
class DartStretchTest extends DartTestContext {

	static val extension EmfStretcher STRETCHER = DartContribution.STRETCHER
	
	static extension final EModIt factory = EModIt.using(DartPackage.eINSTANCE) [ desc|
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
	
	def static void main(String... args) {
		
		val extension context = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")
		
				// Loading model
		val Project content = loadModel(new File("model/dartlang.dartspec").toURI) as Project
		
		// Counting
		println('''There are «content.onAll.size» elements.''') // 
		// Showing names
		println("Named elements were: ")
		content.onAll.map[ it -> toName ].filter[ value !== null ].forEach[
			println('''<«key.eClass().getName()»> «value»''')
		]

		// Do some real stuff
		content.appendContent

		println("Named elements are: ")
		println('''There are «content.onAll.size» elements.''') // 37
		content.onAll.forEach[ println(indent + xCall(String)) ]
		
		println("Qualified elements are: ")
		content.onAll.map[ xCall(String->String) as String ].filterNull.forEach[ println(it) ]
	}
	
	static def String indent(EObject it) {
		if (eContainer === null) "" else " " + eContainer.indent
	}
	
	
	static def appendContent(Project content) {
		content => [
			packages += #[ 
				Package.create("myBusiness") [
					dependencies += Package.ref(content.name + "::myShared")
					assets += Component.create("MyCoreSystem") [
						extends = Class.ref(content.name + "::myShared::AbtractComponent")
						methods += #[
							Function.create("doRun")
				] ] ], 
				Package.create("myShared") [
					assets += #[
							Class.create("AbtractComponent") [
								abstract = true
								methods += #[
									Function.create("init") [
										parameters += #[
											Parameter.create("args") [
												type = Class.ref(content.name + "::Dart Standard Library::dart:core::List")
											],
											Parameter.create("context") [
												// type = Class.ref(content.name + "::Dart Standard Library::dart:core::List")
											]
									]	], 
									Function.create("start"), 
									Function.create [
										// name = <undefined>
										type = Class.ref(content.name + "::Dart Standard Library::dart:core::List")
									], 
									Function.create("stop"), 
									Function.create("isRunning") [
										type = Class.ref(content.name + "::Dart Standard Library::dart:core::bool")
			]	] ] ] ] ]
			assemble // Resolve all references 
		]
	}
	
}