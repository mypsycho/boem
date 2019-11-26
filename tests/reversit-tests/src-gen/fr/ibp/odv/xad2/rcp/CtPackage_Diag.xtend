package fr.ibp.odv.xad2.rcp

import org.eclipse.emf.ecore.EPackage
import org.eclipse.sirius.diagram.BackgroundStyle
import org.eclipse.sirius.diagram.ContainerLayout
import org.eclipse.sirius.diagram.description.ContainerMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.EdgeMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.tool.DeleteElementDescription
import org.eclipse.sirius.viewpoint.description.IdentifiedElement
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.mypsycho.modit.emf.EModIt

class CtPackage_Diag {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "CtPackage_Diag".alias(DiagramDescription.create[ 
      name = "CtPackage_Diag"
      titleExpression = "aql:'Types'"
      domainClass = "equinoxeCore.CtPackage"
      metamodel += (extras.get("$0") as EPackage)
      metamodel += (extras.get("$1") as EPackage)
      metamodel += (extras.get("$2") as EPackage)
      metamodel += (extras.get("$4") as EPackage)
      metamodel += (extras.get("$5") as EPackage)
      defaultLayer = Layer.create[
        name = "Default"
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtClass_ImplementeLesInterfacesRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtClass_SuperTypeRef") ]
        reusedMappings += EdgeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.edgeMappings.at("CtInterface_SuperTypeRef") ]
        containerMappings += ContainerMapping.create[
          name = "CtClass_CtPackage"
          semanticCandidatesExpression = "feature:classes"
          synchronizationLock = true
          domainClass = "equinoxeCore.CtClass"
          childrenPresentation = ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          reusedNodeMappings += NodeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.containerMappings.head.subNodeMappings.at("CtAttribute_Subnode_CtClass") ]
          reusedNodeMappings += NodeMapping.ref("Reused")[ (it as DiagramDescription).defaultLayer.containerMappings.head.subNodeMappings.at("CtOperation_Subnode_CtClass") ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#dark_gray") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_gray") as SystemColor)
          ]
        ]
        containerMappings += ContainerMapping.create[
          name = "CtInterface_CtPackage"
          semanticCandidatesExpression = "feature:interfaces"
          synchronizationLock = true
          domainClass = "equinoxeCore.CtInterface"
          childrenPresentation = ContainerLayout.getByName("List")
          deletionDescription = DeleteElementDescription.ref("Reused")[ ((it as DiagramDescription).toolSection.ownedTools.at("DoNotDeleteElements") as DeleteElementDescription) ]
          reusedNodeMappings += NodeMapping.ref("TypesGroupes_Diag_GTC")[ (it as DiagramDescription).defaultLayer.containerMappings.at("CtInterface_TypesGroup").subNodeMappings.head ]
          style = FlatContainerStyleDescription.create[
            borderSizeComputationExpression = "1"
            labelSize = 12
            labelExpression = "service:getEqxLabel()"
            roundedCorner = true
            backgroundStyle = BackgroundStyle.getByName("GradientTopToBottom")
            borderColor = (extras.get("Color#dark_gray") as SystemColor)
            labelColor = (extras.get("Color#black") as SystemColor)
            backgroundColor = (extras.get("Color#white") as SystemColor)
            foregroundColor = (extras.get("Color#light_gray") as SystemColor)
          ]
        ]
      ]
    ])
  }
  
  def getExtras() {
    context.extras
  }

  def <T extends IdentifiedElement> at(Iterable<T> values, Object key) {
    context.at(values, key) as T // Xtend inference fails?
  }

}
