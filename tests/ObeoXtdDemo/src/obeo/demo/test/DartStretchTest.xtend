package obeo.demo.test

import fr.obeo.dsl.dart.dart.Class
import fr.obeo.dsl.dart.dart.Component
import fr.obeo.dsl.dart.dart.DartPackage
import fr.obeo.dsl.dart.dart.Function
import fr.obeo.dsl.dart.dart.Package
import fr.obeo.dsl.dart.dart.Parameter
import fr.obeo.dsl.dart.dart.Project
import java.io.File
import obeo.demo.XmiEcoreLoader
import org.junit.Test

import static extension org.junit.Assert.*

/**
 * Test EmfStretcher with some dart model.
 */
class DartStretchTest extends DartTestContext {

	extension XmiEcoreLoader context = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")
	var Project content = new File("model/dartlang.dartspec").toURI.loadModel() as Project


	/**
	 * Test the content of the model resource and testing assertions.
	 */
	@Test
	def void testLoading() {
		
		"Loaded elements".assertEquals(25, content.onAll.size)
		"Loaded elements".assertEquals(
'''<Project> Dart
<Package> Dart Standard Library
<Folder> dart:collection
<Library> collection.dart
<Folder> dart:convert
<Library> convert.dart
<Folder> dart:core
<Library> core.dart
<Class> bool
<Class> double
<Class> Function
<Class> int
<Class> List
<Class> map
<Class> Object
<Class> String
<Metadata> deprecated
<Metadata> override
<Metadata> proxy
<Folder> dart:math
<Library> math.dart'''
				.toString.split("\\R").toList, 
				content.onAll.map[ it -> toName ].filter[ value !== null ]
				 .map[ "<" + key.eClass.name + "> " + value ].toList)
		}
		
		
	/**
	 * Test the content of the model resource plus the dynamic loading with EModIt.
	 */
	@Test
	def void testEdit() {
		content.appendContent
		"all elements".assertEquals(37, content.onAll.size)
	}
	
	/**
	 * Test the XObject contribution.
	 */
	@Test
	def void testToString() {
		content.appendContent

		"Labels of elements".assertEquals(
'''Dart
 Dart Standard Library
  dart:collection
   collection.dart
    [Import]
  dart:convert
   convert.dart
  dart:core
   core.dart
    [Import]
    [Import]
    [Import]
   bool
   double
   Function
   int
   List
   map
   Object
   String
   deprecated
   override
   proxy
  dart:math
   math.dart
 myBusiness
  MyCoreSystem :> AbtractComponent
   doRun()
 myShared
  AbtractComponent
   init(List,<untyped>)
    args : List
    context : <untyped>
   start()
   <unnamed-Function>() : List
   stop()
   isRunning() : bool'''.toString
			.split("\\R").toList, 
			content.onAll.map[
				val result = indent + it * DartContribution.LABEL
				System.err.println(result)
				result
			].toList)
	}

	/**
	 * Test the XObject contribution.
	 */
	@Test
	def void testQualifiedNames() {
		content.appendContent

		"Labels of elements".assertEquals(
'''Dart
Dart/Dart Standard Library
Dart/Dart Standard Library/dart:collection
Dart/Dart Standard Library/dart:collection/collection.dart
Dart/Dart Standard Library/dart:convert
Dart/Dart Standard Library/dart:convert/convert.dart
Dart/Dart Standard Library/dart:core
Dart/Dart Standard Library/dart:core/core.dart
Dart/Dart Standard Library/dart:core/bool
Dart/Dart Standard Library/dart:core/double
Dart/Dart Standard Library/dart:core/Function
Dart/Dart Standard Library/dart:core/int
Dart/Dart Standard Library/dart:core/List
Dart/Dart Standard Library/dart:core/map
Dart/Dart Standard Library/dart:core/Object
Dart/Dart Standard Library/dart:core/String
Dart/Dart Standard Library/dart:core/deprecated
Dart/Dart Standard Library/dart:core/override
Dart/Dart Standard Library/dart:core/proxy
Dart/Dart Standard Library/dart:math
Dart/Dart Standard Library/dart:math/math.dart
Dart/myBusiness
Dart/myBusiness/MyCoreSystem
Dart/myBusiness/MyCoreSystem/doRun()
Dart/myShared
Dart/myShared/AbtractComponent
Dart/myShared/AbtractComponent/init(List,#MISSING_TYPE)
Dart/myShared/AbtractComponent/init(List,#MISSING_TYPE)/args
Dart/myShared/AbtractComponent/init(List,#MISSING_TYPE)/context
Dart/myShared/AbtractComponent/start()
Dart/myShared/AbtractComponent/<unnamed-Function>()
Dart/myShared/AbtractComponent/stop()
Dart/myShared/AbtractComponent/isRunning()'''
			.toString.split("\\R").toList, 
			content.onAll.map[ it * DartContribution.QNAME ].filterNull.toList)
	}


	/**
	 * Add dynamic declaration into provided project.
	 * 
	 * 
	 * @param Project to complete
	 * @return initial project
	 */
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