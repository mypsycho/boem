package obeo.demo

import fr.obeo.dsl.dart.dart.Container
import fr.obeo.dsl.dart.dart.DartPackage
import java.io.File
import java.nio.charset.Charset
import java.nio.file.Paths
import org.mypsycho.emf.modit.EReversIt

import static extension java.nio.file.Files.*

class DartReverse {
	
	static val ORIGIN = new File("model/dartlang.dartspec").toURI
	static val LOADER = new XmiEcoreLoader(DartPackage.eINSTANCE, "dartspec")
	
	static val TARGET_PATH = Paths.get("src-gen") 
    
	def static void main(String[] args) {
		
		val content = LOADER.loadModel(ORIGIN)
		
		val rv = new EReversIt('dartspec.DartProject', 
			TARGET_PATH.createDirectories, 
			content.eResource
		)
		rv.shortcut = DartPackage.eINSTANCE.named_Name
		rv.encoding = Charset.forName("UTF-8")
		content.eAllContents.forEach[ 
			if (it instanceof Container) // auto-cast
				if (name !== null && !name.empty) rv.aliases.put(it, name)
		]
		rv.perform
		println("Reverse performed.")


	}
	
}