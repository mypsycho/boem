package fr.ibp.odv.xad2.rcp

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.HashMap
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.sirius.diagram.description.AdditionalLayer
import org.eclipse.sirius.diagram.description.ConditionalContainerStyleDescription
import org.eclipse.sirius.diagram.description.ConditionalEdgeStyleDescription
import org.eclipse.sirius.diagram.description.ConditionalNodeStyleDescription
import org.eclipse.sirius.diagram.description.ContainerMapping
import org.eclipse.sirius.diagram.description.DiagramDescription
import org.eclipse.sirius.diagram.description.EdgeMapping
import org.eclipse.sirius.diagram.description.Layer
import org.eclipse.sirius.diagram.description.NodeMapping
import org.eclipse.sirius.diagram.description.filter.CompositeFilterDescription
import org.eclipse.sirius.diagram.description.filter.MappingFilter
import org.eclipse.sirius.diagram.description.style.BeginLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.BundledImageDescription
import org.eclipse.sirius.diagram.description.style.CenterLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.DotDescription
import org.eclipse.sirius.diagram.description.style.EdgeStyleDescription
import org.eclipse.sirius.diagram.description.style.EllipseNodeDescription
import org.eclipse.sirius.diagram.description.style.EndLabelStyleDescription
import org.eclipse.sirius.diagram.description.style.FlatContainerStyleDescription
import org.eclipse.sirius.diagram.description.style.SquareDescription
import org.eclipse.sirius.diagram.description.style.WorkspaceImageDescription
import org.eclipse.sirius.diagram.description.tool.ContainerCreationDescription
import org.eclipse.sirius.diagram.description.tool.DeleteElementDescription
import org.eclipse.sirius.diagram.description.tool.DiagramNavigationDescription
import org.eclipse.sirius.diagram.description.tool.DirectEditLabel
import org.eclipse.sirius.diagram.description.tool.DoubleClickDescription
import org.eclipse.sirius.diagram.description.tool.EdgeCreationDescription
import org.eclipse.sirius.diagram.description.tool.ElementDoubleClickVariable
import org.eclipse.sirius.diagram.description.tool.Navigation
import org.eclipse.sirius.diagram.description.tool.NodeCreationDescription
import org.eclipse.sirius.diagram.description.tool.NodeCreationVariable
import org.eclipse.sirius.diagram.description.tool.SourceEdgeCreationVariable
import org.eclipse.sirius.diagram.description.tool.SourceEdgeViewCreationVariable
import org.eclipse.sirius.diagram.description.tool.TargetEdgeCreationVariable
import org.eclipse.sirius.diagram.description.tool.TargetEdgeViewCreationVariable
import org.eclipse.sirius.diagram.description.tool.ToolSection
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CheckboxWidgetStyle
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.CustomExpression
import org.eclipse.sirius.properties.DynamicMappingForDescription
import org.eclipse.sirius.properties.DynamicMappingIfDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.HyperlinkWidgetStyle
import org.eclipse.sirius.properties.LabelDescription
import org.eclipse.sirius.properties.LabelWidgetStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.SelectWidgetConditionalStyle
import org.eclipse.sirius.properties.SelectWidgetStyle
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.TextWidgetConditionalStyle
import org.eclipse.sirius.properties.TextWidgetStyle
import org.eclipse.sirius.properties.ViewExtensionDescription
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.viewpoint.description.Customization
import org.eclipse.sirius.viewpoint.description.EAttributeCustomization
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.JavaExtension
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.SytemColorsPalette
import org.eclipse.sirius.viewpoint.description.VSMElementCustomization
import org.eclipse.sirius.viewpoint.description.Viewpoint
import org.eclipse.sirius.viewpoint.description.tool.Case
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.ContainerViewVariable
import org.eclipse.sirius.viewpoint.description.tool.CreateInstance
import org.eclipse.sirius.viewpoint.description.tool.Default
import org.eclipse.sirius.viewpoint.description.tool.EditMaskVariables
import org.eclipse.sirius.viewpoint.description.tool.ElementDeleteVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementSelectVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementVariable
import org.eclipse.sirius.viewpoint.description.tool.ElementViewVariable
import org.eclipse.sirius.viewpoint.description.tool.InitEdgeCreationOperation
import org.eclipse.sirius.viewpoint.description.tool.InitialNodeCreationOperation
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.eclipse.sirius.viewpoint.description.tool.NameVariable
import org.eclipse.sirius.viewpoint.description.tool.Switch
import org.eclipse.sirius.viewpoint.description.tool.ToolDescription
import org.mypsycho.emf.modit.EModIt

