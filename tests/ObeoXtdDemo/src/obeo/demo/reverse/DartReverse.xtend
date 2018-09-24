package obeo.demo.reverse

import fr.obeo.dsl.dart.dart.Container
import fr.obeo.dsl.dart.dart.DartPackage
import java.io.File
import java.nio.charset.Charset
import java.nio.file.Paths
import obeo.demo.XmiEcoreLoader
import org.mypsycho.modit.emf.EReversIt

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

	static val TARGET_PATH = Paths.get("src-gen")

	def static void main(String[] args) {

		val content = LOADER.loadModel(ORIGIN)

		val rv = new EReversIt(
			'dartspec.DartProject',
			TARGET_PATH.createDirectories,
			content.eResource
		)
		rv.shortcut = DartPackage.eINSTANCE.named_Name
		rv.encoding = Charset.forName("UTF-8")
		content.eAllContents.forEach [ // Double 'if' for auto-cast.
			if (it instanceof Container) if (name !== null && !name.empty) rv.aliases.put(it, name)
		]
		rv.perform
		println("Reverse performed.")

	}

}
