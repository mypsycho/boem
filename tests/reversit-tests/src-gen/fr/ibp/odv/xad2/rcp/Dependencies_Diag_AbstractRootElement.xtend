package fr.ibp.odv.xad2.rcp

import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.diagram.description.ConditionalNodeStyleDescription
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.EdgeMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.style.CenterLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.EdgeStyleDescription
import org.eclipse.sirius.diagram.description.style.EllipseNodeDescription
import org.eclipse.sirius.diagram.description.style.WorkspaceImageDescription
import org.eclipse.sirius.diagram.description.tool.DeleteElementDescription
import org.eclipse.sirius.diagram.description.tool.ToolSection
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.ContainerViewVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementDeleteVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementViewVariable
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.eclipse.sirius.viewpoint.description.tool.ToolDescription
import org.mypsycho.emf.modit.EModIt

class Dependencies_Diag_AbstractRootElement {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "Dependencies_Diag_AbstractRootElement".alias(DiagramDescription.create[
      name = "Dependencies_Diag_AbstractRootElement"
      titleExpression = "aql:'Dépendances'"
      domainClass = "equinoxeCore.Gtc"
      metamodel += (extras.get("$0") as EPackage)
      metamodel += (extras.get("$1") as EPackage)
      metamodel += (extras.get("$2") as EPackage)
      metamodel += (extras.get("$4") as EPackage)
      metamodel += (extras.get("$6") as EPackage)
      defaultLayer = Layer.create[
        name = "Default"
        nodeMappings += NodeMapping.create[
          name = "Gtc_Dependencies"
          semanticCandidatesExpression = "var:self"
          domainClass = "equinoxeCore.Gtc"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          style = EllipseNodeDescription.create[
            labelSize = 12
            showIcon = false
            labelExpression = "service:getEqxLabel()"
            labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
            resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
            horizontalDiameterComputationExpression = "20"
            verticalDiameterComputationExpression = "10"
            borderColor = (extras.get("Color#dark_green") as SystemColor)
            labelColor = (extras.get("Color#dark_green") as SystemColor)
            color = (extras.get("Color#white") as SystemColor)
          ]
          conditionnalStyles += ConditionalNodeStyleDescription.create[
            predicateExpression = "aql:self.oclIsTypeOf(equinoxeCore::Gtc)"
            style = WorkspaceImageDescription.create[
              labelSize = 12
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
              labelExpression = "service:getEqxLabel()"
              sizeComputationExpression = "-1"
              labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
              resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
              workspacePath = "/fr.ibp.odv.xad2.rcp/icons/shapes/GroupeDeType.svg"
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#dark_blue") as SystemColor)
            ]
          ]
        ]
        nodeMappings += NodeMapping.create[
          name = "AbstractRoot_Dependencies_dependencies"
          semanticCandidatesExpression = "feature:dependencies"
          domainClass = "equinoxeCore.AbstractRootElement"
          deletionDescription = DeleteElementDescription.ref("Dependencies_Diag_AbstractRootElement")[ ((it as DiagramDescription).defaultLayer.toolSections.at("Dependencies_Diag_AbstractRootElement_DeletionTools").ownedTools.at("AbstractRoot_Dependencies_dependencies_DeleteTool") as DeleteElementDescription) ]
          style = EllipseNodeDescription.create[
            labelExpression = "service:getEqxLabel()"
            labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
            resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
            horizontalDiameterComputationExpression = "20"
            verticalDiameterComputationExpression = "10"
            borderColor = (extras.get("Color#dark_gray") as SystemColor)
            labelColor = (extras.get("Color#gray") as SystemColor)
            color = (extras.get("Color#white") as SystemColor)
          ]
          conditionnalStyles += ConditionalNodeStyleDescription.create[
            predicateExpression = "aql:self.oclIsTypeOf(equinoxeCore::Gtc)"
            style = WorkspaceImageDescription.create[
              labelSize = 12
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
              labelExpression = "service:getEqxLabel()"
              sizeComputationExpression = "-1"
              labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
              resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
              workspacePath = "/fr.ibp.odv.xad2.rcp/icons/shapes/GroupeDeType.svg"
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#dark_blue") as SystemColor)
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "Gtc_DependenciesRef_Dependencies"
          preconditionExpression = "aql:source.equals(container) or target.equals(container)"
          synchronizationLock = true
          targetFinderExpression = "feature:dependencies"
          deletionDescription = DeleteElementDescription.ref("Dependencies_Diag_AbstractRootElement")[ ((it as DiagramDescription).defaultLayer.toolSections.at("Dependencies_Diag_AbstractRootElement_DeletionTools").ownedTools.at("AbstractRoot_Dependencies_dependencies_reference_DeleteTool") as DeleteElementDescription) ]
          sourceMapping += NodeMapping.ref("Dependencies_Diag_AbstractRootElement")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("AbstractRoot_Dependencies_dependencies") ]
          sourceMapping += NodeMapping.ref("Dependencies_Diag_AbstractRootElement")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("Gtc_Dependencies") ]
          targetMapping += NodeMapping.ref("Dependencies_Diag_AbstractRootElement")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("AbstractRoot_Dependencies_dependencies") ]
          targetMapping += NodeMapping.ref("Dependencies_Diag_AbstractRootElement")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("Gtc_Dependencies") ]
          style = EdgeStyleDescription.create[
            lineStyle = org.eclipse.sirius.diagram.LineStyle.getByName("dash")
            sizeComputationExpression = "2"
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        toolSections += ToolSection.create[
          name = "Dependencies_Diag_AbstractRootElement_DeletionTools"
          ownedTools += DeleteElementDescription.create[
            documentation = "This needs to be investigated, since all dependencies, including the read-only ones should be removable from the list of dependencies"
            name = "AbstractRoot_Dependencies_dependencies_DeleteTool"
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
            name = "AbstractRoot_Dependencies_dependencies_reference_DeleteTool"
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
                browseExpression = "aql:self.eqxRemove('dependencies', elementView.targetNode.target->asSequence())"
              ]
            ]
          ]
        ]
        toolSections += ToolSection.create[
          name = "Dependencies_Diag_AbstractRootElement_CreationToolsection"
          label = "Dépendances"
          ownedTools += ToolDescription.create[
            name = "Dependency_Creation_Tool"
            label = "Ajouter une Dépendance"
            element = ElementVariable.create[
              name = "element"
            ]
            elementView = ElementViewVariable.create[
              name = "elementView"
            ]
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.oclAsType(equinoxeCore::AbstractRootElement).eqxAddDependency()"
              ]
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
