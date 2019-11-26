package org.mypsycho.modit.emf.sirius

import java.util.ArrayList
import java.util.List
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.sirius.viewpoint.description.DescriptionPackage
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.style.StylePackage
import org.eclipse.sirius.viewpoint.description.tool.ToolPackage
import org.mypsycho.modit.emf.EModIt

abstract class ModelProvider {
	
	static class Service {
		
		static def Object moditInvoke(EObject it, String uri, int methodId, Object params) {
			var resource = eResource.resourceSet.getResource(URI.createURI(uri), false)
			DesignFactory.getProvider(resource).invoke(methodId, it, params)
		}
		
	}
	
	public static val SELF = "self"
	
	
	public static val DEFAULT_PACKAGES = #{
		DescriptionPackage.eINSTANCE,
		StylePackage.eINSTANCE,
		ToolPackage.eINSTANCE,
		// Should be a separated plugin
		org.eclipse.sirius.diagram.description.DescriptionPackage.eINSTANCE,
		org.eclipse.sirius.diagram.description.tool.ToolPackage.eINSTANCE,
		// Should be a separated plugin
		org.eclipse.sirius.diagram.sequence.description.DescriptionPackage.eINSTANCE,
		org.eclipse.sirius.diagram.sequence.description.tool.ToolPackage.eINSTANCE,
		org.eclipse.sirius.table.metamodel.table.description.DescriptionPackage.eINSTANCE,
		// table tools are in same package
		org.eclipse.sirius.tree.description.DescriptionPackage.eINSTANCE
		// tree tools are in same package
	}
	
	val List<Object> expressions = new ArrayList	
	val protected extension EModIt factory
	
	val protected Resource resource
	val Group value
	
	
	new (Iterable<? extends EPackage> descriptorPackages, Resource rs) {
		factory = EModIt.using(descriptorPackages)
		resource = rs
		value = Group.create [ init ]
		// eObjects are not headless: eResource is not null.
		rs.contents.add(value)
		
		value.assemble
	}
	
	
	new (Resource rs) {
		this(DEFAULT_PACKAGES, rs)
	}
	
	def void init(Group it)


	protected def String expression(String variable, Functions.Function1<? extends EObject, ?> callable) {
		variable.createExpression(null, 0, callable)
	}
	
	protected def String expression(String variable, String params, Functions.Function2<? extends EObject, ?, ?> callable) {
		variable.createExpression(params, 1, callable)
	}

	protected def String expression(String variable, String params, Functions.Function3<? extends EObject, ?, ?, ?> callable) {
		variable.createExpression(params, 2, callable)
	}

	protected def String expression(String variable, String params, Functions.Function4<? extends EObject, ?, ?, ?, ?> callable) {
		variable.createExpression(params, 3, callable)
	}

	protected def String expression(String variable, String params, Functions.Function5<? extends EObject, ?, ?, ?, ?, ?> callable) {
		variable.createExpression(params, 4, callable)
	}

	protected def String expression(String variable, String params, Functions.Function6<? extends EObject, ?, ?, ?, ?, ?, ?> callable) {
		variable.createExpression(params, 5, callable)
	}
	
	protected def String expression(String variable, Procedures.Procedure1<? extends EObject> callable) {
		variable.createExpression(null, 0, callable)
	}

	protected def String expression(String variable, String params, Procedures.Procedure2<? extends EObject, ?> callable) {
		variable.createExpression(params, 1, callable)
	}

	protected def String expression(String variable, String params, Procedures.Procedure3<? extends EObject, ?, ?> callable) {
		variable.createExpression(params, 2, callable)
	}

	protected def String expression(String variable, String params, Procedures.Procedure4<? extends EObject, ?, ?, ?> callable) {
		variable.createExpression(params, 3, callable)
	}

	protected def String expression(String variable, String params, Procedures.Procedure5<? extends EObject, ?, ?, ?, ?> callable) {
		variable.createExpression(params, 4, callable)
	}

	protected def String expression(String variable, String params, Procedures.Procedure6<? extends EObject, ?, ?, ?, ?, ?> callable) {
		variable.createExpression(params, 5, callable)
	}


