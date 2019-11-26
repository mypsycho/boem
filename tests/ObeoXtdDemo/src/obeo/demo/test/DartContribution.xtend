package obeo.demo.test

import fr.obeo.dsl.dart.dart.Named
import fr.obeo.dsl.dart.dart.Parameter
import fr.obeo.dsl.dart.dart.Parametrized
import fr.obeo.dsl.dart.dart.Typed
import java.util.Collections
import org.mypsycho.modit.emf.stretch.EmfContribution
import org.mypsycho.modit.emf.stretch.EmfExtensions
import org.mypsycho.modit.emf.stretch.EmfStretcher
import fr.obeo.dsl.dart.dart.Function

class DartContribution extends EmfContribution {
	
	public static val LABEL = EmfExtensions.byEObjects[ "[" + eClass.name + "]" ]
	public static val QNAME = EmfExtensions.byEObjects[ null ]// (EmfExtensions.unsupported("QualifiedName", String))
	
	new(EmfStretcher it) { super(it) }
	
	override run() {
		
		val shortText = EmfExtensions.byEObjects(EmfExtensions.unsupported("short text", String))	
		val id = EmfExtensions.byEObjects(EmfExtensions.unsupported("id", String))	
		val qPath = EmfExtensions.byEObjects([ "" ])
		
		// XXX test duplicated assigment
		
		Named->shortText += [ name ?: "<unnamed-" + eClass.name + ">" ]
		Named->id += [ getValue(shortText) ]
		Named->LABEL += [ getValue(id) ]
		
		Named->qPath += [ 
			if (eContainer === null) ""
			else eContainer.getValue(qPath) + eContainer.getValue(shortText) + "/" 
		]
		Named->QNAME += [ (it>>qPath) + (it>>LABEL) ]
		
		Typed->LABEL += [ 
			getSuper(Typed, LABEL) 
			+ (if (type !== null) " : " + type.getValue(shortText) else "")
		]
		
		
		fr.obeo.dsl.dart.dart.Class->LABEL += [
			val generals = (if(^extends !== null) Collections.singletonList(^extends) else emptyList)
				+ implements + mixins
			getSuper(fr.obeo.dsl.dart.dart.Class, LABEL) 
				+ generals.join(" :> ", ", ", "")[ it>>shortText ]
		]
		fr.obeo.dsl.dart.dart.Class->QNAME += [ // xtend fails to infere with a type named Class
			getValue(qPath) + getSuper(fr.obeo.dsl.dart.dart.Class, LABEL)
		]

		
		Parameter->LABEL += [ getSuper(Typed, LABEL) + " : " + (type?.getValue(shortText) ?: "<untyped>") ]
		Function->id += [ getSuper(Function, id) 
			+ "(" + parameters.join(",")[ type?.getValue(shortText) ?: "<untyped>" ] + ")"
		]
		
	}
	

}