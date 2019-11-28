package obeo.demo.test

import fr.obeo.dsl.dart.dart.Class
import fr.obeo.dsl.dart.dart.Function
import fr.obeo.dsl.dart.dart.Named
import fr.obeo.dsl.dart.dart.Parameter
import fr.obeo.dsl.dart.dart.Typed
import org.mypsycho.modit.emf.stretch.EmfContribution
import org.mypsycho.modit.emf.stretch.EmfExtensions
import org.mypsycho.modit.emf.stretch.EmfStretcher

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
		Named->id += [ it*shortText ]
		Named->qPath += [ 
			if (eContainer === null) ""
			else eContainer*qPath + eContainer*id + "/" 
		]
		
		Named->LABEL += [ it*id ]
		Named->QNAME += [ it*qPath + it*id ]
		
		
		Typed->LABEL += [
			val suffix = if (type !== null) " : " + type*shortText else ""
			getSuper(Typed, LABEL) + suffix
		]
		
		Class->LABEL += [
			val generals = #[ ^extends ].filterNull + implements + mixins
			val suffix = generals.join(" :> ", ", ", "")[ it*shortText ]
			getSuper(Class, LABEL) + suffix 
		]
		
		Parameter->LABEL += [ getSuper(Typed, LABEL) + " : " + (type?.getValue(shortText) ?: "<untyped>") ]
		Function->id += [ 
			getSuper(Function, id) 
			+ "(" + parameters.join(",")[ type?.getValue(shortText) ?: "<untyped>" ] + ")"
		]
		
	}
	

}