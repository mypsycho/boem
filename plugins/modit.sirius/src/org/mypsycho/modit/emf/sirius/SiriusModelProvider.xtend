/*******************************************************************************
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Nicolas PERANSIN - initial API and implementation
 *******************************************************************************/
package org.mypsycho.modit.emf.sirius

import java.util.ArrayList
import java.util.Collection
import java.util.HashMap
import java.util.List
import java.util.Map
import java.util.Objects
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.PropertiesPackage
import org.eclipse.sirius.properties.ext.widgets.reference.propertiesextwidgetsreference.PropertiesExtWidgetsReferencePackage
import org.eclipse.sirius.viewpoint.description.DescriptionPackage
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.JavaExtension
import org.eclipse.sirius.viewpoint.description.style.StylePackage
import org.eclipse.sirius.viewpoint.description.tool.ToolPackage
import org.eclipse.xtend.lib.annotations.AccessorType
import org.eclipse.xtend.lib.annotations.Accessors
import org.mypsycho.modit.emf.EModIt
import org.mypsycho.modit.emf.ModitModel

import static extension org.eclipse.xtend.lib.annotations.AccessorType.*

/**
 * Class to provide model for Eclipse Sirius to interprete.
 * 
 * @author nperansin
 */
abstract class SiriusModelProvider implements ModitModel {

	public static val RESOURCE_MODE = -1

	public static val AQL_SELF = "self"
	/** Separator of parameter */
	public static val PARAM_SEP = ","
	
	public static val DEFAULT_PACKAGES = #{
		DescriptionPackage.eINSTANCE,
		StylePackage.eINSTANCE,
		ToolPackage.eINSTANCE,
		
		// Should be a separated plugin
		org.eclipse.sirius.diagram.description.DescriptionPackage.eINSTANCE,
		org.eclipse.sirius.diagram.description.style.StylePackage.eINSTANCE,
		org.eclipse.sirius.diagram.description.tool.ToolPackage.eINSTANCE,
		
		// Should be a separated plugin
		org.eclipse.sirius.diagram.sequence.description.DescriptionPackage.eINSTANCE,
		// no style for Sequence diagram.
		org.eclipse.sirius.diagram.sequence.description.tool.ToolPackage.eINSTANCE,
		
