package dartspec

import fr.obeo.dsl.dart.dart.Class
import fr.obeo.dsl.dart.dart.Folder
import fr.obeo.dsl.dart.dart.Import
import fr.obeo.dsl.dart.dart.Library
import fr.obeo.dsl.dart.dart.Metadata
import fr.obeo.dsl.dart.dart.Package
import fr.obeo.dsl.dart.dart.Project
import java.util.HashMap
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.mypsycho.emf.modit.EModIt

class DartProject {

	public val extras = new HashMap<String, EObject> 

	public extension EModIt factory = EModIt.using(
		fr.obeo.dsl.dart.dart.DartPackage.eINSTANCE
	)

	def content() {
		"DartProject".aliasCreate(Project) [
			name = "Dart"
			packages += "Dart Standard Library".aliasCreate(Package) [
				name = "Dart Standard Library"
				assets += "dart:collection".aliasCreate(Folder) [
					name = "dart:collection"
					assets += Library.create [
						name = "collection.dart"
						imports += Import.create [
							dartResource = Library.ref("dart:math")[ ((it as Folder).assets.at("math.dart") as Library) ]
						]
					]
				]
				assets += "dart:convert".aliasCreate(Folder) [
					name = "dart:convert"
					assets += Library.create [
						name = "convert.dart"
					]
				]
				assets += "dart:core".aliasCreate(Folder) [
					name = "dart:core"
					assets += Library.create [
						name = "core.dart"
						parts += Class.ref("dart:core")[ ((it as Folder).assets.at("bool") as Class) ]
						parts += Class.ref("dart:core")[ ((it as Folder).assets.at("Object") as Class) ]
						parts += Class.ref("dart:core")[ ((it as Folder).assets.at("int") as Class) ]
						parts += Class.ref("dart:core")[ ((it as Folder).assets.at("List") as Class) ]
						parts += Class.ref("dart:core")[ ((it as Folder).assets.at("map") as Class) ]
						parts += Class.ref("dart:core")[ ((it as Folder).assets.at("double") as Class) ]
						parts += Class.ref("dart:core")[ ((it as Folder).assets.at("String") as Class) ]
						imports += Import.create [
							dartResource = Library.ref("dart:collection")[ ((it as Folder).assets.at("collection.dart") as Library) ]
						]
						imports += Import.create [
							dartResource = Library.ref("dart:convert")[ ((it as Folder).assets.at("convert.dart") as Library) ]
						]
						imports += Import.create [
							dartResource = Library.ref("dart:math")[ ((it as Folder).assets.at("math.dart") as Library) ]
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
				assets += "dart:math".aliasCreate(Folder) [
					name = "dart:math"
					assets += Library.create [
						name = "math.dart"
					]
				]
			]
		].assemble
	}

	def context() { this }

	def <T extends fr.obeo.dsl.dart.dart.Named> at(Iterable<T> values, Object key) {
		values.findFirst[ name == key ]
	}

}
