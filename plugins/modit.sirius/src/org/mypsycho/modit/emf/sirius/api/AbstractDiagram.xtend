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

import java.util.Objects
import org.eclipse.emf.ecore.EAttribute
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sirius.diagram.description.AbstractNodeMapping
import org.eclipse.sirius.diagram.description.ConditionalContainerStyleDescription
import org.eclipse.sirius.diagram.description.ConditionalNodeStyleDescription
import org.eclipse.sirius.diagram.description.ContainerMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.DiagramElementMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.style.BorderedStyleDescription
import org.eclipse.sirius.diagram.description.style.BundledImageDescription
import org.eclipse.sirius.diagram.description.style.ContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.NodeStyleDescription
import org.eclipse.sirius.diagram.description.style.WorkspaceImageDescription
import org.eclipse.sirius.viewpoint.description.Customization
import org.eclipse.sirius.viewpoint.description.EAttributeCustomization
import org.eclipse.sirius.viewpoint.description.EReferenceCustomization
import org.eclipse.sirius.viewpoint.description.EStructuralFeatureCustomization
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.VSMElementCustomization
import org.eclipse.sirius.viewpoint.description.style.BasicLabelStyleDescription

import static extension org.mypsycho.modit.emf.sirius.api.SiriusDesigns.*

/**
 * Adaptation of Sirius model into Java and EClass reflections API
 * for Diagrams.
 * 
 * @author nicolas.peransin
 */
abstract class AbstractDiagram extends AbstractRepresentation<DiagramDescription> {

	/** Namespaces for identification */
	enum Ns { // namespace for identication
		node, creation, del,
		edge, connect, disconnect, reconnect
	}
	
	/**
	 * Create a factory for a diagram description
	 * 
	 * @param parent of diagram
	 */
	new(AbstractGroup parent, String dLabel, Class<? extends EObject> dClass) {
		super(DiagramDescription, parent, dLabel)
		
		creationTasks.add[
			domainClass = context.asDomainClass(dClass)
		]
	}
		
	/**
	 * Initializes the content of the created diagram.
	 * 
	 * @param it to initialize
	 */
	override initContent(DiagramDescription it) {
		defaultLayer = Layer.create[
			name = "Default"
			initContent
		]
	}
	
	/**
	 * Initializes the content of the created diagram.
	 * 
	 * @param it to initialize
	 */
	def void initContent(Layer it)
	
	override initDefaultStyle(BasicLabelStyleDescription it) {
		super.initDefaultStyle(it)
		
		if (it instanceof BorderedStyleDescription) {
			borderSizeComputationExpression = "1" // default
			borderColor = SystemColor.extraRef("color:black")
		}
		
		if (it instanceof FlatContainerStyleDescription) {
			backgroundColor = SystemColor.extraRef("color:white")
		}

		if (it instanceof NodeStyleDescription) {
			sizeComputationExpression = "2"
		}

		if (it instanceof WorkspaceImageDescription) { // extends BorderedStyleDescription
			// when using a image in node, 
			// we usually don't want icon on label
			showIcon = false
			borderSizeComputationExpression = "0" // hide border
		}

		if (it instanceof BundledImageDescription) {
			color = (extras.get("color:black") as SystemColor)
		}
	}
	
	/**
	 * Sets the domain class of a description.
	 * <p>
	 * EClass is resolved using businessPackages of AbstractGroup.
	 * </p>
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setDomainClass(AbstractNodeMapping it, Class<? extends EObject> type) {
		domainClass = context.asDomainClass(type)
	}

	/**
	 * Sets the candidate expression of a description.
	 * <p>
	 * If domain class and/or name is not set, a derived value is provided
	 * </p>
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setSemanticCandidatesExpression(AbstractNodeMapping it, EReference ref) {
		(it as DiagramElementMapping).semanticCandidatesExpression = ref
		if (domainClass === null) {
			domainClass = SiriusDesigns.encode(ref.EType)
		}
	}

	/**
	 * Sets the candidate expression of a description.
	 * <p>
	 * If name is not set, a derived value is provided
	 * </p>
	 * 
	 * @param it description to define
	 * @param type of the description
	 */
	def void setSemanticCandidatesExpression(DiagramElementMapping it, EReference ref) {
		semanticCandidatesExpression = "feature:" + ref.name
		if (name === null) {
			name = ref.name
		}
	}
	
	/**
	 * Creates a conditional style for container node on provided condition.
	 * <p>
	 * Note conditional style are required only when shape is changed. Most of the time,
	 * customization is better solution.
	 * </p>
	 * @param type of style
	 * @param it to add style
	 * @param condition of style application
	 * @param init of created style (after default initialization)
	 */
	def <T extends ContainerStyleDescription> styleIf(Class<T> type, 
		ContainerMapping it, String condition, (T)=>void init
	) {
		conditionnalStyles += ConditionalContainerStyleDescription.create[
			predicateExpression = condition
			style = type.createStyle(init)
		]
	}
	
	/**
	 * Creates a conditional style for node on provided condition.
	 * <p>
	 * Note conditional style are required only when shape is changed. Most of the time,
	 * customization is better solution.
	 * </p>
	 * @param type of style
	 * @param it to add style
	 * @param condition of style application
	 * @param init of created style (after default initialization)
	 */
	def <T extends NodeStyleDescription> styleIf(Class<T> type, 
		NodeMapping it, String condition, (T)=>void init
	) {
		conditionnalStyles += ConditionalNodeStyleDescription.create[
			predicateExpression = condition
			style = type.createStyle(init)
		]
	}

	
	/**
	 * Customize a Sirius reference with provided value.
	 * <p>
	 * Keep in mind that Sirius can customize more than 1 element but there is no simple API.
	 * </p>
	 * 
	 * @param it to customize
	 * @param condition of customization
	 * @param siriusReference customized reference
	 * @param customValue to apply
	 * @throws IllegalArgumentException when 'reference' is not a valide feature name
	 */
	def <T extends EObject> customizeRef(T it, String condition, String siriusReference, EObject customValue) {
		doCustomize(condition, siriusReference, EReference, 
			EReferenceCustomization.create[
				referenceName = siriusReference
				value = customValue
			])
	}

	/**
	 * Customize a Sirius attribute with provided expression.
	 * <p>
	 * Keep in mind that Sirius can customize more than 1 element but there is no simple API.
	 * </p>
	 * 
	 * @param it to customize
	 * @param condition of customization
	 * @param siriusAttribute customized attribute
	 * @param customValue to apply
	 * @throws IllegalArgumentException when 'siriusAttribute' is not a valide feature name
	 */
	def <T extends EObject> customize(T it, String condition, String siriusAttribute, String customExpression) {
		doCustomize(condition, siriusAttribute, EAttribute, 
			EAttributeCustomization.create[
				attributeName = siriusAttribute
				value = customExpression
			])
	}

	private def <T extends EObject> T doCustomize(T target, String condition, String feature, 
		Class<? extends EStructuralFeature> type, EStructuralFeatureCustomization custo
	) {
		val layer = Objects.requireNonNull(target.eContainer(Layer))
		if (!type.isInstance(target.eClass.getEStructuralFeature(feature))) {
			throw new IllegalArgumentException('''«target?.eClass» has no «type.simpleName» «feature»''')
		}

		VSMElementCustomization.create[
			predicateExpression = condition
			featureCustomizations += custo.andThen[
				appliedOn += target
			]
		].onAssembledWith(layer)[
			if (layer.customization === null) {
				layer.customization = Customization.create
			}
			layer.customization.vsmElementCustomizations += it
		]
		target
	}
	
}