class EqxModelDesign {

  public val extras = new HashMap<String, EObject> 

  public extension EModIt factory = EModIt.using(
    fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxSiriusPropertiesPackage.eINSTANCE,
    org.eclipse.sirius.diagram.description.DescriptionPackage.eINSTANCE,
    org.eclipse.sirius.diagram.description.filter.FilterPackage.eINSTANCE,
    org.eclipse.sirius.diagram.description.style.StylePackage.eINSTANCE,
    org.eclipse.sirius.diagram.description.tool.ToolPackage.eINSTANCE,
    org.eclipse.sirius.properties.PropertiesPackage.eINSTANCE,
    org.eclipse.sirius.viewpoint.description.DescriptionPackage.eINSTANCE,
    org.eclipse.sirius.viewpoint.description.tool.ToolPackage.eINSTANCE
  )

  new() {
    val rs = new ResourceSetImpl
    
    extras.putAll(#{
      "$0" -> rs.getResource(URI.createURI("http://fr.ibp.odv/equinoxe/ComposantsMetier/1.0"), true).contents.head,
      "$1" -> rs.getResource(URI.createURI("http://fr.ibp.odv/equinoxe/core/1.0"), true).contents.head,
      "$2" -> rs.getResource(URI.createURI("http://fr.ibp.odv/equinoxe/Dialogue/1.0"), true).contents.head,
      "$3" -> rs.getResource(URI.createURI("http://fr.ibp.odv/equinoxe/platform/1.0"), true).contents.head,
      "$4" -> rs.getResource(URI.createURI("http://fr.ibp.odv/equinoxe/Procedure/1.0"), true).contents.head,
      "$5" -> rs.getResource(URI.createURI("http:/equinoxeLegacy/legacy"), true).contents.head,
      "$6" -> rs.getResource(URI.createURI("http://www.eclipse.org/sirius/diagram/1.1.0"), true).contents.head,
      "$7" -> rs.getResource(URI.createURI("environment:/viewpoint"), true).contents.head,
      "$8" -> rs.getResource(URI.createURI("http://fr.ibp.odv/equinoxe/CommonLibraryMM/1.0"), true).contents.head
    })
    