// SELF

	protected def String expression(Functions.Function1<? extends EObject, ?> callable) {
		SELF.expression(callable)
	}
	
	protected def String expression(String params, Functions.Function2<? extends EObject, ?, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Functions.Function3<? extends EObject, ?, ?, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Functions.Function4<? extends EObject, ?, ?, ?, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Functions.Function5<? extends EObject, ?, ?, ?, ?, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Functions.Function6<? extends EObject, ?, ?, ?, ?, ?, ?> callable) {
		SELF.expression(params, callable)
	}
	
	protected def String expression(Procedures.Procedure1<? extends EObject> callable) {
		SELF.expression(callable)
	}

	protected def String expression(String params, Procedures.Procedure2<? extends EObject, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Procedures.Procedure3<? extends EObject, ?, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Procedures.Procedure4<? extends EObject, ?, ?, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Procedures.Procedure5<? extends EObject, ?, ?, ?, ?> callable) {
		SELF.expression(params, callable)
	}

	protected def String expression(String params, Procedures.Procedure6<? extends EObject, ?, ?, ?, ?, ?> callable) {
		SELF.expression(params, callable)
	}





	private def String createExpression(String variable, String params, int size, Object callable) {
		params.assertParams(size)
		val id = expressions.size
		expressions += callable
		if (params !== null) '''aql:«variable».moditInvoke(«id», '«resource.URI»', Sequence {«params»})'''
		else '''aql:«variable».moditInvoke(«id», '«resource.URI»', null)'''
	}
	
	def <P1, P2, P3, P4, P5, P6, R> R invoke(int methodId, EObject context, Object params) {
		val List<?> values = params as List<?>
		val it = expressions.get(methodId)
		switch (it) {
			// functions
			Functions.Function1<P1, R> :                     apply(context as P1)
			Functions.Function2<P1, P2, R> :                 apply(context as P1, values.get(0) as P2)
			Functions.Function3<P1, P2, P3, R> :             apply(context as P1, values.get(0) as P2, values.get(1) as P3)
			Functions.Function4<P1, P2, P3, P4, R> :         apply(context as P1, values.get(0) as P2, values.get(1) as P3, values.get(2) as P4)
			Functions.Function5<P1, P2, P3, P4, P5, R> :     apply(context as P1, values.get(0) as P2, values.get(1) as P3, values.get(2) as P4, values.get(3) as P5)
			Functions.Function6<P1, P2, P3, P4, P5, P6, R> : apply(context as P1, values.get(0) as P2, values.get(1) as P3, values.get(2) as P4, values.get(3) as P5, values.get(4) as P6)
			default: {
				switch (it) {
					// procedures return void.
					Procedures.Procedure1<P1> :                     apply(context as P1)
					Procedures.Procedure2<P1, P2> :                 apply(context as P1, values.get(0) as P2)
					Procedures.Procedure3<P1, P2, P3> :             apply(context as P1, values.get(0) as P2, values.get(1) as P3)
					Procedures.Procedure4<P1, P2, P3, P4> :         apply(context as P1, values.get(0) as P2, values.get(1) as P3, values.get(2) as P4)
					Procedures.Procedure5<P1, P2, P3, P4, P5> :     apply(context as P1, values.get(0) as P2, values.get(1) as P3, values.get(2) as P4, values.get(3) as P5)
					Procedures.Procedure6<P1, P2, P3, P4, P5, P6> : apply(context as P1, values.get(0) as P2, values.get(1) as P3, values.get(2) as P4, values.get(3) as P5, values.get(4) as P6)
				}
				null
			}
		}
	}
	
	protected def params(String... params) {
		params.join(",")
	}
	
	protected def void assertParams(String it, int size) {
		val actualSize = if (it === null) 0 else split(",").length
		if (actualSize != size) throw new IllegalArgumentException('''Arguments [«it»] does not match signature size («size»)"''')
	}
}