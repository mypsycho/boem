package obeo.demo

import dartspec.DartProject
import fr.obeo.dsl.dart.dart.DartPackage
import java.io.File
import org.eclipse.emf.ecore.xmi.XMLResource

class DartModitWrite {

	static val TARGET = new File("target/test/model/dartlang2.dartspec")

	static val LOADER = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")

	def static void main(String[] args) {

		LOADER.saveModel(new DartProject().content.root, TARGET, XMLResource.OPTION_LINE_WIDTH -> 4)

		println("File saved: " + TARGET)

	}

}
