package fr.ibp.odv.xad2.rcp

import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.diagram.description.ConditionalEdgeStyleDescription
import org.eclipse.sirius.diagram.description.ContainerMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.EdgeMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.style.BundledImageDescription
import org.eclipse.sirius.diagram.description.style.CenterLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.DotDescription
import org.eclipse.sirius.diagram.description.style.EdgeStyleDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.WorkspaceImageDescription
import org.eclipse.sirius.diagram.description.tool.ContainerCreationDescription
import org.eclipse.sirius.diagram.description.tool.DeleteElementDescription
import org.eclipse.sirius.diagram.description.tool.DirectEditLabel
import org.eclipse.sirius.diagram.description.tool.EdgeCreationDescription
import org.eclipse.sirius.diagram.description.tool.NodeCreationDescription
import org.eclipse.sirius.diagram.description.tool.NodeCreationVariable
import org.eclipse.sirius.diagram.description.tool.SourceEdgeCreationVariable
import org.eclipse.sirius.diagram.description.tool.SourceEdgeViewCreationVariable
import org.eclipse.sirius.diagram.description.tool.TargetEdgeCreationVariable
import org.eclipse.sirius.diagram.description.tool.TargetEdgeViewCreationVariable
import org.eclipse.sirius.diagram.description.tool.ToolSection
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.tool.Case
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.ContainerViewVariable
import org.eclipse.sirius.viewpoint.description.tool.CreateInstance
import org.eclipse.sirius.viewpoint.description.tool.Default
import org.eclipse.sirius.viewpoint.description.tool.InitEdgeCreationOperation
import org.eclipse.sirius.viewpoint.description.tool.InitialNodeCreationOperation
import org.eclipse.sirius.viewpoint.description.tool.Switch
import org.mypsycho.emf.modit.EModIt