    extras.putAll(#{ // Aliases
      "Color#black" -> (extras.get("$7") as Environment).systemColors.entries.get(1),
      "Color#blue" -> (extras.get("$7") as Environment).systemColors.entries.get(2),
      "Color#chocolate" -> (extras.get("$7") as Environment).systemColors.entries.get(3),
      "Color#dark_blue" -> (extras.get("$7") as Environment).systemColors.entries.get(18),
      "Color#dark_chocolate" -> (extras.get("$7") as Environment).systemColors.entries.get(19),
      "Color#dark_gray" -> (extras.get("$7") as Environment).systemColors.entries.get(20),
      "Color#dark_green" -> (extras.get("$7") as Environment).systemColors.entries.get(21),
      "Color#dark_orange" -> (extras.get("$7") as Environment).systemColors.entries.get(22),
      "Color#dark_purple" -> (extras.get("$7") as Environment).systemColors.entries.get(23),
      "Color#dark_red" -> (extras.get("$7") as Environment).systemColors.entries.get(24),
      "Color#dark_yellow" -> (extras.get("$7") as Environment).systemColors.entries.get(25),
      "Color#gray" -> (extras.get("$7") as Environment).systemColors.entries.get(4),
      "Color#green" -> (extras.get("$7") as Environment).systemColors.entries.get(5),
      "Color#light_blue" -> (extras.get("$7") as Environment).systemColors.entries.get(10),
      "Color#light_chocolate" -> (extras.get("$7") as Environment).systemColors.entries.get(11),
      "Color#light_gray" -> (extras.get("$7") as Environment).systemColors.entries.get(12),
      "Color#light_green" -> (extras.get("$7") as Environment).systemColors.entries.get(13),
      "Color#light_orange" -> (extras.get("$7") as Environment).systemColors.entries.get(14),
      "Color#light_purple" -> (extras.get("$7") as Environment).systemColors.entries.get(15),
      "Color#light_red" -> (extras.get("$7") as Environment).systemColors.entries.get(16),
      "Color#light_yellow" -> (extras.get("$7") as Environment).systemColors.entries.get(17),
      "Color#orange" -> (extras.get("$7") as Environment).systemColors.entries.get(6),
      "Color#purple" -> (extras.get("$7") as Environment).systemColors.entries.get(7),
      "Color#red" -> (extras.get("$7") as Environment).systemColors.entries.get(8),
      "Color#white" -> (extras.get("$7") as Environment).systemColors.entries.get(0),
      "Color#yellow" -> (extras.get("$7") as Environment).systemColors.entries.get(9)
    })
  }

  def content() {
    "EqxModelDesign".alias(Group.create[
      name = "equinoxe"
      version = "12.0.0.2017041100"
      systemColorsPalette = (extras.get("$7") as Environment).systemColors
      ownedViewpoints += Viewpoint.create[
        name = "Capture"
        modelFileExtension = ""
        ownedRepresentations += new Reused(this).content
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "org.eclipse.sirius.ext.emf.edit.EditingDomainServices"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxEditingServices"
        ]
      ]
      ownedViewpoints += Viewpoint.create[
        name = "EquinoxeModeleur"
        modelFileExtension = "equinoxe"
        icon = "/fr.ibp.odv.xad2.rcp/icons/equinoxe_16x16.png"
        ownedRepresentations += new TypesGroupes_Diag_GTC(this).content
        ownedRepresentations += new CtPackage_Diag(this).content
        ownedRepresentations += new Dependencies_Diag_AbstractRootElement(this).content
        ownedRepresentations += new BusinessObject_Diag(this).content
        ownedRepresentations += new ProcessHandler_Diag(this).content
        ownedRepresentations += new DialogHandler_Diag(this).content
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "org.eclipse.sirius.ext.emf.edit.EditingDomainServices"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxReadOnlyServices"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.internal.EqxUIUtil"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxValidationService"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxCoreBusinessRulesServices"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxLegacyServices"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxEditingServices"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxComposantsMetierBusinessRulesServices"
        ]
        ownedJavaExtensions += JavaExtension.create[
          qualifiedClassName = "fr.ibp.odv.xad2.rcp.service.EqxDialogBusinessRulesServices"
        ]
      ]
      extensions += ViewExtensionDescription.create[
        name = "EquinoxeModelerPropertyView"
        metamodels += (extras.get("$8") as EPackage)
        metamodels += (extras.get("$0") as EPackage)
        metamodels += (extras.get("$1") as EPackage)
        metamodels += (extras.get("$2") as EPackage)
        metamodels += (extras.get("$5") as EPackage)
        metamodels += (extras.get("$4") as EPackage)
        categories += new custom_Impl(this).content
        categories += new equinoxeComposantsMetier_Definition(this).content
        categories += new equinoxeComposantsMetier_Reference(this).content
        categories += new equinoxeCore_Definition(this).content
        categories += new equinoxeCore_Reference(this).content
        categories += new equinoxeDialogue_Definition(this).content
        categories += new equinoxeDialogue_Reference(this).content
        categories += new equinoxeProcedure_Definition(this).content
        categories += new equinoxeProcedure_Reference(this).content
        categories += new validation_Impl(this).content
      ]
    ]
    ).assemble
  }

  def context() {
    this
  }

  def <T extends org.eclipse.sirius.viewpoint.description.IdentifiedElement> at(Iterable<T> values, Object key) {
    values.findFirst[ name == key ]
  }

}
