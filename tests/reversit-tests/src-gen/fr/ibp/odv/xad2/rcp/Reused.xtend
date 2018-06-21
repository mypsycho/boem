package fr.ibp.odv.xad2.rcp

import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.diagram.description.ContainerMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.EdgeMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.style.BundledImageDescription
import org.eclipse.sirius.diagram.description.style.CenterLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.EdgeStyleDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.tool.DeleteElementDescription
import org.eclipse.sirius.diagram.description.tool.DiagramNavigationDescription
import org.eclipse.sirius.diagram.description.tool.DoubleClickDescription
import org.eclipse.sirius.diagram.description.tool.ElementDoubleClickVariable
import org.eclipse.sirius.diagram.description.tool.Navigation
import org.eclipse.sirius.diagram.description.tool.ToolSection
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.ContainerViewVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementDeleteVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementSelectVariable
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.eclipse.sirius.viewpoint.description.tool.NameVariable
import org.mypsycho.emf.modit.EModIt

class Reused {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "Reused".alias(DiagramDescription.create[
      name = "Reused"
      domainClass = "equinoxeCore::Gtc"
      preconditionExpression = "false"
      metamodel += (extras.get("$1") as EPackage)
      metamodel += (extras.get("$0") as EPackage)
      metamodel += (extras.get("$2") as EPackage)
      metamodel += (extras.get("$3") as EPackage)
      metamodel += (extras.get("$4") as EPackage)
      metamodel += (extras.get("$5") as EPackage)
      defaultLayer = Layer.create[
        name = "Default"
        edgeMappings += EdgeMapping.create[
          name = "BasicType_SuperTypeRef"
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("BasicType_TypesGroup") ]
          targetMapping += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("BasicType_TypesGroup") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "BoView_SuperTypeRef"
          synchronizationLock = true
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("BoView_TypesGroup") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("BoView_TypesGroup") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            foldingStyle = org.eclipse.sirius.diagram.description.FoldingStyle.getByName("SOURCE")
            endsCentering = org.eclipse.sirius.diagram.description.CenteringStyle.getByName("Both")
            strokeColor = (extras.get("Color#black") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "Cbo_SuperTypeRef"
          synchronizationLock = true
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Cbo_TypesGroup") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Cbo_TypesGroup") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            foldingStyle = org.eclipse.sirius.diagram.description.FoldingStyle.getByName("SOURCE")
            endsCentering = org.eclipse.sirius.diagram.description.CenteringStyle.getByName("Both")
            strokeColor = (extras.get("Color#black") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "CtClass_SuperTypeRef"
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_CtPackage") ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_TypesGroup") ]
          targetMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_CtPackage") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_TypesGroup") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "CtInterface_SuperTypeRef"
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_TypesGroup") ]
          sourceMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_CtPackage") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_TypesGroup") ]
          targetMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_CtPackage") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "Format_SuperTypeRef"
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Format_TypesGroup") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Format_TypesGroup") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "HwFormat_SuperTypeRef"
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("HwFormat_TypesGroup") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("HwFormat_TypesGroup") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "WSFormat_SuperTypeRef"
          targetFinderExpression = "feature:superType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("WSFormat_TypesGroup") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("WSFormat_TypesGroup") ]
          style = EdgeStyleDescription.create[
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "BoView_ImplementeLesInterfacesRef"
          targetFinderExpression = "feature:implementeLesInterfaces"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Format_TypesGroup") ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("BoView_TypesGroup") ]
          sourceMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_CtPackage") ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_TypesGroup") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_TypesGroup") ]
          targetMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_CtPackage") ]
          style = EdgeStyleDescription.create[
            lineStyle = org.eclipse.sirius.diagram.LineStyle.getByName("dash")
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "CtClass_ImplementeLesInterfacesRef"
          targetFinderExpression = "feature:implementeLesInterfaces"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_TypesGroup") ]
          sourceMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtClass_CtPackage") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_TypesGroup") ]
          targetMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_CtPackage") ]
          style = EdgeStyleDescription.create[
            lineStyle = org.eclipse.sirius.diagram.LineStyle.getByName("dash")
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "Format_ImplementeLesInterfacesRef"
          targetFinderExpression = "feature:implementeLesInterfaces"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Format_TypesGroup") ]
          targetMapping += ContainerMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_TypesGroup") ]
          targetMapping += ContainerMapping.ref("CtPackage_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_CtPackage") ]
          style = EdgeStyleDescription.create[
            lineStyle = org.eclipse.sirius.diagram.LineStyle.getByName("dash")
            targetArrow = org.eclipse.sirius.diagram.EdgeArrows.getByName("InputClosedArrow")
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "CtClass_Abstract"
          domainClass = "equinoxeCore.CtClass"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          subNodeMappings += NodeMapping.create[
            name = "CtAttribute_Subnode_CtClass"
            semanticCandidatesExpression = "feature:attributs"
            synchronizationLock = true
            domainClass = "equinoxeCore.CtAttribute"
            deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
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
          subNodeMappings += NodeMapping.create[
            name = "CtOperation_Subnode_CtClass"
            semanticCandidatesExpression = "feature:operations"
            synchronizationLock = true
            domainClass = "equinoxeCore.CtOperation"
            deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
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
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_gray") as SystemColor)
          ]
        ]
      ]
      toolSection = ToolSection.create[
        name = "Reused"
        ownedTools += DeleteElementDescription.create[
          documentation = "Never delete a GTC"
          name = "DoNotDeleteElements"
          precondition = "aql:false"
          element = ElementDeleteVariable.create[
            name = "element"
          ]
          elementView = ElementDeleteVariable.create[
            name = "elementView"
          ]
          containerView = ContainerViewVariable.create[
            name = "containerView"
          ]
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "var:self"
            ]
          ]
        ]
        ownedTools += DeleteElementDescription.create[
          name = "NormalDeletionTool"
          element = ElementDeleteVariable.create[
            name = "element"
          ]
          elementView = ElementDeleteVariable.create[
            name = "elementView"
          ]
          containerView = ContainerViewVariable.create[
            name = "containerView"
          ]
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxDelete()"
            ]
          ]
        ]
        subSections += ToolSection.create[
          name = "ReusedNavigation_ToolSection"
          ownedTools += DoubleClickDescription.create[
            name = "TypesGroup_DoubleClick_NavigationTool"
            mappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("TypesGroup_TypesGroup") ]
            element = ElementDoubleClickVariable.create[
              name = "element"
            ]
            elementView = ElementDoubleClickVariable.create[
              name = "elementView"
            ]
            initialOperation = InitialOperation.create[
              firstModelOperations = Navigation.create[
                createIfNotExistent = true
                diagramDescription = DiagramDescription.ref("TypesGroupes_Diag_GTC")
              ]
            ]
          ]
          ownedTools += DoubleClickDescription.create[
            name = "CtPackage_DoubleClick_NavigationTool"
            mappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("CtPackage_TypesGroup") ]
            element = ElementDoubleClickVariable.create[
              name = "element"
            ]
            elementView = ElementDoubleClickVariable.create[
              name = "elementView"
            ]
            initialOperation = InitialOperation.create[
              firstModelOperations = Navigation.create[
                createIfNotExistent = true
                diagramDescription = DiagramDescription.ref("CtPackage_Diag")
              ]
            ]
          ]
          ownedTools += DiagramNavigationDescription.create[
            name = "GoToTypesGroupDiagram"
            diagramDescription = DiagramDescription.ref("TypesGroupes_Diag_GTC")
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
          ownedTools += DiagramNavigationDescription.create[
            name = "GoToCtPackageDiagram"
            diagramDescription = DiagramDescription.ref("CtPackage_Diag")
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
