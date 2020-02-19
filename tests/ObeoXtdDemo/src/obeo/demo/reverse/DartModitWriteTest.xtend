package obeo.demo.reverse

import fr.obeo.dsl.dart.dart.DartPackage
import java.nio.file.Paths
import obeo.demo.XmiEcoreLoader
import obeo.demo.dartspec.DartProject
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.xmi.XMLResource
import org.junit.Test
import org.mypsycho.modit.emf.ModitResourceFactory

/**
 * This class serialize the generated class DartProject.
 * <p>
 * It is useful to check the result of DartReverse generation.
 * </p>
 */
class DartModitWriteTest {

	static val PLUGIN_ID = "org.mypsycho.emf.modit.ObeoXtdDemo"

	static val TARGET_PATH = Paths.get("target/test/model")

	// static val TARGET = new File(/")

	static val LOADER = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")

	@Test
	def void testClassModelWrite() {

		val target = TARGET_PATH.resolve("dartlang_class.dartspec")
		LOADER.saveModel(new DartProject().buildModel.root, 
			target,
			XMLResource.OPTION_LINE_WIDTH -> 4)

		println("File saved: " + target)

	}
	

	@Test
	def void testUriModelWrite() {
		val target = TARGET_PATH.resolve("dartlang_uri.dartspec")

		val rs = new ResourceSetImpl
		// Uncomment to test without Eclipse extension points.
//		rs.resourceFactoryRegistry
//			.extensionToFactoryMap
//			.put(ModitResourceFactory.DEFAULT_EXTENSION, new ModitResourceFactory())
		val value = rs.getResource(ModitResourceFactory.toUri(PLUGIN_ID, DartProject), true).contents.head

		LOADER.saveModel(value, target, XMLResource.OPTION_LINE_WIDTH -> 4)

		println("File saved: " + target)

	}
	

}
