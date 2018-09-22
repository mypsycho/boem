package obeo.demo

import fr.obeo.dsl.dart.dart.Class
import fr.obeo.dsl.dart.dart.Component
import fr.obeo.dsl.dart.dart.DartPackage
import fr.obeo.dsl.dart.dart.Function
import fr.obeo.dsl.dart.dart.Named
import fr.obeo.dsl.dart.dart.Package
import fr.obeo.dsl.dart.dart.Parameter
import fr.obeo.dsl.dart.dart.Project
import fr.obeo.dsl.dart.dart.Typed
import java.io.File
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.xmi.XMLResource
import org.mypsycho.modit.emf.EModIt

import static extension org.eclipse.xtext.xbase.lib.InputOutput.*

/**
 * This class is a demo to show how to load/navigate/modify a model 
 * with EModIt.
 */
class MainLauncher {

	static extension final EModIt factory = EModIt.using(DartPackage.eINSTANCE) [ desc|
		desc.idProvider = [ // Create an ID when QName is defined
			val parent = eContainer
			val name = toName
			if ((name === null) || name.empty) null
			else if (parent === null) name 
			else desc.idProvider.apply(parent) ?.concat("::" + name) ?: null
		]
	]


	def static onAll(EObject it) { #[ it ] + [ eAllContents() ] }

	def static main(String... args) {

		val extension context = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")

		// Loading model
		val Project content = loadModel(new File("model/dartlang.dartspec").toURI) as Project
		
		// Counting
		println('''There are «content.onAll.size» elements.''')
		// Showing names
		println("Named elements were: ")
		content.onAll.map[ it -> toName ].filter[ value !== null ].forEach [
			println('''<«key.eClass().getName()»> «value»''')
		]

		// Do some real stuff
		content => [
			packages += #[ 
				Package.create [
					name = "myBusiness"
					dependencies += Package.ref(content.name + "::myShared")
					assets += Component.create [
						name = "MyCoreSystem"
						extends = Class.ref(content.name + "::myShared::AbtractComponent")
						methods += #[
							Function.create[ name = "doRun" ]
				] ] ], 
				Package.create [
					name = "myShared"
					assets += #[
							Class.create [
								name = "AbtractComponent"
								abstract = true
								methods += #[
									Function.create [
										name = "init"
										parameters += #[
											Parameter.create [
												name = "args"
												type = Class.ref(content.name + "::Dart Standard Library::dart:core::List")
									] ]	], 
									Function.create [
										name = "start"
									], 
									Function.create [
										name = "stop"
									], 
									Function.create [
										name = "isRunning"
										type = Class.ref(content.name + "::Dart Standard Library::dart:core::bool")
			]	] ] ] ] ]
			assemble // Resolve all references 
		]
		"Named elements are: ".println
		content.onAll.forEach[ prettyPrint.println ]

		saveModel(content, new File("target/test/model/dartlang3.dartspec"), XMLResource.OPTION_LINE_WIDTH -> 4)
	}

	/*
	 * Convenient display
	 */
	static def prettyPrint(EObject it) {
		indent + (toName ?: "[" + eClass.name + "]") + prettyDetail
	}

	static dispatch def prettyDetail(EObject it) { "" }

	static dispatch def prettyDetail(Class it) {
		if (extends !== null) " :> " + (extends.name ?: "?") else ""
	}

	static dispatch def prettyDetail(Typed it) {
		if (type !== null) " : " + (type.toName ?: "?") else ""
	}

	static dispatch def prettyDetail(Package it) {
		if (!dependencies.empty) " -> " + dependencies.map[ name ?: "?" ].join(",") else ""
	}

	static def String indent(EObject it) {
		if (eContainer === null) "" else " " + eContainer.indent
	}

	static def String toName(EObject it) {
		if (it instanceof Named) name
	}



}
