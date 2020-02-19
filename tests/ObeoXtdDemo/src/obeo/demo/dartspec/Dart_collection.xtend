package obeo.demo.dartspec

import fr.obeo.dsl.dart.dart.Folder
import fr.obeo.dsl.dart.dart.Import
import fr.obeo.dsl.dart.dart.Library
import org.eclipse.emf.ecore.EObject
import org.mypsycho.modit.emf.EModIt
import static extension obeo.demo.dartspec.DartProject.*

class Dart_collection {
	val DartProject context
	val extension EModIt factory

	new(DartProject parent) {
		this.context = parent
		this.factory = parent.factory
	}

	def Folder createContent() {
		Folder.createAs("Dart_collection") [
			name = "dart:collection"
			assets += Library.create [
				name = "collection.dart"
				imports += Import.create [
					dartResource = Library.ref("Dart_math")[ ((it as Folder).assets.atNamed("math.dart") as Library) ]
				]
			]
		]
	}

	def getExtras() { context.extras }
}
