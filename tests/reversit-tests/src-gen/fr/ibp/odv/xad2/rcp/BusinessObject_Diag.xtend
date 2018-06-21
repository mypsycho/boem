package fr.ibp.odv.xad2.rcp

import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.diagram.description.AdditionalLayer
import org.eclipse.sirius.diagram.description.ConditionalEdgeStyleDescription
import org.eclipse.sirius.diagram.description.ContainerMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.EdgeMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.style.BeginLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.BundledImageDescription
import org.eclipse.sirius.diagram.description.style.CenterLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.EdgeStyleDescription
import org.eclipse.sirius.diagram.description.style.EndLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.tool.DiagramNavigationDescription
import org.eclipse.sirius.diagram.description.tool.ToolSection
import org.eclipse.sirius.viewpoint.description.Customization
import org.eclipse.sirius.viewpoint.description.EAttributeCustomization
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.VSMElementCustomization
import org.eclipse.sirius.viewpoint.description.tool.ContainerViewVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementSelectVariable
import org.eclipse.sirius.viewpoint.description.tool.NameVariable
import org.mypsycho.emf.modit.EModIt

class BusinessObject_Diag {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "BusinessObject_Diag".alias(DiagramDescription.create[
      name = "BusinessObject_Diag"
      titleExpression = "aql:'Objets métiers de ' + self.businessObject.name"
      domainClass = "equinoxeComposantsMetier.BoGroup"
      metamodel += (extras.get("$0") as EPackage)
      defaultLayer = Layer.create[
        name = "Default"
        edgeMappings += EdgeMapping.create[
          name = "BusinessObject_boReferences"
          semanticCandidatesExpression = "aql:self.businessObject.getAllBoBoAttributes()"
          synchronizationLock = true
          targetFinderExpression = "aql:self.associatedBO"
          sourceFinderExpression = "aql:self.eContainer()"
          domainClass = "equinoxeComposantsMetier.BoBoAttribute"
          useDomainElement = true
          sourceMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
          targetMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).additionalLayers.at("BusinessObject_relations_layer").containerMappings.head ]
          style = EdgeStyleDescription.create[
            strokeColor = (extras.get("Color#black") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelExpression = "aql:self.name"
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
            endLabelStyleDescription = EndLabelStyleDescription.create[
              showIcon = false
              labelExpression = "aql:'[' + self.multiplicite.toString() + ']'"
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
          conditionnalStyles += ConditionalEdgeStyleDescription.create[
            predicateExpression = "aql:self.opposite<>null"
            style = EdgeStyleDescription.create[
              sourceArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputArrow")
              sizeComputationExpression = "2"
              strokeColor = (extras.get("Color#black") as SystemColor)
              beginLabelStyleDescription = BeginLabelStyleDescription.create[
                showIcon = false
                labelExpression = "aql:'[' + self.opposite.multiplicite.toString() + ']'"
                labelColor = (extras.get("Color#black") as SystemColor)
              ]
              centerLabelStyleDescription = CenterLabelStyleDescription.create[
                showIcon = false
                labelExpression = "aql:self.name"
                labelColor = (extras.get("Color#black") as SystemColor)
              ]
              endLabelStyleDescription = EndLabelStyleDescription.create[
                showIcon = false
                labelExpression = "aql:'[' + self.multiplicite.toString() + ']'"
                labelColor = (extras.get("Color#black") as SystemColor)
              ]
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "BusinessObject_boInheritance"
          synchronizationLock = true
          targetFinderExpression = "aql:self.getSuperType()"
          sourceMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
          sourceMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).additionalLayers.at("BusinessObject_relations_layer").containerMappings.head ]
          targetMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
          targetMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).additionalLayers.at("BusinessObject_relations_layer").containerMappings.head ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            strokeColor = (extras.get("Color#black") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "BusinessObject_boViews"
          targetFinderExpression = "aql:self.referencedViews"
          sourceMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
          targetMapping += ContainerMapping.ref("BusinessObject_Diag")[ (it as DiagramDescription).additionalLayers.at("BusinessObject_views_layer").containerMappings.head ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("NoDecoration")
            sizeComputationExpression = "2"
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "BusinessObject"
          semanticCandidatesExpression = "aql:if (self.businessObject.superType = null) then Sequence{self.businessObject} else Sequence{self.businessObject, self.businessObject.superType} endif"
          synchronizationLock = true
          documentation = "This diagram element is used to display the BusienssObject and RelatedBO concepts"
          domainClass = "equinoxeComposantsMetier.BusinessObject"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("VerticalStack")
          navigationDescriptions += DiagramNavigationDescription.ref("BusinessObject_Diag")[ ((it as DiagramDescription).defaultLayer.toolSections.head.ownedTools.head as DiagramNavigationDescription) ]
          subContainerMappings += ContainerMapping.create[
            name = "BusinessObject_attributes"
            semanticCandidatesExpression = "var:self"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.AbstractBusinessObject"
            childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
            subNodeMappings += NodeMapping.create[
              name = "BoAttribute_Subnode"
              semanticCandidatesExpression = "feature:attributs"
              synchronizationLock = true
              domainClass = "equinoxeComposantsMetier.AbstractBoAttribute"
              style = BundledImageDescription.create[
                labelSize = 10
                labelExpression = "service:getEqxLabel()"
                labelAlignment = org.eclipse.sirius.viewpoint.LabelAlignment.getByName("LEFT")
                labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
                resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
                borderColor = (extras.get("Color#black") as SystemColor)
                labelColor = (extras.get("Color#black") as SystemColor)
                color = (extras.get("Color#black") as SystemColor)
              ]
            ]
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("underline")
              showIcon = false
              labelExpression = "Attributs"
              hideLabelByDefault = true
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#dark_blue") as SystemColor)
            ]
          ]
          subContainerMappings += ContainerMapping.create[
            name = "BusinessObject_methods"
            semanticCandidatesExpression = "var:self"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.AbstractBusinessObject"
            childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
            subNodeMappings += NodeMapping.create[
              name = "BoMethod_Subnode"
              semanticCandidatesExpression = "feature:methods"
              synchronizationLock = true
              domainClass = "equinoxeComposantsMetier.BoMethod"
              style = BundledImageDescription.create[
                labelSize = 10
                labelExpression = "service:getEqxLabel()"
                labelAlignment = org.eclipse.sirius.viewpoint.LabelAlignment.getByName("LEFT")
                labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
                resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
                borderColor = (extras.get("Color#black") as SystemColor)
                labelColor = (extras.get("Color#black") as SystemColor)
                color = (extras.get("Color#black") as SystemColor)
              ]
            ]
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("underline")
              showIcon = false
              labelExpression = "Méthodes"
              hideLabelByDefault = true
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#dark_blue") as SystemColor)
            ]
          ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "aql:self.getEqxLabel()"
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#dark_blue") as SystemColor)
          ]
        ]
        toolSections += ToolSection.create[
          name = "BOD_Tools"
          ownedTools += DiagramNavigationDescription.create[
            name = "BOD_NavTool"
            browseExpression = "aql:self.eContainer()"
            navigationNameExpression = "aql:self.name"
            diagramDescription = DiagramDescription.ref("BusinessObject_Diag")
            containerViewVariable = ContainerViewVariable.create[
              name = "containerView"
            ]
            containerVariable = ElementSelectVariable.create[
              name = "container"
            ]
            representationNameVariable = NameVariable.create[
              name = "diagramName"
            ]
          ]
        ]
        customization = Customization.create[
          vsmElementCustomizations += VSMElementCustomization.create[
            predicateExpression = "aql:self.oclAsType(equinoxeComposantsMetier::BoView).defaultView"
            featureCustomizations += EAttributeCustomization.create[
              attributeName = "labelFormat"
              value = "aql:viewpoint::FontFormat::bold"
              appliedOn += BundledImageDescription.ref("BusinessObject_Diag")[ ((it as DiagramDescription).additionalLayers.at("BusinessObject_relations_layer").containerMappings.head.subContainerMappings.at("BusinessObject_views").subNodeMappings.head.style as BundledImageDescription) ]
            ]
          ]
        ]
      ]
      additionalLayers += AdditionalLayer.create[
        name = "BusinessObject_relations_layer"
        label = "Relations"
        activeByDefault = true
        containerMappings += ContainerMapping.create[
          name = "RelatedBusinessObject"
          semanticCandidatesExpression = "aql:self.getRboToDisplayInBoGroupDiagram()"
          synchronizationLock = true
          documentation = "This diagram element is used to display the BusienssObject and RelatedBO concepts"
          domainClass = "equinoxeComposantsMetier.RelatedBO"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("VerticalStack")
          subContainerMappings += ContainerMapping.create[
            name = "BusinessObject_attributes"
            semanticCandidatesExpression = "var:self"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.AbstractBusinessObject"
            childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
            subNodeMappings += NodeMapping.create[
              name = "BoAttribute_Subnode"
              semanticCandidatesExpression = "feature:attributs"
              synchronizationLock = true
              domainClass = "equinoxeComposantsMetier.AbstractBoAttribute"
              style = BundledImageDescription.create[
                labelSize = 10
                labelExpression = "service:getEqxLabel()"
                labelAlignment = org.eclipse.sirius.viewpoint.LabelAlignment.getByName("LEFT")
                labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
                resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
                borderColor = (extras.get("Color#black") as SystemColor)
                labelColor = (extras.get("Color#black") as SystemColor)
                color = (extras.get("Color#black") as SystemColor)
              ]
            ]
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("underline")
              showIcon = false
              labelExpression = "Attributs"
              hideLabelByDefault = true
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#light_blue") as SystemColor)
            ]
          ]
          subContainerMappings += ContainerMapping.create[
            name = "BusinessObject_methods"
            semanticCandidatesExpression = "var:self"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.AbstractBusinessObject"
            childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
            subNodeMappings += NodeMapping.create[
              name = "BoMethod_Subnode"
              semanticCandidatesExpression = "feature:methods"
              synchronizationLock = true
              domainClass = "equinoxeComposantsMetier.BoMethod"
              style = BundledImageDescription.create[
                labelSize = 10
                labelExpression = "service:getEqxLabel()"
                labelAlignment = org.eclipse.sirius.viewpoint.LabelAlignment.getByName("LEFT")
                labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
                resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
                borderColor = (extras.get("Color#black") as SystemColor)
                labelColor = (extras.get("Color#black") as SystemColor)
                color = (extras.get("Color#black") as SystemColor)
              ]
            ]
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("underline")
              showIcon = false
              labelExpression = "Méthodes"
              hideLabelByDefault = true
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#light_blue") as SystemColor)
            ]
          ]
          subContainerMappings += ContainerMapping.create[
            name = "BusinessObject_views"
            semanticCandidatesExpression = "var:self"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.AbstractBusinessObject"
            childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
            subNodeMappings += NodeMapping.create[
              name = "BoView_subnode"
              semanticCandidatesExpression = "feature:referencedViews"
              synchronizationLock = true
              domainClass = "equinoxeComposantsMetier.BoView"
              style = BundledImageDescription.create[
                labelSize = 10
                labelAlignment = org.eclipse.sirius.viewpoint.LabelAlignment.getByName("LEFT")
                labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
                resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
                borderColor = (extras.get("Color#black") as SystemColor)
                labelColor = (extras.get("Color#black") as SystemColor)
                color = (extras.get("Color#black") as SystemColor)
              ]
            ]
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("underline")
              showIcon = false
              labelExpression = "Vues"
              hideLabelByDefault = true
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#light_blue") as SystemColor)
            ]
          ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_blue") as SystemColor)
          ]
        ]
      ]
      additionalLayers += AdditionalLayer.create[
        name = "BusinessObject_views_layer"
        label = "Vues d'objets métier"
        activeByDefault = true
        containerMappings += ContainerMapping.create[
          name = "BOView"
          semanticCandidatesExpression = "aql:self.businessObject.referencedViews"
          synchronizationLock = true
          domainClass = "equinoxeComposantsMetier.BoView"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("VerticalStack")
          subContainerMappings += ContainerMapping.create[
            name = "BOView_attributes"
            semanticCandidatesExpression = "var:self"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.BoView"
            childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
            subNodeMappings += NodeMapping.create[
              name = "BOViewAttribute_Subnode"
              semanticCandidatesExpression = "feature:attributs"
              synchronizationLock = true
              domainClass = "equinoxeComposantsMetier.AbstractBoViewAttribute"
              style = BundledImageDescription.create[
                labelSize = 10
                labelExpression = "service:getEqxLabel()"
                labelAlignment = org.eclipse.sirius.viewpoint.LabelAlignment.getByName("LEFT")
                labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
                resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
                borderColor = (extras.get("Color#black") as SystemColor)
                labelColor = (extras.get("Color#black") as SystemColor)
                color = (extras.get("Color#black") as SystemColor)
              ]
            ]
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("underline")
              showIcon = false
              labelExpression = "Attributs"
              hideLabelByDefault = true
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#light_yellow") as SystemColor)
            ]
          ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_yellow") as SystemColor)
          ]
        ]
        customization = Customization.create[
          vsmElementCustomizations += VSMElementCustomization.create[
            predicateExpression = "aql:self.oclAsType(equinoxeComposantsMetier::BoView).defaultView"
            featureCustomizations += EAttributeCustomization.create[
              attributeName = "labelFormat"
              value = "aql:viewpoint::FontFormat::bold"
              appliedOn += FlatContainerStyleDescription.ref("BusinessObject_Diag")[ ((it as DiagramDescription).additionalLayers.at("BusinessObject_views_layer").containerMappings.head.style as FlatContainerStyleDescription) ]
            ]
          ]
        ]
      ]
    ])
  }
  
  def getExtras() {
    context.extras
  }

  def <T extends org.eclipse.sirius.viewpoint.description.IdentifiedElement> at(Iterable<T> values, Object key) {
    context.at(values, key) as T // Xtend inference fails?
  }

}
