package obeo.demo

import java.io.File
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.xmi.XMLResource
import org.mypsycho.modit.emf.EDynModit

/**
 * This class is a demo to show how to load/navigate/modify a generated model
 * using a dynamic MOF with EDynModit.
 */
class MainDynLauncher {

	def static onAll(EObject it) { #[ it ] + [ eAllContents() ] }

	def static main(String[] args) {

		val extension context = new EDynModit(
			new File("model/dart.ecore").toURI,
			"dartspec",
			EDynModit.createNameProvider("name", "::")
		)

		// Loading model
		val EObject content = loadModel(new File("model/dartlang.dartspec").toURI)
		// Counting
		println('''There are «content.onAll.size» elements.''')
		// Showing names
		println("Named elements were: ")
		content.onAll.map[it -> toName].filter[value !== null].forEach [
			println('''<«key.eClass().getName()»> «value»''')
		]

		// Do some real stuff
		val extension factory = context.factory
		content => [

			eValues("packages") += #[ 
				eCreate("Package") [
					eSetValue("name", "myBusiness")
					eValues("dependencies") += context.eRef("Package", content.toName + "::myShared")
					eValues("assets") += eCreate("Component") [
						eSetValue("name", "MyCoreSystem")
						// This fails as 
						eSetValue("extends", context.eRef("Class", content.toName + "::myShared::AbtractComponent"))
						eValues("methods") += eCreate("Function")[ eSetValue("name", "doRun") ]
					]
				], 
				eCreate("Package") [
					eSetValue("name", "myShared")
					eValues("assets") += #[
						eCreate("Class") [
							eSetValue("name", "AbtractComponent")
							eSetValue("abstract", true)
							eValues("methods") += #[
								eCreate("Function") [
									eSetValue("name", "init")
									eValues("parameters") += #[
										eCreate("Parameter") [
											eSetValue("name", "args")
											eSetValue("type",
												eRef("Class", content.toName + "::Dart Standard Library::dart:core::List")
											)
										]
									]
								], 
								eCreate("Function") [ eSetValue("name", "start") ], 
								eCreate("Function") [ eSetValue("name", "stop") ], 
								eCreate("Function") [
									eSetValue("name", "isRunning")
									eSetValue(
										"type",
										eRef("Class", content.toName + "::Dart Standard Library::dart:core::bool")
									)
			]	]	]	]	]	]
			assemble // build references 
		]
		println("Named elements are: ")
		content.onAll.forEach[println(context.prettyPrint(it))]

		saveModel(content, new File("target/test/model/dartlang4.dartspec"), XMLResource.OPTION_LINE_WIDTH -> 4)
	}

	/*
	 * Convenient display
	 */
	static def String prettyPrint(extension EDynModit context, EObject it) {
		val prettyDetail = if (eInstanceOf("Class"))
				if (eValue("extends") !== null) " :> " + eEObject("extends").toName else ""
			else if (eInstanceOf("Typed"))
				if (eValue("type") !== null) " : " + eEObject("type").toName else ""
			else if (eInstanceOf("Package"))
				if (!eValues("dependencies").empty) " -> " +
					eValues("dependencies").map[toName ?: "?"].join(",") 
				else ""
			else
				""

		indent + (toName ?: "[" + eClass.name + "]") + prettyDetail
	}

	static def String indent(EObject it) {
		if (eContainer === null) "" else " " + eContainer.indent
	}

	def static toName(EObject it) {
		if (eClass.getEStructuralFeature("name") !== null)
			eGet(eClass.getEStructuralFeature("name")) as String
	}

}