		org.eclipse.sirius.table.metamodel.table.description.DescriptionPackage.eINSTANCE,
		// table tools are in same package.
		org.eclipse.sirius.tree.description.DescriptionPackage.eINSTANCE,
		// tree tools are in same package.
		
		
		PropertiesPackage.eINSTANCE, 
		PropertiesExtWidgetsReferencePackage.eINSTANCE
		// TODO add native EEF when ready
	}
	
	val List<Object> expressions = new ArrayList
	
	// Factory is public to be access to provider sub-parts.
	@Accessors
	// extension must be protected to be used by sub-classes
	protected val extension EModIt factory
	
	@Accessors(#[ AccessorType.PROTECTED_GETTER ])
	var Resource resource
	
	@Accessors
	// extension must be protected to be modified by sub-classes
	protected val Map<String, EObject> extras = new HashMap
	
	@Accessors(#[ AccessorType.PUBLIC_GETTER ])
	package var Integer id
	val Group content
	/** Flag defined when building and a lamba is used */
	var inlineServiceRequired = false
	
	@Accessors
	val SiriusModelProviderService.Callback callback = new SiriusModelProviderService.Callback {
		override invoke(int methodId, EObject value, Object params) {
			SiriusModelProvider.this.invoke(methodId, value, params)
		}
	}
	
	/**
	 * Construction of model using provided package.
	 * 
	 * @param descriptorPackages used by Sirius
	 */
	new (Iterable<? extends EPackage> descriptorPackages) {
		factory = EModIt.using(descriptorPackages)
		
		content = Group.create
		// Init cannot happen in constructor 
		// as calling init(Group) must be overridden.
		// Having a overridden method called in constructor is unsafe.
	}
	
	/**
	 * Construction of model using default Sirius package.
	 */
	new () { 
		this(DEFAULT_PACKAGES)
	}
	
	def getRootAlias() { class.simpleName }
	
	def registerContent(Resource container) {
		// registration use resource uri, it must be set after
		container.buildContent[ ModitSiriusPlugin.instance.registry.registerProvider(this, resource) ]
	}
	
	override Collection<? extends Group> loadContent(Resource container) {		
		#[ 
			container.buildContent[ RESOURCE_MODE ]
		]
	}
	
	protected def buildContent(Resource container, ()=>int resourcePovider) {
		resource = container
		Objects.requireNonNull(resource?.resourceSet, "Building content requires a ResourceSet")
		
		// Resource provider may need the resource to be defined
		id = resourcePovider.apply
		
		resource.resourceSet.initExtras
		rootAlias.alias(content)
		
		inlineServiceRequired = false
		
		// default name and version; can be overridden by user.
		content.name = class.simpleName
		content.version = "12.0.0.2017041100"
		content.initContent
		
		// as ownedViewpoints is composition, navigation is safe before assemble
		content.assemble
		
		
		if (inlineServiceRequired) {
			content.ownedViewpoints.forEach[
				ownedJavaExtensions += JavaExtension.create[ 
					qualifiedClassName = SiriusModelProviderService.name
				]
			]
		}

		// eObjects are not headless: eResource is not null.
		resource.contents.add(content)
		content
	}

	
	/**
	 * Initialize map of external references with resource set
	 * <p>
	 * By default, it only contains colors.
	 * </p>
	 * 
	 * @param it resourse set
	 */
	protected def void initExtras(ResourceSet it) {
		// System colors are: blue,chocolate,green,orange,purple,red,yellow
		// With shade : 'dark_', <default>, 'light_'
		// And: black,white
		Environment.eObject("environment:/viewpoint#/")
			.systemColors.entries
			.forEach[ extras.put("color:" + name, it) ]
	}
	
	/**
	 * Get an object from the resourceset of resource using it URI.
	 * 
	 * @param <T> expected type
	 * @param uri of value
	 * @return value
	 */
	def <T extends EObject> eObject(Class<T> type, String uri) {
		resource.resourceSet.getEObject(URI.createURI(uri), true) as T
	}
	
		
	/**
	 * Get value from extras using key.
	 * 
	 * @param <T> expected type
	 * @param type expected
	 * @param key of value
	 * @return value
	 */
	def <T> T extraRef(Class<T> type, String key) {
		extras.get(key) as T
	}
	
	protected def void initContent(Group it)


	def <T> String expression(Functions.Function1<? extends EObject, T> callable) {
		AQL_SELF.createExpression(0, callable)
	}
	
	def <T> expression(String variable, Functions.Function1<? extends EObject, T> callable) {
		variable.createExpression(0, callable)
	}
	
	def <T> expression(String params, Functions.Function2<? extends EObject, ?, T> callable) {
		params.createExpression(1, callable)
	}

	def <T> expression(String params, Functions.Function3<? extends EObject, ?, ?, T> callable) {
		params.createExpression(2, callable)
	}

	def <T> expression(String params, Functions.Function4<? extends EObject, ?, ?, ?, T> callable) {
		params.createExpression(3, callable)
	}

	def <T> expression(String params, Functions.Function5<? extends EObject, ?, ?, ?, ?, T> callable) {
		params.createExpression(4, callable)
	}

	def <T> expression(String params, Functions.Function6<? extends EObject, ?, ?, ?, ?, ?, T> callable) {
		params.createExpression(5, callable)
	}
	
	def String expression(Procedures.Procedure1<? extends EObject> callable) {
		AQL_SELF.createExpression(0, callable)
	}

	def String expression(String variable, Procedures.Procedure1<? extends EObject> callable) {
		variable.createExpression(0, callable)
	}

	def String expression(String params, Procedures.Procedure2<? extends EObject, ?> callable) {
		params.createExpression(1, callable)
	}

	def String expression(String params, Procedures.Procedure3<? extends EObject, ?, ?> callable) {
		params.createExpression(2, callable)
	}

	def String expression(String params, Procedures.Procedure4<? extends EObject, ?, ?, ?> callable) {
		params.createExpression(3, callable)
	}

	def String expression(String params, Procedures.Procedure5<? extends EObject, ?, ?, ?, ?> callable) {
		params.createExpression(4, callable)
	}

	def String expression(String params, Procedures.Procedure6<? extends EObject, ?, ?, ?, ?, ?> callable) {
		params.createExpression(5, callable)
	}

	/**
	 * Create an AQL expression for provided call.
	 * 
	 * @param signature of function: must provided all used variable
	 * @param size number of parameters: used as assertion if a parameter is missing, self is assumed.
	 * @param lambda to call
	 */
	private def String createExpression(String signature, int size, Object callable) {
		inlineServiceRequired = true

		val params = signature.toInvokeParams(size + 1)
		val methodId = expressions.size
		expressions += callable
				
		SiriusModelProviderService.toAql(this, methodId, params)
	}
	
	protected def <P0, P1, P2, P3, P4, P5, R> R invoke(int methodId, EObject value, Object params) {
		val List<Object> values = params as List<Object>
		values.add(0, value)
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
					default : throw new UnsupportedOperationException(getClass.toString)
				}
				null
			}
		}
	}
	
	/**
	 * Create a string from expression from a sequence of parameter names.
	 * 
	 * @param params names
	 * @return string of parameters
	 */
	protected def params(String... params) { params.join(PARAM_SEP) }
	
	/**
	 * Defines invocation parameters based on 
	 * 
	 * @param it 
	 * @param size
	 */
	protected def toInvokeParams(String it, int size) {
		val values = split(PARAM_SEP)
		if (values.length == size) AQL_SELF->params
		else if (values.length == size + 1) values.head->values.tail.join(",")	
		else throw new IllegalArgumentException('''Arguments [«it»] does not match signature size («size»)"''')
	}
}