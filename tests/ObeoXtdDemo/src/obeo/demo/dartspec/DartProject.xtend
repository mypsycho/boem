package obeo.demo.dartspec

import fr.obeo.dsl.dart.dart.DartPackage
import fr.obeo.dsl.dart.dart.Named
import fr.obeo.dsl.dart.dart.Package
import fr.obeo.dsl.dart.dart.Project
import java.util.HashMap
import org.eclipse.emf.common.util.EList
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.util.EcoreEList
import org.eclipse.xtend.lib.annotations.Accessors
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.ModitModel

class DartProject implements ModitModel {

	@Accessors
	val extras = new HashMap<String, EObject> 

	@Accessors
	protected val extension EModIt factory = EModIt.using(
		DartPackage.eINSTANCE
	)

	override loadContent(Resource it) {
		val values = resourceSet.buildModel.roots
		contents += values
		values
	}

	def buildModel() {
		buildModel(new ResourceSetImpl())
	}

	def buildModel(ResourceSet rs) {
		rs.initExtras()
		createContent
	}

	protected def void initExtras(ResourceSet it) {
	}

	protected def createContent() {
		// provide a ModitPool
		Project.createAs("DartProject") [
			name = "Dart"
			packages += Package.createAs("Dart Standard Library") [
				name = "Dart Standard Library"
				assets += new Dart_collection(this).createContent
				assets += new Dart_convert(this).createContent
				assets += new Dart_core(this).createContent
				assets += new Dart_math(this).createContent
			]
		].assemble
	}

	def context() { this }

	// Only works for feature with keys
	static def <R extends EObject> R at(EList<?> values, Class<R> type, Object... keys) {
		val attKeys = ((values as EcoreEList<?>).feature as EReference).EKeys
		val keyValues = keys.toList
		
		if (keyValues.size != attKeys.size) {
			throw new IllegalArgumentException("Wrong args size: " 
				+ keyValues.size + " instead of " + attKeys.size
			)	
		}
		values.filter(type).findFirst[ r|
			attKeys.map[ r.eGet(it) ] == keyValues
		] as R
	}
	
	// Only works for feature with keys
	static def <R extends EObject> R at(EList<R> values, Object... keys) {
		values.at(EObject, keys) as R
	}
	
	static def <T extends Named> atNamed(Iterable<T> values, Object key) {
		values.findFirst[ name == key ]
	}
}
