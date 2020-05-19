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
package org.mypsycho.modit.emf.sirius.api

import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sirius.properties.AbstractTextDescription
import org.eclipse.sirius.properties.AbstractWidgetDescription
import org.eclipse.sirius.properties.ButtonDescription
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CheckboxWidgetConditionalStyle
import org.eclipse.sirius.properties.CheckboxWidgetStyle
import org.eclipse.sirius.properties.DynamicMappingForDescription
import org.eclipse.sirius.properties.DynamicMappingIfDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.HyperlinkDescription
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.ListWidgetConditionalStyle
import org.eclipse.sirius.properties.ListWidgetStyle
import org.eclipse.sirius.properties.RadioDescription
import org.eclipse.sirius.properties.RadioWidgetConditionalStyle
import org.eclipse.sirius.properties.RadioWidgetStyle
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.SelectWidgetConditionalStyle
import org.eclipse.sirius.properties.SelectWidgetStyle
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.TextWidgetConditionalStyle
import org.eclipse.sirius.properties.TextWidgetStyle
import org.eclipse.sirius.properties.ToolbarAction
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.properties.WidgetDescription
import org.eclipse.sirius.properties.WidgetStyle
import org.eclipse.sirius.properties.ext.widgets.reference.propertiesextwidgetsreference.ExtReferenceDescription
import org.eclipse.sirius.properties.ext.widgets.reference.propertiesextwidgetsreference.ExtReferenceWidgetConditionalStyle
import org.eclipse.sirius.properties.ext.widgets.reference.propertiesextwidgetsreference.ExtReferenceWidgetStyle
import org.eclipse.sirius.viewpoint.FontFormat
import org.eclipse.sirius.viewpoint.description.IdentifiedElement
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.eclipse.sirius.viewpoint.description.tool.ModelOperation

import static extension org.mypsycho.modit.emf.sirius.api.SiriusDesigns.*

/**
 * 
 * <p>
 * 
 * </p>
 *
 * @author nperansin
 *
 */
abstract class AbstractPropertySet extends AbstractEdition {
	
	enum Ns { view, category, page, group, foreach, then }
	
	// 'input' provides in 
	// org.eclipse.sirius.properties.core.api.SiriusInputDescriptor
	// @see org.eclipse.sirius.properties.core.internal.SiriusToolServices	
	
	protected static val EMFEDIT = "input.emfEditServices(self)"

	new(AbstractGroup parent) {
		super(parent)
	}
	
	def void setDomainClass(GroupDescription it, Class<? extends EObject> value) {
		domainClass = value.asDomainClass
	}

	def <T extends AbstractWidgetDescription> T initWidget(T it, EStructuralFeature feature) {
		// TODO replace by a call to the default adapter factory
		initWidget("self".featureAql(feature))
		name = eClass.name + ":" + contentAlias + feature.name
		it
	}
	
	def <T extends AbstractWidgetDescription> T initWidget(T it, String featureExpr) {
		name = eClass.name + ":" + contentAlias  + featureExpr
		
		// TODO replace by a call to the default adapter factory
		labelExpression = '''aql:«EMFEDIT».getText(«featureExpr») '''
		
		if (!(it instanceof CheckboxDescription)) {
			labelExpression = labelExpression + " + ':' "
		}
		
		helpExpression = '''aql:«EMFEDIT».getDescription(«featureExpr»)'''
		isEnabledExpression = '''aql:«featureExpr».changeable'''
		
		// handle 
		val requiredExpression = '''aql:«featureExpr».lowerBound == 1'''
		val (WidgetStyle)=>void requiredStyle = [ labelFontFormat += FontFormat.BOLD_LITERAL ]
		if (it instanceof AbstractTextDescription) {
			conditionalStyles += TextWidgetConditionalStyle.create [
				preconditionExpression = requiredExpression
				style = TextWidgetStyle.create(requiredStyle)
			]
		} else if (it instanceof CheckboxDescription) {
			conditionalStyles += CheckboxWidgetConditionalStyle.create [
				preconditionExpression = requiredExpression
				style = CheckboxWidgetStyle.create(requiredStyle)
			]
		} else if (it instanceof RadioDescription) {
			conditionalStyles += RadioWidgetConditionalStyle.create [
				preconditionExpression = requiredExpression
				style = RadioWidgetStyle.create(requiredStyle)
			]
		} else if (it instanceof SelectDescription) {
			conditionalStyles += SelectWidgetConditionalStyle.create [
				preconditionExpression = requiredExpression
				style = SelectWidgetStyle.create(requiredStyle)
			]
		} else if (it instanceof ListDescription) {
			conditionalStyles += ListWidgetConditionalStyle.create [
				preconditionExpression = requiredExpression
				style = ListWidgetStyle.create(requiredStyle)
			]
		} else if (it instanceof ExtReferenceDescription) {
			conditionalStyles += ExtReferenceWidgetConditionalStyle.create [
				preconditionExpression = requiredExpression
				style = ExtReferenceWidgetStyle.create(requiredStyle)
			]
		}
		
		it
	}
	
	def String featureAql(String valueVar, EStructuralFeature feat) {
		'''«valueVar».eClass().getEStructuralFeature('«feat.name»')'''
	}
	
	def <T extends WidgetStyle> T createDetailStyle(Class<T> type) {
		type.create[ labelFontSizeExpression = "8" ]
	}

	
	def eachOn(String collect, String iter, DynamicMappingIfDescription... conditions) {
		DynamicMappingForDescription.create [
			name = eContainer(IdentifiedElement).name
			iterator = iter
			iterableExpression = collect
			forceRefresh = true
			ifs += conditions
		]
	}
	
	def eachOn(String collect, DynamicMappingIfDescription... conditions) {
		collect.eachOn("self", conditions)
	}
	
	def when(String condition, WidgetDescription editor) {
		DynamicMappingIfDescription.create [
			name = Ns.then.id(editor.eClass.name) // no need for unicity ??
			predicateExpression = condition
			widget = editor
		]
	}
	
	def <T extends WidgetDescription> when(Class<T> type, String condition, (T)=>void init) {
		condition.when(type.create [
			init.apply(it)
		])
	}
	
	def <T extends WidgetDescription> always(Class<T> type, (T)=>void init) {
		type.when(ALWAYS, init)
	}
	
	def void setOperation(WidgetDescription it, ModelOperation value) {
		val init = InitialOperation.create [ firstModelOperations = value ]
		if (it instanceof ButtonDescription) initialOperation = init
		else if (it instanceof CheckboxDescription) initialOperation = init
		else if (it instanceof HyperlinkDescription) initialOperation = init
		else if (it instanceof RadioDescription) initialOperation = init
		else if (it instanceof SelectDescription) initialOperation = init
		else if (it instanceof TextAreaDescription) initialOperation = init
		else if (it instanceof TextDescription) initialOperation = init
		else throw new UnsupportedOperationException(it?.eClass?.name)
	}

	def void setOperation(WidgetDescription it, String expression) {
		operation = ChangeContext.create [ browseExpression = expression ]
	}

	def action(String label, ModelOperation value) {
		WidgetAction.create [
			labelExpression = label
			initialOperation = InitialOperation.create [ firstModelOperations = value ]	
		]
	}

	def toolbar(String label, String icon, ModelOperation value) {
		ToolbarAction.create [
			tooltipExpression = label
			imageExpression = icon
			initialOperation = InitialOperation.create [ firstModelOperations = value ]	
		]
	}
	
		// ECore API has no constraint.
	def String asDomainClass(Class<? extends EObject> type) {
		context.asDomainClass(type)
	}

	
}
