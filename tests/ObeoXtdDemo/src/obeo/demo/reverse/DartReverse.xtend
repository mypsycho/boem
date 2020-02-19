package obeo.demo.reverse

import fr.obeo.dsl.dart.dart.Container
import fr.obeo.dsl.dart.dart.DartPackage
import fr.obeo.dsl.dart.dart.Folder
import fr.obeo.dsl.dart.dart.Package
import java.io.File
import java.nio.charset.Charset
import java.nio.file.Files
import java.nio.file.Paths
import obeo.demo.XmiEcoreLoader
import org.junit.Test
import org.mypsycho.modit.emf.ClassId
import org.mypsycho.modit.emf.EReversIt

import static org.junit.Assert.assertEquals

import static extension java.nio.file.Files.*

/**
 * This class generates the equivalent of "model/dartlang.dartspec" into a class in "src-gen".
 * <p>
 * It is possible to compare the generate model with the original model using DartModitWrite class.
 * </p>
 * <p>
 * The demo cannot be performed in JUnit as a compilation phase is required.
 * </p>
 */
class DartReverse {

	static val ORIGIN = new File("model/dartlang.dartspec").toURI

	static val LOADER = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")

	static val TARGET_PATH = Paths.get("target/test/src-gen")
	
	static val REF_PATH = Paths.get("src/obeo/demo/dartspec")

	static val TARGET_JPACKAGE = 'obeo.demo.dartspec.'

	static val EXPECTED_PATH = TARGET_PATH.resolve(TARGET_JPACKAGE.replace(".", "/"))

	@Test
	def void testReverse() {

		val content = LOADER.loadModel(ORIGIN)

		val rv = new EReversIt(
			TARGET_JPACKAGE + 'DartProject',
			TARGET_PATH.createDirectories,
			content.eResource
		)

		rv.encoding = Charset.forName("UTF-8")
		rv.shortcuts += DartPackage.eINSTANCE.named_Name
		content.eAllContents.forEach [ // Double 'if' for auto-cast.
			var noAlias = false
			
			if (it instanceof Folder) if (shouldSplit) {
				rv.splits.put(it, toSplitId)
				noAlias = true
			}
			if (it instanceof Container) if (!noAlias && name !== null && !name.empty) 
				rv.aliases.put(it, name)
		]
		
		rv.perform

		Files.list(EXPECTED_PATH)
			.filter[ Files.isRegularFile(it) ]
			.forEach[
				val ref = REF_PATH.resolve(fileName)
				assertEquals(Files.size(ref), Files.size(it))
			]

	}

	def shouldSplit(Folder it) {
		eContainer instanceof Package
	}
	
	def toSplitId(Folder it) {
		new ClassId(TARGET_JPACKAGE + name.replace(":", "_").toFirstUpper)
	}

}
