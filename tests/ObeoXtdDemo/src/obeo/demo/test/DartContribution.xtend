package obeo.demo.test

import fr.obeo.dsl.dart.dart.Class
import fr.obeo.dsl.dart.dart.DartPackage
import fr.obeo.dsl.dart.dart.Named
import fr.obeo.dsl.dart.dart.Parameter
import fr.obeo.dsl.dart.dart.Parametrized
import fr.obeo.dsl.dart.dart.Typed
import java.util.Collections
import org.eclipse.emf.ecore.EObject
import org.mypsycho.modit.emf.stretch.EmfContribution
import org.mypsycho.modit.emf.stretch.EmfStretcher

class DartContribution extends EmfContribution {
	
	static extension DartPackage TARGET = DartPackage.eINSTANCE
	
	public static val EmfStretcher STRETCHER = EmfContribution.createStretcher(#{
		TARGET -> DartContribution
	})

	
	new(EmfStretcher it) {
		super(it, TARGET)
	}
	
	override run() {
		
		context.onClass(EObject).aspect += #{
			String->[ EObject it | "[" + eClass.name + "]" ], // A display function
			String->String->[ EObject it | // String->String is the key for qualified name
				if (it instanceof Named) (
					if (eContainer === null) xCall(Named)
					else (eContainer.xCall(String->String) as String) ?.concat("/") ?.concat(xCall(Named) as String)
				) // else no qualified name
			]
		}
		
		named += #{ 
			Named->[ Named it | name ?: "<unnamed-"+eClass.name+">" ], 
			String->[ Named it | xCall(Named) as String ]
		}

		typed += #{
			Typed->[ Typed it | if (type !== null) " : " + type.xCall(Named) else "" ], 
			String->[ Typed it | (xCallSuperOf(Typed, String) as String) + xCall(Typed) ]
		}

		class_ += #{
			class_Extends-> [ fr.obeo.dsl.dart.dart.Class it | 
				(if(^extends !== null) Collections.singletonList(^extends) else emptyList) + implements + mixins
			],
			String->[ Class it | 
				(xCallSuperOf(Class, String) as String) 
					+ (xCall(class_Extends) as Iterable<Class>).join(" :> ", ", ", "") [ xCall(Named) as String ]
			]
		}

		parameter += #{
			Parameter->[ Parameter it | if (type === null) "#MISSING_TYPE" else type.xCall(Named) ]
		}
		
		parametrized += #{
			Named->[ Parametrized it | xCallSuperOf(Parametrized, Named) + "(" + parameters.map[ p | p.xCall(Parameter) ].join(",") + ")" ]
		}
	}
	

}