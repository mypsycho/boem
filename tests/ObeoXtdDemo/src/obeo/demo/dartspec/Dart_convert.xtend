package obeo.demo.dartspec

import fr.obeo.dsl.dart.dart.Folder
import fr.obeo.dsl.dart.dart.Library
import org.mypsycho.modit.emf.EModIt

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
