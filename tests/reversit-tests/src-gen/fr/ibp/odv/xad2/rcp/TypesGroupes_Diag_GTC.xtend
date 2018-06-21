package fr.ibp.odv.xad2.rcp

import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.diagram.description.ConditionalContainerStyleDescription
import org.eclipse.sirius.diagram.description.ContainerMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.EdgeMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.filter.CompositeFilterDescription
import org.eclipse.sirius.diagram.description.filter.MappingFilter
import org.eclipse.sirius.diagram.description.style.BundledImageDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.SquareDescription
import org.eclipse.sirius.diagram.description.style.WorkspaceImageDescription
import org.eclipse.sirius.diagram.description.tool.DeleteElementDescription
import org.eclipse.sirius.diagram.description.tool.DiagramNavigationDescription
import org.eclipse.sirius.diagram.description.tool.DoubleClickDescription
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.mypsycho.emf.modit.EModIt

class TypesGroupes_Diag_GTC {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "TypesGroupes_Diag_GTC".alias(DiagramDescription.create[
      documentation = "A TypesGroup Diagram in a GTC"
      name = "TypesGroupes_Diag_GTC"
      titleExpression = "aql:'Types'"
      domainClass = "equinoxeCore.TypesGroup"
      metamodel += (extras.get("$0") as EPackage)
      metamodel += (extras.get("$1") as EPackage)
      metamodel += (extras.get("$2") as EPackage)
      metamodel += (extras.get("$4") as EPackage)
      metamodel += (extras.get("$5") as EPackage)
      filters += CompositeFilterDescription.create[
        name = "Super_Filter_TypesGroup"
        label = "Super_Filter_TypesGroup"
        filters += MappingFilter.create[
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("Cbo_SuperTypeRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("BasicType_SuperTypeRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("Format_SuperTypeRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtClass_ImplementeLesInterfacesRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtClass_SuperTypeRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtInterface_SuperTypeRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("Format_ImplementeLesInterfacesRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("BoView_ImplementeLesInterfacesRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("BoView_SuperTypeRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("HwFormat_SuperTypeRef") ]
          mappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("WSFormat_SuperTypeRef") ]
        ]
      ]
      defaultLayer = Layer.create[
        name = "Default_Layer"
        label = "Default"
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("BasicType_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("Cbo_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtClass_ImplementeLesInterfacesRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtClass_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtInterface_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("Format_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("Format_ImplementeLesInterfacesRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("HwFormat_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("BoView_ImplementeLesInterfacesRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("BoView_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("WSFormat_SuperTypeRef") ]
        nodeMappings += NodeMapping.create[
          name = "TypesGroup_TypesGroup"
          semanticCandidatesExpression = "feature:subGroups"
          synchronizationLock = true
          domainClass = "equinoxeCore.TypesGroup"
          navigationDescriptions += DiagramNavigationDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.subSections.head.ownedTools.at("GoToTypesGroupDiagram") as DiagramNavigationDescription) ]
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          doubleClickDescription = DoubleClickDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.subSections.head.ownedTools.at("TypesGroup_DoubleClick_NavigationTool") as DoubleClickDescription) ]
          style = WorkspaceImageDescription.create[
            labelSize = 12
            showIcon = false
            labelExpression = "service:getEqxLabel()"
            sizeComputationExpression = "-1"
            labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
            resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
            workspacePath = "/fr.ibp.odv.xad2.rcp/icons/shapes/GroupeDeType.svg"
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#dark_blue") as SystemColor)
          ]
        ]
        nodeMappings += NodeMapping.create[
          name = "BasicType_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.BasicType"
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          style = SquareDescription.create[
            borderSizeComputationExpression = "2"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
            resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
            width = 15
            height = 5
            borderColor = (extras.get("Color#dark_purple") as SystemColor)
            labelColor = (extras.get("Color#dark_purple") as SystemColor)
            color = (extras.get("Color#white") as SystemColor)
          ]
        ]
        nodeMappings += NodeMapping.create[
          name = "CtPackage_TypesGroup"
          semanticCandidatesExpression = "feature:packages"
          synchronizationLock = true
          domainClass = "equinoxeCore.CtPackage"
          navigationDescriptions += DiagramNavigationDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.subSections.head.ownedTools.at("GoToCtPackageDiagram") as DiagramNavigationDescription) ]
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          doubleClickDescription = DoubleClickDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.subSections.head.ownedTools.at("CtPackage_DoubleClick_NavigationTool") as DoubleClickDescription) ]
          style = WorkspaceImageDescription.create[
            labelSize = 12
            showIcon = false
            labelExpression = "service:getEqxLabel()"
            sizeComputationExpression = "-1"
            labelPosition = org.eclipse.sirius.diagram.LabelPosition.getByName("node")
            resizeKind = org.eclipse.sirius.diagram.ResizeKind.getByName("NSEW")
            workspacePath = "/fr.ibp.odv.xad2.rcp/icons/shapes/CtPackage.svg"
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#dark_orange") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "Cbo_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.Cbo"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Cbo_TypesGroup").subNodeMappings.at("CboAttribute_Subnode_Cbo") ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("Cbo_TypesGroup").subNodeMappings.at("CboMethod_Subnode_Cbo") ]
          subNodeMappings += NodeMapping.create[
            name = "CboAttribute_Subnode_Cbo"
            semanticCandidatesExpression = "feature:attributs"
            synchronizationLock = true
            domainClass = "equinoxeCore.CboAttribute"
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
            name = "CboMethod_Subnode_Cbo"
            semanticCandidatesExpression = "feature:methodeDObjetDeBase"
            synchronizationLock = true
            domainClass = "equinoxeCore.CboMethod"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#dark_gray") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_gray") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "Enumeration_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.Enumeration"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          subNodeMappings += NodeMapping.create[
            name = "EnumerationValue_Subnode_Enumeration"
            semanticCandidatesExpression = "feature:values"
            synchronizationLock = true
            domainClass = "equinoxeCore.EnumerationValue"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_orange") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "Format_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.Format"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          subNodeMappings += NodeMapping.create[
            name = "BasicTypeFAttribute_Subnode_Format"
            semanticCandidatesExpression = "feature:attributs"
            domainClass = "equinoxeCore.BasicTypeFAttribute"
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
            name = "SelfDescribingFormatFAttribute_Subnode_Format"
            semanticCandidatesExpression = "feature:attributs"
            domainClass = "equinoxeCore.SelfDescribingFormatFAttribute"
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
            name = "FormatFAttribute_Subnode_Format"
            semanticCandidatesExpression = "feature:attributs"
            domainClass = "equinoxeCore.FormatFAttribute"
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
            name = "BoViewFAttribute_Subnode_Format"
            semanticCandidatesExpression = "feature:attributs"
            domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_green") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "CtClass_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.CtClass"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          reusedNodeMappings += NodeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.containerMappings.head.subNodeMappings.at("CtAttribute_Subnode_CtClass") ]
          reusedNodeMappings += NodeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.containerMappings.head.subNodeMappings.at("CtOperation_Subnode_CtClass") ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#dark_gray") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_gray") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "CtInterface_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.CtInterface"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_TypesGroup").subNodeMappings.head ]
          subNodeMappings += NodeMapping.create[
            name = "CtOperation_Subnode_CtInterface"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#dark_gray") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_gray") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "WSFormat_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.WSFormat"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          subNodeMappings += NodeMapping.create[
            name = "BasicTypeFAttribute_Subnode_WSFormat"
            semanticCandidatesExpression = "feature:attributs"
            domainClass = "equinoxeCore.BasicTypeFAttribute"
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
            name = "SelfDescribingWSFormatFAttribute_Subnode_WSFormat"
            semanticCandidatesExpression = "feature:attributs"
            domainClass = "equinoxeCore.SelfDescribingWSFormatFAttribute"
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
            name = "FormatFAttribute_Subnode_WSFormat"
            semanticCandidatesExpression = "feature:attributs"
            domainClass = "equinoxeCore.FormatFAttribute"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_green") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "HwFormat_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.HwFormat"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          subNodeMappings += NodeMapping.create[
            name = "HwFormatAttribute_Subnode_HwFormat"
            semanticCandidatesExpression = "feature:elements"
            synchronizationLock = true
            domainClass = "equinoxeCore.HwFormatAttribute"
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
            name = "TableHwFormat_Subnode_HwFormat"
            semanticCandidatesExpression = "feature:elements"
            synchronizationLock = true
            domainClass = "equinoxeCore.TableHwFormat"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_green") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "CboFilter_TypesGroup"
          semanticCandidatesExpression = "feature:filters"
          synchronizationLock = true
          domainClass = "equinoxeCore.CboFilter"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CboFilter_TypesGroup").subNodeMappings.head ]
          subNodeMappings += NodeMapping.create[
            name = "CboFilterCriteria_Subnode_CboFilter"
            semanticCandidatesExpression = "feature:criteres"
            synchronizationLock = true
            domainClass = "equinoxeCore.CboFilterCriteria"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_blue") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "BoView_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeComposantsMetier.BoView"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("BoView_TypesGroup").subNodeMappings.at("BoViewAttribute_Subnode_BoView") ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("BoView_TypesGroup").subNodeMappings.at("BasicTypeBAttribute_Subnode_BoView") ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("BoView_TypesGroup").subNodeMappings.at("BoViewBAttribute_Subnode_BoView") ]
          subNodeMappings += NodeMapping.create[
            name = "BusinessObject_Subnode_BoView"
            semanticCandidatesExpression = "feature:businessObject"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.BusinessObject"
            deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
            style = BundledImageDescription.create[
              labelSize = 10
              labelFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
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
            name = "BoViewAttribute_Subnode_BoView"
            semanticCandidatesExpression = "feature:attributs"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.BoViewAttribute"
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
            name = "BasicTypeBAttribute_Subnode_BoView"
            semanticCandidatesExpression = "feature:attributs"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
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
            name = "BoViewBAttribute_Subnode_BoView"
            semanticCandidatesExpression = "feature:attributs"
            synchronizationLock = true
            domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
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
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_yellow") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "TypeCollection_TypesGroup"
          semanticCandidatesExpression = "aql:self.types->select(elem | elem.oclIsTypeOf(equinoxeCore::TypeCollection))"
          synchronizationLock = true
          domainClass = "equinoxeCore.TypeCollection"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_gray") as SystemColor)
          ]
          conditionnalStyles += ConditionalContainerStyleDescription.create[
            predicateExpression = "aql:self.type.oclIsKindOf(equinoxeCore::AbstractBoView)"
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelSize = 12
              labelExpression = "service:getEqxLabel()"
              roundedCorner = true
              backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#light_yellow") as SystemColor)
            ]
          ]
          conditionnalStyles += ConditionalContainerStyleDescription.create[
            predicateExpression = "aql:self.type.oclIsKindOf(equinoxeCore::AbstractFormat)"
            style = FlatContainerStyleDescription.create[
              borderSizeComputationExpression = "1"
              labelSize = 12
              labelExpression = "service:getEqxLabel()"
              roundedCorner = true
              backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
              borderColor = (extras.get("Color#black") as SystemColor)
              labelColor = (extras.get("Color#black") as SystemColor)
              backgroundColor = (extras.get("Color#white") as SystemColor)
              foregroundColor = (extras.get("Color#light_green") as SystemColor)
            ]
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "WSTypeCollection_TypesGroup"
          semanticCandidatesExpression = "feature:types"
          synchronizationLock = true
          domainClass = "equinoxeCore.WSTypeCollection"
          childrenPresentation = org.eclipse.sirius.diagram.ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = org.eclipse.sirius.diagram.BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#black") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_green") as SystemColor)
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
