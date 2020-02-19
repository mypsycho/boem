package obeo.demo.dartspec

import fr.obeo.dsl.dart.dart.Folder
import fr.obeo.dsl.dart.dart.Library
import org.eclipse.emf.ecore.EObject
import org.mypsycho.modit.emf.EModIt
import static extension obeo.demo.dartspec.DartProject.*

class Dart_convert {
	val DartProject context
	val extension EModIt factory

	new(DartProject parent) {
		this.context = parent
		this.factory = parent.factory
	}

	def Folder createContent() {
		Folder.createAs("Dart_convert") [
			name = "dart:convert"
			assets += Library.create [
				name = "convert.dart"
			]
		]
	}

	def getExtras() { context.extras }
}
