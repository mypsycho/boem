package obeo.demo.reverse

import dartspec.DartProject
import fr.obeo.dsl.dart.dart.DartPackage
import java.io.File
import obeo.demo.XmiEcoreLoader
import org.eclipse.emf.ecore.xmi.XMLResource


/**
 * This class serialize the generated class DartProject.
 * <p>
 * It is usefull to check the result of DartReverse generation.
 * </p>
 * <p>
 * The demo cannot be performed in JUnit as a compilation phase is required.
 * </p>
 */
class DartModitWrite {

	static val TARGET = new File("target/test/model/dartlang2.dartspec")

	static val LOADER = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")

	def static void main(String[] args) {

		LOADER.saveModel(new DartProject().content.root, TARGET, XMLResource.OPTION_LINE_WIDTH -> 4)

		println("File saved: " + TARGET)

	}

}