class DialogHandler_Diag {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "DialogHandler_Diag".alias(DiagramDescription.create[
      name = "DialogHandler_Diag"
      titleExpression = "['Carte'/]"
      initialisation = true
      domainClass = "equinoxeDialogue::DialogHandler"
      metamodel += (extras.get("$2") as EPackage)
      defaultLayer = Layer.create[
        name = "Default"
        nodeMappings += NodeMapping.create[
          name = "InitialNode_DialogHandler"
          semanticCandidatesExpression = "aql:self.initialState"
          synchronizationLock = true
          domainClass = "equinoxeDialogue::InitialState"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("NormalDeletionTool") as DeleteElementDescription) ]
          style = DotDescription.create[
            showIcon = false
            labelExpression = ""
            labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#black") as SystemColor)
          ]
        ]
        nodeMappings += NodeMapping.create[
          name = "FinalState_DialogHandler"
          semanticCandidatesExpression = "aql:self.finalState"
          domainClass = "equinoxeDialogue::FinalState"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("NormalDeletionTool") as DeleteElementDescription) ]
          style = WorkspaceImageDescription.create[
            labelSize = 1
            showIcon = false
            labelExpression = ""
            sizeComputationExpression = "-1"
            labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
            resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
            workspacePath = "/fr.ibp.odv.xad2.rcp/icons/shapes/FinalState.svg"
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "EventTransition_DialogHandler"
          semanticCandidatesExpression = "aql:self.eAllContents(equinoxeDialogue::EventTransition)"
          targetFinderExpression = "feature:target"
          sourceFinderExpression = "aql:self.eContainer()"
          domainClass = "equinoxeDialogue::EventTransition"
          useDomainElement = true
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("NormalDeletionTool") as DeleteElementDescription) ]
          sourceMapping += ContainerMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
          targetMapping += ContainerMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
          targetMapping += NodeMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("FinalState_DialogHandler") ]
          style = EdgeStyleDescription.create[
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelExpression = "aql:self.getTransitionLabel()"
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
          conditionnalStyles += ConditionalEdgeStyleDescription.create[
            predicateExpression = "aql:self.event != null and self.event.toString().contains('ERROR')"
            style = EdgeStyleDescription.create[
              sizeComputationExpression = "2"
              strokeColor = (extras.get("Color#red") as SystemColor)
              centerLabelStyleDescription = CenterLabelStyleDescription.create[
                showIcon = false
                labelExpression = "aql:self.getTransitionLabel()"
                labelColor = (extras.get("Color#black") as SystemColor)
              ]
            ]
          ]
          conditionnalStyles += ConditionalEdgeStyleDescription.create[
            predicateExpression = "aql:self.event != null and self.event.toString().contains('SUCCESS')"
            style = EdgeStyleDescription.create[
              sizeComputationExpression = "2"
              strokeColor = (extras.get("Color#green") as SystemColor)
              centerLabelStyleDescription = CenterLabelStyleDescription.create[
                showIcon = false
                labelExpression = "aql:self.getTransitionLabel()"
                labelColor = (extras.get("Color#black") as SystemColor)
              ]
            ]
          ]
        ]
        edgeMappings += EdgeMapping.create[
          name = "InitialTransition_DialogHandler"
          semanticCandidatesExpression = "aql:self.initialState.transitions"
          targetFinderExpression = "aql:self.target"
          sourceFinderExpression = "aql:self.eContainer()"
          domainClass = "equinoxeDialogue::InitialTransition"
          useDomainElement = true
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("NormalDeletionTool") as DeleteElementDescription) ]
          sourceMapping += NodeMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("InitialNode_DialogHandler") ]
          targetMapping += ContainerMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
          style = EdgeStyleDescription.create[
            sizeComputationExpression = "2"
            routingStyle = org.eclipse.sirius.diagram.EdgeRouting.getByName("manhattan")
            strokeColor = (extras.get("Color#gray") as SystemColor)
            centerLabelStyleDescription = CenterLabelStyleDescription.create[
              showIcon = false
              labelExpression = "aql:self.getInitialTransitionLabel()"
              labelColor = (extras.get("Color#black") as SystemColor)
            ]
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "ScreenMapState_DialogHandler"
          semanticCandidatesExpression = "aql:self.states"
          domainClass = "equinoxeDialogue::ScreenMapState"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("NormalDeletionTool") as DeleteElementDescription) ]
          labelDirectEdit = DirectEditLabel.ref("ProcessHandler_Diag")[ ((it as DiagramDescription).defaultLayer.toolSections.head.ownedTools.at("StateDirectEditTool_ProcessHandler") as DirectEditLabel) ]
          subNodeMappings += NodeMapping.create[
            name = "ScreenLabel_ScreenMapState_DialogHandler"
            semanticCandidatesExpression = "aql:self.screen"
            synchronizationLock = true
            domainClass = "equinoxeDialogue::DialogScreen"
            style = BundledImageDescription.create[
              labelExpression = "aql:'Screen: '+self.name"
              labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
              resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              color = (extras.get("Color#black") as SystemColor)
            ]
          ]
          style = FlatContainerStyleDescription.create[
            arcWidth = 20
            arcHeight = 20
            borderSizeComputationExpression = "1"
            labelExpression = "aql:self.name"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#dark_blue") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#light_blue") as SystemColor)
            foregroundColor = (extras.get("Color#light_blue") as SystemColor)
          ]
        ]
        toolSections += ToolSection.create[
          name = "DialogHandler_Tools"
          ownedTools += EdgeCreationDescription.create[
            name = "EventCreationTool_ProcessHandler"
            label = "Transition"
            edgeMappings += EdgeMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("EventTransition_DialogHandler") ]
            edgeMappings += EdgeMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("InitialTransition_DialogHandler") ]
            sourceVariable = SourceEdgeCreationVariable.create[
              name = "source"
            ]
            targetVariable = TargetEdgeCreationVariable.create[
              name = "target"
            ]
            sourceViewVariable = SourceEdgeViewCreationVariable.create[
              name = "sourceView"
            ]
            targetViewVariable = TargetEdgeViewCreationVariable.create[
              name = "targetView"
            ]
            initialOperation = InitEdgeCreationOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:source"
                subModelOperations += Switch.create[
                  cases += Case.create[
                    conditionExpression = "aql:self.oclIsKindOf(equinoxeDialogue::InitialState)"
                    subModelOperations += CreateInstance.create[
                      typeName = "equinoxeDialogue::InitialTransition"
                      referenceName = "transitions"
                      subModelOperations += ChangeContext.create[
                        browseExpression = "aql:instance.eqxInitElement()"
                      ]
                      subModelOperations += ChangeContext.create[
                        browseExpression = "aql:instance.eqxPut('target',target)"
                      ]
                    ]
                  ]
                  ^default = Default.create[
                    subModelOperations += CreateInstance.create[
                      typeName = "equinoxeDialogue::EventTransition"
                      referenceName = "transition"
                      subModelOperations += ChangeContext.create[
                        browseExpression = "aql:instance.eqxInitElement()"
                      ]
                      subModelOperations += ChangeContext.create[
                        browseExpression = "aql:instance.eqxPut('target',target)"
                      ]
                    ]
                  ]
                ]
              ]
            ]
          ]
          ownedTools += ContainerCreationDescription.create[
            name = "ScreenMapState_DialogHandler"
            label = "Etape de présentation d'écran"
            containerMappings += ContainerMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.containerMappings.head ]
            variable = NodeCreationVariable.create[
              name = "container"
            ]
            viewVariable = ContainerViewVariable.create[
              name = "containerView"
            ]
            initialOperation = InitialNodeCreationOperation.create[
              firstModelOperations = CreateInstance.create[
                typeName = "equinoxeDialogue::ScreenMapState"
                referenceName = "states"
                subModelOperations += ChangeContext.create[
                  browseExpression = "aql:instance.eqxInitElement()"
                ]
              ]
            ]
          ]
          ownedTools += NodeCreationDescription.create[
            name = "InitialNodeToolCreation_DialogHandler"
            label = "Start"
            precondition = "aql:container.initialState == null"
            nodeMappings += NodeMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("InitialNode_DialogHandler") ]
            variable = NodeCreationVariable.create[
              name = "container"
            ]
            viewVariable = ContainerViewVariable.create[
              name = "containerView"
            ]
            initialOperation = InitialNodeCreationOperation.create[
              firstModelOperations = CreateInstance.create[
                typeName = "equinoxeDialogue::InitialState"
                referenceName = "initialState"
                subModelOperations += ChangeContext.create[
                  browseExpression = "aql:instance.eqxInitElement()"
                ]
              ]
            ]
          ]
          ownedTools += NodeCreationDescription.create[
            name = "FinalNodeToolCreation_DialogHandler"
            label = "Stop"
            precondition = "aql:container.finalState == null"
            nodeMappings += NodeMapping.ref("DialogHandler_Diag")[ (it as DiagramDescription).defaultLayer.nodeMappings.at("FinalState_DialogHandler") ]
            variable = NodeCreationVariable.create[
              name = "container"
            ]
            viewVariable = ContainerViewVariable.create[
              name = "containerView"
            ]
            initialOperation = InitialNodeCreationOperation.create[
              firstModelOperations = CreateInstance.create[
                typeName = "equinoxeDialogue::FinalState"
                referenceName = "finalState"
                subModelOperations += ChangeContext.create[
                  browseExpression = "aql:instance.eqxInitElement()"
                ]
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
