package obeo.demo.dartspec

import fr.obeo.dsl.dart.dart.Class
import fr.obeo.dsl.dart.dart.Folder
import fr.obeo.dsl.dart.dart.Import
import fr.obeo.dsl.dart.dart.Library
import fr.obeo.dsl.dart.dart.Metadata
import org.mypsycho.modit.emf.EModIt

import static extension obeo.demo.dartspec.DartProject.*

class Dart_core {
	val DartProject context
	val extension EModIt factory

	new(DartProject parent) {
		this.context = parent
		this.factory = parent.factory
	}

	def Folder createContent() {
		Folder.createAs("Dart_core") [
			name = "dart:core"
			assets += Library.create [
				name = "core.dart"
				parts += Class.ref("Dart_core")[ ((it as Folder).assets.atNamed("bool") as Class) ]
				parts += Class.ref("Dart_core")[ ((it as Folder).assets.atNamed("Object") as Class) ]
				parts += Class.ref("Dart_core")[ ((it as Folder).assets.atNamed("int") as Class) ]
				parts += Class.ref("Dart_core")[ ((it as Folder).assets.atNamed("List") as Class) ]
				parts += Class.ref("Dart_core")[ ((it as Folder).assets.atNamed("map") as Class) ]
				parts += Class.ref("Dart_core")[ ((it as Folder).assets.atNamed("double") as Class) ]
				parts += Class.ref("Dart_core")[ ((it as Folder).assets.atNamed("String") as Class) ]
				imports += Import.create [
					dartResource = Library.ref("Dart_collection")[ ((it as Folder).assets.atNamed("collection.dart") as Library) ]
				]
				imports += Import.create [
					dartResource = Library.ref("Dart_convert")[ ((it as Folder).assets.atNamed("convert.dart") as Library) ]
				]
				imports += Import.create [
					dartResource = Library.ref("Dart_math")[ ((it as Folder).assets.atNamed("math.dart") as Library) ]
				]
			]
			assets += Class.create [
				name = "bool"
			]
			assets += Class.create [
				name = "double"
			]
			assets += Class.create [
				name = "Function"
			]
			assets += Class.create [
				name = "int"
			]
			assets += Class.create [
				name = "List"
			]
			assets += Class.create [
				name = "map"
			]
			assets += Class.create [
				name = "Object"
			]
			assets += Class.create [
				name = "String"
			]
			assets += Metadata.create [
				name = "deprecated"
			]
			assets += Metadata.create [
				name = "override"
			]
			assets += Metadata.create [
				name = "proxy"
			]
		]
	}

	def getExtras() { context.extras }
}
