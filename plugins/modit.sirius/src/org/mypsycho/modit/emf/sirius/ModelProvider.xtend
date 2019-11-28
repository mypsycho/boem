package org.mypsycho.modit.emf.sirius

import java.util.ArrayList
import java.util.List
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.sirius.viewpoint.description.DescriptionPackage
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.JavaExtension
import org.eclipse.sirius.viewpoint.description.style.StylePackage
import org.eclipse.sirius.viewpoint.description.tool.ToolPackage
import org.mypsycho.modit.emf.EModIt

abstract class ModelProvider {
	
	static class Service {
		
		static def Object moditInvoke(EObject it, int providerId, int methodId, Object params) {
			DesignFactory.getProvider(providerId).invoke(methodId, it, params)
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
	
	//val Resource resource
	val int id
	val Group value
	
	
	new (Iterable<? extends EPackage> descriptorPackages, Resource rs) {
		factory = EModIt.using(descriptorPackages)
		
		id = MisActivator.^default.registerProvider(this)
		
		//resource = rs
		value = Group.create
		value.init
		value.assemble
		value.ownedViewpoints.forEach[
			// 
			ownedJavaExtensions += JavaExtension.create [ qualifiedClassName = Service.name ]
		]

		// eObjects are not headless: eResource is not null.
		rs.contents.add(value)
	}
	
	
	new (Resource rs) {
		this(DEFAULT_PACKAGES, rs)
	}
	
	def void init(Group it)


	protected def String expression(Functions.Function1<? extends EObject, ?> callable) {
		SELF.createExpression(0, callable)
	}
	
	protected def String expression(String variable, Functions.Function1<? extends EObject, ?> callable) {
		variable.createExpression(0, callable)
	}
	
	protected def String expression(String params, Functions.Function2<? extends EObject, ?, ?> callable) {
		params.createExpression(1, callable)
	}

	protected def String expression(String params, Functions.Function3<? extends EObject, ?, ?, ?> callable) {
		params.createExpression(2, callable)
	}

	protected def String expression(String params, Functions.Function4<? extends EObject, ?, ?, ?, ?> callable) {
		params.createExpression(3, callable)
	}

	protected def String expression(String params, Functions.Function5<? extends EObject, ?, ?, ?, ?, ?> callable) {
		params.createExpression(4, callable)
	}

	protected def String expression(String params, Functions.Function6<? extends EObject, ?, ?, ?, ?, ?, ?> callable) {
		params.createExpression(5, callable)
	}
	
	protected def String expression(Procedures.Procedure1<? extends EObject> callable) {
		SELF.createExpression(0, callable)
	}

	protected def String expression(String variable, Procedures.Procedure1<? extends EObject> callable) {
		variable.createExpression(0, callable)
	}

	protected def String expression(String params, Procedures.Procedure2<? extends EObject, ?> callable) {
		params.createExpression(1, callable)
	}

	protected def String expression(String params, Procedures.Procedure3<? extends EObject, ?, ?> callable) {
		params.createExpression(2, callable)
	}

	protected def String expression(String params, Procedures.Procedure4<? extends EObject, ?, ?, ?> callable) {
		params.createExpression(3, callable)
	}

	protected def String expression(String params, Procedures.Procedure5<? extends EObject, ?, ?, ?, ?> callable) {
		params.createExpression(4, callable)
	}

	protected def String expression(String params, Procedures.Procedure6<? extends EObject, ?, ?, ?, ?, ?> callable) {
		params.createExpression(5, callable)
	}


	private def String createExpression(String signature, int size, Object callable) {
		val params = signature.toInvokeParams(size + 1)
		val methodId = expressions.size
		expressions += callable
		'''aql:«params.key».moditInvoke(«id», «methodId», Sequence {«params.value»})'''
	}
	
	def <P0, P1, P2, P3, P4, P5, R> R invoke(int methodId, EObject it, Object params) {
		val List<Object> values = params as List<Object>
		values.add(0, it)
		val it = expressions.get(methodId)
		switch (it) {
			// functions
			Functions.Function1<P0, R> :                     apply(values.get(0) as P0)
			Functions.Function2<P0, P1, R> :                 apply(values.get(0) as P0, values.get(1) as P1)
			Functions.Function3<P0, P1, P2, R> :             apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2)
			Functions.Function4<P0, P1, P2, P3, R> :         apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2, values.get(3) as P3)
			Functions.Function5<P0, P1, P2, P3, P4, R> :     apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2, values.get(3) as P3, values.get(4) as P4)
			Functions.Function6<P0, P1, P2, P3, P4, P5, R> : apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2, values.get(3) as P3, values.get(4) as P4, values.get(5) as P5)
			default: {
				switch (it) {
					// procedures return void.
					Procedures.Procedure1<P0> :                     apply(values.get(0) as P0)
					Procedures.Procedure2<P0, P1> :                 apply(values.get(0) as P0, values.get(1) as P1)
					Procedures.Procedure3<P0, P1, P2> :             apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2)
					Procedures.Procedure4<P0, P1, P2, P3> :         apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2, values.get(3) as P3)
					Procedures.Procedure5<P0, P1, P2, P3, P4> :     apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2, values.get(3) as P3, values.get(4) as P4)
					Procedures.Procedure6<P0, P1, P2, P3, P4, P5> : apply(values.get(0) as P0, values.get(1) as P1, values.get(2) as P2, values.get(3) as P3, values.get(4) as P4, values.get(5) as P5)
					default : throw new UnsupportedOperationException(it.getClass().toString)
				}
				null
			}
		}
	}
	
	protected def params(String... params) {
		params.join(",")
	}
	
	/**
	 * 
	 * 
	 * @param it 
	 * @param size
	 */
	protected def toInvokeParams(String it, int size) {
		val values = split(",")
		if (values.length == size) {
			SELF->params			
		} else if (values.length == size + 1) {
			values.get(0)->values.tail.join(",")
		} else {
			throw new IllegalArgumentException('''Arguments [«it»] does not match signature size («size»)"''')
		}
	}
}