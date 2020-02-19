package obeo.demo.dartspec

import fr.obeo.dsl.dart.dart.Folder
import fr.obeo.dsl.dart.dart.Library
import org.eclipse.emf.ecore.EObject
import org.mypsycho.modit.emf.EModIt
import static extension obeo.demo.dartspec.DartProject.*

class Dart_math {
	val DartProject context
	val extension EModIt factory

	new(DartProject parent) {
		this.context = parent
		this.factory = parent.factory
	}

	def Folder createContent() {
		Folder.createAs("Dart_math") [
			name = "dart:math"
			assets += Library.create [
				name = "math.dart"
			]
		]
	}

	def getExtras() { context.extras }
}
