package fr.ibp.odv.xad2.rcp

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.DynamicMappingForDescription
import org.eclipse.sirius.properties.DynamicMappingIfDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.LabelDescription
import org.eclipse.sirius.properties.LabelWidgetStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.mypsycho.emf.modit.EModIt

class equinoxeDialogue_Reference {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "equinoxeDialogue_Reference".alias(Category.create[
      name = "equinoxeDialogue_Reference"
      pages += PageDescription.create[
        name = "AWADialogFormats_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.AWADialogFormats"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::AWADialogFormats)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("AWADialogFormats_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "AWADialogFormats_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.AWADialogFormats"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::AWADialogFormats)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("AWADialogFormats_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Action_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.Action"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::Action)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("Action_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Action_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.Action"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::Action)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("Action_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "AwaDialogComponent_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.AwaDialogComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::AwaDialogComponent)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("AwaDialogComponent_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "AwaDialogComponent_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.AwaDialogComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::AwaDialogComponent)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("AwaDialogComponent_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "AwaDialogInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.AwaDialogInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::AwaDialogInterface)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("AwaDialogInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ContextGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.ContextGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::ContextGroup)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("ContextGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DataPath_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DataPath"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DataPath)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DataPath_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DataPath_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DataPath"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DataPath)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DataPath_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogComponent_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DialogComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogComponent)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogComponent_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogComponent_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DialogComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogComponent)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogComponent_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogComponent_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeDialogue.DialogComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogComponent)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogComponent_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogHandler_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DialogHandler"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogHandler)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogHandler_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogHandler_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DialogHandler"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogHandler)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogHandler_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogInterface_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DialogInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogInterface)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogInterface_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DialogInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogInterface)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogInterfaceGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DialogInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogInterfaceGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogRealization_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DialogRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogRealization)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogRealization_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogRealization_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DialogRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogRealization)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogRealization_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogScreen_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DialogScreen"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogScreen)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogScreen_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogScreen_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DialogScreen"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogScreen)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogScreen_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogScreen_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DialogScreen"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogScreen)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DialogScreen_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocAction_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocAction_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocAction_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocAction_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocAction_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocAction_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBannerModel_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocBannerModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBannerModel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocBannerModel_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBannerModel_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocBannerModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBannerModel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocBannerModel_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBannerModel_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocBannerModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBannerModel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocBannerModel_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBloc_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocBloc_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBloc_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocBloc_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBloc_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocBloc_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocButtonGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocButtonGroup)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocButtonGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocButtonGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocButtonGroup)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocButtonGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocButtonGroup_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocButtonGroup)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocButtonGroup_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCodeFilter_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocCodeFilter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCodeFilter)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCodeFilter_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCodeFilter_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocCodeFilter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCodeFilter)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCodeFilter_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocColumn_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocColumn_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocColumn_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocColumn_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocColumn_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocColumn_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCompositeField_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocCompositeField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCompositeField)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCompositeField_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCompositeField_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocCompositeField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCompositeField)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCompositeField_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCompositeField_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocCompositeField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCompositeField)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCompositeField_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocConfirmationModel_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocConfirmationModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocConfirmationModel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocConfirmationModel_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocConfirmationModel_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocConfirmationModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocConfirmationModel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocConfirmationModel_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocConversionRule_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocConversionRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocConversionRule)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocConversionRule_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocConversionRule_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocConversionRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocConversionRule)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocConversionRule_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCrAttributeProperty_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocCrAttributeProperty"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCrAttributeProperty)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCrAttributeProperty_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCrAttributeRule_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocCrAttributeRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCrAttributeRule)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCrAttributeRule_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCrAttributeStatic_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocCrAttributeStatic"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCrAttributeStatic)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocCrAttributeStatic_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocDisplayModeC_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocDisplayModeC"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocDisplayModeC)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocDisplayModeC_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocDocViewer_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocDocViewer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocDocViewer)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocDocViewer_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocDocViewer_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocDocViewer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocDocViewer)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocDocViewer_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocDocViewer_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocDocViewer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocDocViewer)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocDocViewer_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocElement_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocElement"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocElement)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocElement_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocElement_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocElement"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocElement)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocElement_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEnum_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocEnum"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEnum)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocEnum_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEnum_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocEnum"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEnum)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocEnum_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEnum_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocEnum"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEnum)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocEnum_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEtiquette_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocEtiquette"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEtiquette)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocEtiquette_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEtiquette_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocEtiquette"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEtiquette)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocEtiquette_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEtiquette_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocEtiquette"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEtiquette)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocEtiquette_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEvent_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocEvent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEvent)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocEvent_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocField_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocField)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocField_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocField_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocField)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocField_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocField_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocField)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocField_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocFooterCell_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocFooterCell"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocFooterCell)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocFooterCell_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocFooterCell_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocFooterCell"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocFooterCell)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocFooterCell_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocFooterCell_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocFooterCell"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocFooterCell)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocFooterCell_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocGrid_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocGrid"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocGrid)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocGrid_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocGrid_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocGrid"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocGrid)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocGrid_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocGrid_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocGrid"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocGrid)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocGrid_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocImage_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocImage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocImage)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocImage_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocImage_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocImage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocImage)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocImage_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocImage_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocImage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocImage)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocImage_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInfoBloc_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInfoBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocInfoBloc_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInfoBloc_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInfoBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocInfoBloc_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInfoBloc_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInfoBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocInfoBloc_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInformationModel_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocInformationModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInformationModel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocInformationModel_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInputWizard_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocInputWizard"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInputWizard)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocInputWizard_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInputWizard_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocInputWizard"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInputWizard)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocInputWizard_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInputWizard_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocInputWizard"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInputWizard)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocInputWizard_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocLabel_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocLabel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocLabel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocLabel_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocLabel_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocLabel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocLabel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocLabel_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocLabel_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocLabel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocLabel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocLabel_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocLayout_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocLayout"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocLayout)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocLayout_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocLayout_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocLayout"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocLayout)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocLayout_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocLayout_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocLayout"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocLayout)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocLayout_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocList_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocList"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocList)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocList_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocList_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocList"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocList)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocList_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocList_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocList"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocList)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocList_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocListAction_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocListAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocListAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocListAction_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocListAction_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocListAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocListAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocListAction_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMailto_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocMailto"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMailto)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMailto_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMailto_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocMailto"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMailto)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMailto_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMailto_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocMailto"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMailto)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMailto_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMessage_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocMessage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMessage)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMessage_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMessage_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocMessage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMessage)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMessage_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMessage_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocMessage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMessage)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMessage_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMsgArg_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocMsgArg"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMsgArg)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMsgArg_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMsgKey_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocMsgKey"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMsgKey)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMsgKey_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMsgKey_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocMsgKey"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMsgKey)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocMsgKey_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocParameter_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocParameter)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocParameter_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocParameter_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocParameter)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocParameter_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocProgressBar_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocProgressBar"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocProgressBar)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocProgressBar_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocProgressBar_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocProgressBar"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocProgressBar)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocProgressBar_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocProgressBar_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocProgressBar"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocProgressBar)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocProgressBar_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRow_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocRow"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRow)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocRow_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRow_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocRow"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRow)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocRow_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRow_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocRow"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRow)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocRow_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleEnumAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocRuleEnumAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleEnumAttribute)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocRuleEnumAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleIntegerAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocRuleIntegerAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleIntegerAttribute)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocRuleIntegerAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleRegexpAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocRuleRegexpAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleRegexpAttribute)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocRuleRegexpAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleStringAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocRuleStringAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleStringAttribute)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocRuleStringAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSeparator_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocSeparator"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSeparator)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSeparator_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSeparator_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocSeparator"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSeparator)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSeparator_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSigningBloc_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocSigningBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSigningBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSigningBloc_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSigningBloc_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocSigningBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSigningBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSigningBloc_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSigningBloc_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocSigningBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSigningBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSigningBloc_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSortingRule_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocSortingRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSortingRule)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSortingRule_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSortingRule_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocSortingRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSortingRule)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSortingRule_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSpace_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocSpace"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSpace)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSpace_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSpace_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocSpace"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSpace)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocSpace_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocStartTaskAction_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocStartTaskAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocStartTaskAction_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocStartTaskAction_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocStartTaskAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocStartTaskAction_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocStartTaskAction_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocStartTaskAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocStartTaskAction_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocStaticValue_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocStaticValue"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocStaticValue)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocStaticValue_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTab_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTab"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTab)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTab_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTab_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTab"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTab)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTab_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTab_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTab"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTab)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTab_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTabbedBloc_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTabbedBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTabbedBloc_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTabbedBloc_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTabbedBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTabbedBloc_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTabbedBloc_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTabbedBloc)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTabbedBloc_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTable_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTable"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTable)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTable_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTable_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTable"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTable)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTable_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTable_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTable"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTable)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTable_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableColumn_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTableColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableColumn_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableColumn_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTableColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableColumn_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableColumn_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTableColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableColumn_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTree_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTableTree"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTree)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTree_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTree_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTableTree"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTree)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTree_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTree_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTableTree"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTree)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTree_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeCell_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTableTreeCell"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeCell)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeCell_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeColumn_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTableTreeColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeColumn_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeColumn_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTableTreeColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeColumn_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeColumn_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTableTreeColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeColumn)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeColumn_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeFooterCell_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTableTreeFooterCell"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeFooterCell)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeFooterCell_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeFooterCell_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTableTreeFooterCell"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeFooterCell)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeFooterCell_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeFooterCell_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTableTreeFooterCell"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeFooterCell)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeFooterCell_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeLevel_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTableTreeLevel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeLevel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTableTreeLevel_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopic_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTopic"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopic)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopic_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopic_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTopic"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopic)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopic_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopic_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTopic"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopic)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopic_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopicAction_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTopicAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopicAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopicAction_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopicAction_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTopicAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopicAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopicAction_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopicAction_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocTopicAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopicAction)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopicAction_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopicMapping_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocTopicMapping"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopicMapping)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopicMapping_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopicMapping_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocTopicMapping"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopicMapping)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocTopicMapping_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocValidationRule_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocValidationRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocValidationRule)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocValidationRule_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocValidationRule_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocValidationRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocValidationRule)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocValidationRule_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocWebAppPanel_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocWebAppPanel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocWebAppPanel_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocWebAppPanel_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocWebAppPanel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocWebAppPanel_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocWebAppPanel_Affichage_Page"
        labelExpression = "Affichage"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocWebAppPanel)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocWebAppPanel_Affichage_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocWidgetRef_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.DocWidgetRef"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocWidgetRef)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocWidgetRef_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocWidgetRef_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.DocWidgetRef"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocWidgetRef)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("DocWidgetRef_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "EventTransition_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.EventTransition"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::EventTransition)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("EventTransition_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FinalState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.FinalState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::FinalState)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("FinalState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "InitialState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.InitialState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::InitialState)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("InitialState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "InitialTransition_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.InitialTransition"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::InitialTransition)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("InitialTransition_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ScreenMapState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeDialogue.ScreenMapState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::ScreenMapState)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("ScreenMapState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ScreenMapState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeDialogue.ScreenMapState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::ScreenMapState)"
        groups += GroupDescription.ref("equinoxeDialogue_Reference")[ (it as Category).groups.at("ScreenMapState_Documentation_Reference_Group") ]
      ]
      groups += GroupDescription.create[
        name = "AWADialogFormats_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.AWADialogFormats"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "AWADialogFormats_ReferenceTo_AWADialogFormats_inputFormat_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AWADialogFormats_Conception_Group").controls.at("AWADialogFormats_inputFormat_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AWADialogFormats_ReferenceTo_AWADialogFormats_outputFormat_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AWADialogFormats_Conception_Group").controls.at("AWADialogFormats_outputFormat_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "AWADialogFormats_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.AWADialogFormats"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "AWADialogFormats_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Action_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.Action"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Action_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Action_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.Action"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Action_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "AwaDialogComponent_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.AwaDialogComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "AwaDialogComponent_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "AwaDialogComponent_ReferenceTo_AwaDialogComponent_webAppId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AwaDialogComponent_Conception_Group").controls.at("AwaDialogComponent_webAppId_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "AwaDialogComponent_ReferenceTo_AwaDialogComponent_webAppTaskId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AwaDialogComponent_Conception_Group").controls.at("AwaDialogComponent_webAppTaskId_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "AwaDialogComponent_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.AwaDialogComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "AwaDialogComponent_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "AwaDialogInterface_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.AwaDialogInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "AwaDialogInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ContextGroup_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.ContextGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ContextGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DataPath_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DataPath"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DataPath_ReferenceTo_DataPath_segments_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DataPath_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DataPath_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DataPath"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DataPath_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogComponent_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DialogComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DialogComponent_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractRootElement_quartier_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_quartier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractRootElement_lgaName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_lgaName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractRootElement_dependencies_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_dependencies_Ref") as ListDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractComponent_codeObjetMetier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractComponent_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractUIComponent_codeAction_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIComponent_Conception_Group").controls.at("AbstractUIComponent_codeAction_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractUIComponent_numeroSequentiel_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIComponent_Conception_Group").controls.at("AbstractUIComponent_numeroSequentiel_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractUIComponent_isDynamic_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIComponent_Conception_Group").controls.at("AbstractUIComponent_isDynamic_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogComponent_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DialogComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DialogComponent_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogComponent_Generation_Reference_Group"
        domainClass = "equinoxeDialogue.DialogComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractRootElement_standardGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_standardGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DialogComponent_ReferenceTo_AbstractRootElement_errorGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_errorGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DialogComponent_ReferenceTo_DialogComponent_generateLabels_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogComponent_Generation_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogHandler_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DialogHandler"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DialogHandler_ReferenceTo_AbstractStateMachine_initialization_TxtArea"
          extends = TextAreaDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractStateMachine_Conception_Group").controls.at("AbstractStateMachine_initialization_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "DialogHandler_ReferenceTo_AbstractStateMachine_finalization_TxtArea"
          extends = TextAreaDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractStateMachine_Conception_Group").controls.at("AbstractStateMachine_finalization_TxtArea") as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogHandler_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DialogHandler"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DialogHandler_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogInterface_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DialogInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DialogInterface_ReferenceTo_DialogInterface_formatEs_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogInterface_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogInterface_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DialogInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DialogInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogInterfaceGroup_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DialogInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DialogInterfaceGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogRealization_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DialogRealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "DialogRealization_ReferenceTo_AbstractUIRealization_media_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_media_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DialogRealization_ReferenceTo_AbstractUIRealization_canal_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_canal_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogRealization_ReferenceTo_AbstractUIRealization_bank_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_bank_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DialogRealization_ReferenceTo_AbstractUIRealization_lang_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_lang_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DialogRealization_ReferenceTo_AbstractUIRealization_country_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_country_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogRealization_ReferenceTo_AbstractUIRealization_moreSelectors_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_moreSelectors_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogRealization_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DialogRealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DialogRealization_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogScreen_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DialogScreen"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DialogScreen_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogScreen_ReferenceTo_DialogScreen_script_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogScreen_Conception_Group").controls.at("DialogScreen_script_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DialogScreen_ReferenceTo_DialogScreen_screenFocusStrategy_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogScreen_Conception_Group").controls.at("DialogScreen_screenFocusStrategy_Check") as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DialogScreen_ReferenceTo_DialogScreen_fieldToFocus_Ref"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not(self.screenFocusStrategy)"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogScreen_Conception_Group").controls.at("DialogScreen_fieldToFocus_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogScreen_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DialogScreen"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DialogScreen_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogScreen_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DialogScreen"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DialogScreen_ReferenceTo_DialogScreen_defaultActionWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogScreen_Affichage_Group").controls.at("DialogScreen_defaultActionWidth_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DialogScreen_ReferenceTo_DialogScreen_headerHeight_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogScreen_Affichage_Group").controls.at("DialogScreen_headerHeight_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DialogScreen_ReferenceTo_DialogScreen_headerType_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DialogScreen_Affichage_Group").controls.at("DialogScreen_headerType_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAction_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocAction_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocAction_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_ReferenceTo_DocAction_checkAlerts_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_checkAlerts_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_ReferenceTo_DocAction_refreshAjaxSc_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_refreshAjaxSc_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_ReferenceTo_DocAction_default_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_default_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocAction_ReferenceTo_DocAction_validationStrategy_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_validationStrategy_Enum") as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAction_ReferenceTo_DocAction_dialogAction_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_dialogAction_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocAction_ReferenceTo_DocAction_confirmFunction_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_confirmFunction_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocAction_ReferenceTo_DocAction_type_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_type_Enum") as SelectDescription) ]
        ]
        controls += ListDescription.create[
          name = "DocAction_ReferenceTo_DocAction_widgetsARafraichirIntranet_Ref"
          extends = ListDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Conception_Group").controls.at("DocAction_widgetsARafraichirIntranet_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAction_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocAction_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocAction_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAction_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocAction_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAction_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocAction_ReferenceTo_DocAbstractButton_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractButton_Affichage_Group").controls.head as CustomDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocAction_ReferenceTo_DocAction_buttonWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAction_Affichage_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocBannerModel_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocBannerModel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocBannerModel_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocBannerModel_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocBannerModel_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocBannerModel_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocBannerModel_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocBannerModel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocBannerModel_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocBannerModel_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocBannerModel_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocBannerModel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocBannerModel_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocBannerModel_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocBannerModel_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocBannerModel_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocBannerModel_ReferenceTo_DocBannerModel_position_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocBannerModel_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocBloc_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocBloc_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocBloc_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocBloc_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocBloc_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocBloc_ReferenceTo_DocInfoBloc_specificJsp_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocInfoBloc_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocBloc_ReferenceTo_DocBloc_style_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocBloc_Affichage_Group").controls.at("DocBloc_style_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocBloc_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocBloc_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocBloc_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocBloc_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocBloc_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocBloc_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocBloc_ReferenceTo_DocAbstractHigh_height_DocBloc_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocBloc_Affichage_Group").controls.at("DocAbstractHigh_height_DocBloc_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocBloc_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocButtonGroup_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocButtonGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocButtonGroup_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocButtonGroup_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocAbstractButton_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractButton_Affichage_Group").controls.head as CustomDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocButtonGroup_buttonWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocButtonGroup_Affichage_Group").controls.at("DocButtonGroup_buttonWidth_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocButtonGroup_ReferenceTo_DocButtonGroup_groupWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocButtonGroup_Affichage_Group").controls.at("DocButtonGroup_groupWidth_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCodeFilter_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocCodeFilter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocCodeFilter_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocCodeFilter_ReferenceTo_DocCodeFilter_cboAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCodeFilter_Conception_Group").controls.at("DocCodeFilter_cboAttribute_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocCodeFilter_ReferenceTo_DocCodeFilter_filterCriteria_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCodeFilter_Conception_Group").controls.at("DocCodeFilter_filterCriteria_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += LabelDescription.create[
          name = "DocCodeFilter_Conception_Value_Custom_Widget"
          labelExpression = "aql:'Valeur du filtre'"
          helpExpression = "aql:'Depend du sous élément contenu dans \\'valeur externe\\'. Si aucune valeur n\\'est définie alors la valeur de l\\'attribut est directement codée en Java par le développeur.'"
          isEnabledExpression = "aql:false"
          valueExpression = "aql:self.getDocCodeFilterValue()"
          style = LabelWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            fontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#dark_gray") as SystemColor)
            foregroundColor = (extras.get("Color#dark_gray") as SystemColor)
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCodeFilter_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocCodeFilter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocCodeFilter_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocColumn_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocColumn_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocColumn_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocColumn_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocColumn_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocColumn_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocColumn_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "DocColumn_ReferenceTo_DocStructElement_separator_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStructElement_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocColumn_ReferenceTo_DocStructElement_justified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStructElement_Affichage_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocColumn_ReferenceTo_DocAbstractLabeled_labelAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocColumn_ReferenceTo_DocAbstractLabeled_labelWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelWidth_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocColumn_ReferenceTo_DocAbstractLabeled_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocColumn_ReferenceTo_DocColumn_forceDefaultHeight_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocColumn_Affichage_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCompositeField_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocCompositeField"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocCompositeField_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocCompositeField_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocCompositeField_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocCompositeField_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocCompositeField_ReferenceTo_DocCompositeField_withAutoTab_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCompositeField_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCompositeField_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocCompositeField"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocCompositeField_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocCompositeField_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCompositeField_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocCompositeField"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocCompositeField_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocCompositeField_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocConfirmationModel_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocConfirmationModel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocConfirmationModel_ReferenceTo_DocConfirmationModel_yesAction_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocConfirmationModel_Conception_Group").controls.at("DocConfirmationModel_yesAction_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocConfirmationModel_ReferenceTo_DocConfirmationModel_noAction_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocConfirmationModel_Conception_Group").controls.at("DocConfirmationModel_noAction_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocConfirmationModel_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocConfirmationModel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocConfirmationModel_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocConversionRule_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocConversionRule"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocConversionRule_ReferenceTo_DocConversionRule_rule_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocConversionRule_Conception_Group").controls.at("DocConversionRule_rule_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocConversionRule_ReferenceTo_DocConversionRule_patternKey_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocConversionRule_Conception_Group").controls.at("DocConversionRule_patternKey_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocConversionRule_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocConversionRule"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocConversionRule_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCrAttributeProperty_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeProperty"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocCrAttributeProperty_ReferenceTo_DocCrAttribute_dynamicAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttribute_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocCrAttributeProperty_ReferenceTo_DocCrAttributeProperty_propertyName_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttributeProperty_Conception_Group").controls.at("DocCrAttributeProperty_propertyName_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocCrAttributeProperty_ReferenceTo_DocCrAttributeProperty_valueIsConstant_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttributeProperty_Conception_Group").controls.at("DocCrAttributeProperty_valueIsConstant_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCrAttributeRule_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeRule"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocCrAttributeRule_ReferenceTo_DocCrAttribute_dynamicAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttribute_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocCrAttributeRule_ReferenceTo_DocCrAttributeRule_conversionRule_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttributeRule_Conception_Group").controls.at("DocCrAttributeRule_conversionRule_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocCrAttributeRule_ReferenceTo_DocCrAttributeRule_conversionPattern_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttributeRule_Conception_Group").controls.at("DocCrAttributeRule_conversionPattern_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCrAttributeStatic_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeStatic"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocCrAttributeStatic_ReferenceTo_DocCrAttribute_dynamicAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttribute_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocCrAttributeStatic_ReferenceTo_DocCrAttributeStatic_staticValue_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocCrAttributeStatic_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocDisplayModeC_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocDisplayModeC"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocDisplayModeC_ReferenceTo_DocDisplayModeC_screenDisplayMode_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocDisplayModeC_Conception_Group").controls.at("DocDisplayModeC_screenDisplayMode_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isInInternetContext()"
            widget = EqxHyperlinkDescription.create[
              name = "DocDisplayModeC_ReferenceTo_DocDisplayModeC_widgetDisplayMode_Internet_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocDisplayModeC_Conception_Group").controls.at("DocDisplayModeC_widgetDisplayMode_Internet_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:not self.isInInternetContext()"
            widget = EqxHyperlinkDescription.create[
              name = "DocDisplayModeC_ReferenceTo_DocDisplayModeC_widgetDisplayMode_Agence_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocDisplayModeC_Conception_Group").controls.at("DocDisplayModeC_widgetDisplayMode_Agence_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocDocViewer_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocDocViewer"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocDocViewer_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocDocViewer_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocDocViewer_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocDocViewer_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocDocViewer_ReferenceTo_DocDocViewer_docType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocDocViewer_Conception_Group").controls.at("DocDocViewer_docType_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocDocViewer_ReferenceTo_DocDocViewer_source_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocDocViewer_Conception_Group").controls.at("DocDocViewer_source_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocDocViewer_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocDocViewer"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocDocViewer_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocDocViewer_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocDocViewer_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocDocViewer"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocDocViewer_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocDocViewer_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocDocViewer_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocDocViewer_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocElement_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocElement"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocElement_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocElement_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocElement"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocElement_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEnum_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocEnum"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocEnum_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocEnum_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractField_blocCibleDeLaLegende_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_blocCibleDeLaLegende_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractField_visibleCharacters_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleCharacters_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractField_modifOnClient_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_modifOnClient_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocEnum_ReferenceTo_AbstractDocList_realisation_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Conception_Group").controls.at("AbstractDocList_realisation_Enum") as SelectDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractField_visibleLines_Eqx_Spinner_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumListRealisation::listBox"
            widget = CustomDescription.create[
              name = "DocEnum_ReferenceTo_DocAbstractField_visibleLines_Eqx_Spinner"
              extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleLines_Eqx_Spinner") as CustomDescription) ]
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocEnum_ReferenceTo_AbstractDocList_selectionMode_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Conception_Group").controls.at("AbstractDocList_selectionMode_Enum") as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocEnum_ReferenceTo_AbstractCboDisplayer_cboCode_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractCboDisplayer_Conception_Group").controls.at("AbstractCboDisplayer_cboCode_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocEnum_ReferenceTo_AbstractDocList_targetedWidget_Ref_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isDocBloclFilter()"
            widget = EqxHyperlinkDescription.create[
              name = "DocEnum_ReferenceTo_AbstractDocList_targetedWidget_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Conception_Group").controls.at("AbstractDocList_targetedWidget_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEnum_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocEnum"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocEnum_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocEnum_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEnum_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocEnum"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocEnum_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocEnum_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocEnum_ReferenceTo_DocSimpleItem_labelPosition_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSimpleItem_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocEnum_ReferenceTo_DocAbstractField_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Affichage_Group").controls.head as CustomDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocEnum_ReferenceTo_AbstractCboDisplayer_specificLabel_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractCboDisplayer_Conception_Group").controls.at("AbstractCboDisplayer_specificLabel_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocEnum_ReferenceTo_AbstractCboDisplayer_standardLabel_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractCboDisplayer_Conception_Group").controls.at("AbstractCboDisplayer_standardLabel_Enum") as SelectDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocEnum_ReferenceTo_AbstractDocList_orientation_Enum_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumListRealisation::radios"
            widget = SelectDescription.create[
              name = "DocEnum_ReferenceTo_AbstractDocList_orientation_Enum"
              extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Affichage_Group").controls.head as SelectDescription) ]
            ]
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEtiquette_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocEtiquette"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocEtiquette_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocEtiquette_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocEtiquette_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEtiquette_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocEtiquette"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocEtiquette_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEtiquette_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocEtiquette"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocEtiquette_ReferenceTo_DocAbstractMessage_nbVisibleChars_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractMessage_Affichage_Group").controls.at("DocAbstractMessage_nbVisibleChars_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocEtiquette_ReferenceTo_DocAbstractMessage_style_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractMessage_Affichage_Group").controls.at("DocAbstractMessage_style_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEvent_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocEvent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocEvent_ReferenceTo_DocEvent_event_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocEvent_Conception_Group").controls.at("DocEvent_event_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocEvent_ReferenceTo_DocEvent_functionCall_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocEvent_Conception_Group").controls.at("DocEvent_functionCall_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocEvent_ReferenceTo_DocEvent_process_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocEvent_Conception_Group").controls.at("DocEvent_process_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocField_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocField"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocField_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocField_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocField_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocField_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocField_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocField_ReferenceTo_DocLabel_realisation_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_realisation_Enum") as SelectDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocField_ReferenceTo_DocAbstractField_visibleLines_Eqx_Spinner_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::textBox"
            widget = CustomDescription.create[
              name = "DocField_ReferenceTo_DocAbstractField_visibleLines_Eqx_Spinner"
              extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleLines_Eqx_Spinner") as CustomDescription) ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocField_ReferenceTo_DocAbstractField_visibleCharacters_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleCharacters_Txt") as TextDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocField_ReferenceTo_DocAbstractField_modifOnClient_Check_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:not self.isInInternetContext()"
            widget = CheckboxDescription.create[
              name = "DocField_ReferenceTo_DocAbstractField_modifOnClient_Check"
              extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_modifOnClient_Check") as CheckboxDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocField_ReferenceTo_DocLabel_unitDisplayMode_Enum_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::numberField"
            widget = SelectDescription.create[
              name = "DocField_ReferenceTo_DocLabel_unitDisplayMode_Enum"
              extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_unitDisplayMode_Enum") as SelectDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocField_ReferenceTo_DocLabel_cols_Eqx_Spinner_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::textBox"
            widget = CustomDescription.create[
              name = "DocField_ReferenceTo_DocLabel_cols_Eqx_Spinner"
              extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_cols_Eqx_Spinner") as CustomDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocField_ReferenceTo_DocLabel_useColorRange_Check_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and (self.realisation = equinoxeDialogue::EnumFieldRealisation::numberField or self.realisation = equinoxeDialogue::EnumFieldRealisation::dateField or self.realisation = equinoxeDialogue::EnumFieldRealisation::textField or self.realisation = equinoxeDialogue::EnumFieldRealisation::phoneCallField)"
            widget = CheckboxDescription.create[
              name = "DocField_ReferenceTo_DocLabel_useColorRange_Check"
              extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_useColorRange_Check") as CheckboxDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocLabel_pivot_Txt_Doc_Field_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::dateField and self.useColorRange"
            widget = TextDescription.create[
              name = "DocField_ReferenceTo_DocLabel_pivot_Txt"
              extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocField_Conception_Group").controls.at("DocField_pivot_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocField_ReferenceTo_DocField_withAutoTab_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocField_Conception_Group").controls.at("DocField_withAutoTab_Check") as CheckboxDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocLabel_cboAttribute_Doc_Field_Ref_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.getDataType().oclIsKindOf(equinoxeCore::Cbo)"
            widget = EqxHyperlinkDescription.create[
              name = "DocField_ReferenceTo_DocLabel_cboAttribute_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_cboAttribute_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocField_ReferenceTo_DocField_isPassword_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocField_Conception_Group").controls.at("DocField_isPassword_Check") as CheckboxDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocField_ReferenceTo_DocAbstractField_blocCibleDeLaLegende_Ref_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isInInternetContext()"
            widget = EqxHyperlinkDescription.create[
              name = "DocField_ReferenceTo_DocAbstractField_blocCibleDeLaLegende_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_blocCibleDeLaLegende_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocField_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocField"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocField_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocField_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocField_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocField"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocField_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocField_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocField_ReferenceTo_DocSimpleItem_labelPosition_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSimpleItem_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocField_ReferenceTo_DocAbstractField_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Affichage_Group").controls.head as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocFooterCell_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocFooterCell"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocFooterCell_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocFooterCell_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocFooterCell"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocFooterCell_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocFooterCell_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocFooterCell"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocFooterCell_ReferenceTo_DocAbstractTableFooterCell_align_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableFooterCell_Affichage_Group").controls.at("DocAbstractTableFooterCell_align_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocFooterCell_ReferenceTo_DocAbstractTableFooterCell_style_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableFooterCell_Affichage_Group").controls.at("DocAbstractTableFooterCell_style_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocGrid_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocGrid"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocGrid_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocGrid_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocGrid_ReferenceTo_DocStructElement_separator_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStructElement_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocGrid_ReferenceTo_DocGrid_cols_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocGrid_Conception_Group").controls.head as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocGrid_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocGrid"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocGrid_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocGrid_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocGrid_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocGrid"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "DocGrid_ReferenceTo_DocStructElement_justified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStructElement_Affichage_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocGrid_ReferenceTo_DocAbstractLabeled_labelAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocGrid_ReferenceTo_DocAbstractLabeled_labelWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelWidth_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocGrid_ReferenceTo_DocAbstractLabeled_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocGrid_ReferenceTo_DocGrid_forceDefaultHeight_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocGrid_Affichage_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocImage_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocImage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocImage_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocImage_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocImage_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocImage_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocImage_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocImage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocImage_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocImage_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocImage_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocImage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocImage_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocImage_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocImage_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocImage_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocImage_ReferenceTo_DocSimpleItem_labelPosition_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSimpleItem_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInfoBloc_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocInfoBloc_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocInfoBloc_specificJsp_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocInfoBloc_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInfoBloc_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInfoBloc_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocAbstractHigh_height_Txt"
          isEnabledExpression = "aql:false"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocInfoBloc_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInformationModel_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocInformationModel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocInformationModel_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInputWizard_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocInputWizard"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocInputWizard_ReferenceTo_DocInputWizard_taskOid_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocInputWizard_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInputWizard_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocInputWizard"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocInputWizard_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInputWizard_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocInputWizard"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocInputWizard_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocInputWizard_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocLabel_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocLabel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocLabel_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocLabel_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocLabel_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocLabel_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocLabel_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocLabel_ReferenceTo_DocAbstractField_visibleCharacters_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleCharacters_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocLabel_ReferenceTo_DocAbstractField_modifOnClient_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_modifOnClient_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocLabel_ReferenceTo_DocLabel_realisation_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_realisation_Enum") as SelectDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocAbstractField_visibleLines_Eqx_Spinner_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::textBox"
            widget = CustomDescription.create[
              name = "DocLabel_ReferenceTo_DocAbstractField_visibleLines_Eqx_Spinner"
              extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleLines_Eqx_Spinner") as CustomDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocLabel_cols_Eqx_Spinner_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::textBox"
            widget = CustomDescription.create[
              name = "DocLabel_ReferenceTo_DocLabel_cols_Eqx_Spinner"
              isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::textBox"
              extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_cols_Eqx_Spinner") as CustomDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocLabel_unitDisplayMode_Enum_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::numberField"
            widget = SelectDescription.create[
              name = "DocLabel_ReferenceTo_DocLabel_unitDisplayMode_Enum"
              extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_unitDisplayMode_Enum") as SelectDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocLabel_useColorRange_Check_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::numberField"
            widget = CheckboxDescription.create[
              name = "DocLabel_ReferenceTo_DocLabel_useColorRange_Check"
              isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.realisation != null and self.realisation = equinoxeDialogue::EnumFieldRealisation::numberField"
              extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_useColorRange_Check") as CheckboxDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocLabel_cboAttribute_Ref_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.getDataType().oclIsKindOf(equinoxeCore::Cbo)"
            widget = EqxHyperlinkDescription.create[
              name = "DocLabel_ReferenceTo_DocLabel_cboAttribute_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocLabel_Conception_Group").controls.at("DocLabel_cboAttribute_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocAbstractField_blocCibleDeLaLegende_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isInInternetContext()"
            widget = EqxHyperlinkDescription.create[
              name = "DocLabel_ReferenceTo_DocAbstractField_blocCibleDeLaLegende_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_blocCibleDeLaLegende_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocLabel_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocLabel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocLabel_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocLabel_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocLabel_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocLabel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocLabel_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocLabel_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocLabel_ReferenceTo_DocSimpleItem_labelPosition_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSimpleItem_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocLabel_ReferenceTo_DocAbstractField_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Affichage_Group").controls.head as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocLayout_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocLayout"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocLayout_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocLayout_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocLayout"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocLayout_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocLayout_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocLayout_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocLayout"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocLayout_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocLayout_ReferenceTo_DocAbstractLabeled_labelAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocLayout_ReferenceTo_DocAbstractLabeled_labelWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelWidth_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocLayout_ReferenceTo_DocAbstractLabeled_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocList_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocList"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocList_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocList_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocList_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocList_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocList_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocList_ReferenceTo_DocAbstractField_blocCibleDeLaLegende_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_blocCibleDeLaLegende_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocList_ReferenceTo_DocAbstractField_visibleLines_Eqx_Spinner"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.isActionList "
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleLines_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocList_ReferenceTo_DocAbstractField_visibleCharacters_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_visibleCharacters_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocList_ReferenceTo_DocAbstractField_modifOnClient_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Conception_Group").controls.at("DocAbstractField_modifOnClient_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocList_ReferenceTo_AbstractDocList_realisation_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Conception_Group").controls.at("AbstractDocList_realisation_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocList_ReferenceTo_AbstractDocList_selectionMode_Enum"
          isEnabledExpression = "aql: self.isNotReadOnlyElement() and not self.isActionList"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Conception_Group").controls.at("AbstractDocList_selectionMode_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocList_ReferenceTo_DocList_conversionRulePerimeter_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocList_Conception_Group").controls.at("DocList_conversionRulePerimeter_Enum") as SelectDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocList_ReferenceTo_AbstractDocList_targetedWidget_Ref_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isDocBloclFilter()"
            widget = EqxHyperlinkDescription.create[
              name = "DocList_ReferenceTo_AbstractDocList_targetedWidget_Ref"
              extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Conception_Group").controls.at("AbstractDocList_targetedWidget_Ref") as EqxHyperlinkDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          forceRefresh = true
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.realisation = equinoxeDialogue::EnumListRealisation::radios"
            widget = CheckboxDescription.create[
              name = "DocList_ReferenceTo_DocList_areRadioButtonsDynamicallyDeactivated_Check"
              extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocList_Conception_Group").controls.at("DocList_areRadioButtonsDynamicallyDeactivated_Check") as CheckboxDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          name = "DocList_ReferenceTo_DocList_isActionList_Check_DynMapping"
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isInInternetContext() and not self.isDocBloclFilter() and self.realisation = equinoxeDialogue::EnumListRealisation::listBox"
            widget = CheckboxDescription.create[
              name = "DocList_ReferenceTo_DocList_isActionList_Check"
              extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocList_Conception_Group").controls.at("DocList_isActionList_Check") as CheckboxDescription) ]
            ]
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocList_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocList"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocList_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocList_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocList_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocList"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocList_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocList_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocList_ReferenceTo_DocSimpleItem_labelPosition_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSimpleItem_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocList_ReferenceTo_DocAbstractField_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractField_Affichage_Group").controls.head as CustomDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocList_ReferenceTo_AbstractDocList_orientation_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractDocList_Affichage_Group").controls.head as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocListAction_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocListAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocListAction_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocListAction_ReferenceTo_DocListAction_dialogAction_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocListAction_Conception_Group").controls.at("DocListAction_dialogAction_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocListAction_ReferenceTo_DocListAction_validationStrategy_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocListAction_Conception_Group").controls.at("DocListAction_validationStrategy_Enum") as SelectDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocListAction_ReferenceTo_DocListAction_withConfirmation_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocListAction_Conception_Group").controls.at("DocListAction_withConfirmation_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocListAction_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocListAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocListAction_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMailto_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocMailto"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocMailto_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocMailto_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocMailto_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocMailto_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMailto_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocMailto"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocMailto_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocMailto_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMailto_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocMailto"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocMailto_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocMailto_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocMailto_ReferenceTo_DocSimpleItem_labelPosition_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSimpleItem_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocMailto_ReferenceTo_DocMailto_style_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocMailto_Affichage_Group").controls.head as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMessage_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocMessage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocMessage_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocMessage_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocMessage_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocMessage_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocMessage_ReferenceTo_DocMessage_targetedDocBloc_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocMessage_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMessage_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocMessage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocMessage_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocMessage_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMessage_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocMessage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocMessage_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocMessage_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocMessage_ReferenceTo_DocAbstractMessage_nbVisibleChars_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractMessage_Affichage_Group").controls.at("DocAbstractMessage_nbVisibleChars_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocMessage_ReferenceTo_DocAbstractMessage_style_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractMessage_Affichage_Group").controls.at("DocAbstractMessage_style_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMsgArg_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocMsgArg"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocMsgArg_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMsgKey_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocMsgKey"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocMsgKey_ReferenceTo_DocMsgKey_domaine_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocMsgKey_Conception_Group").controls.at("DocMsgKey_domaine_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocMsgKey_ReferenceTo_DocMsgKey_key_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocMsgKey_Conception_Group").controls.at("DocMsgKey_key_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocMsgKey_ReferenceTo_DocMsgKey_value_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocMsgKey_Conception_Group").controls.at("DocMsgKey_value_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMsgKey_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocMsgKey"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocMsgKey_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocParameter_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocParameter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocParameter_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocParameter_ReferenceTo_DocParameter_useInterface_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocParameter_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocParameter_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocParameter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocParameter_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocProgressBar_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocProgressBar"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocProgressBar_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocProgressBar_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocProgressBar_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocProgressBar_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocProgressBar_ReferenceTo_AbstractCboDisplayer_cboCode_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractCboDisplayer_Conception_Group").controls.at("AbstractCboDisplayer_cboCode_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocProgressBar_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocProgressBar"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocProgressBar_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocProgressBar_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocProgressBar_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocProgressBar"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocProgressBar_ReferenceTo_AbstractCboDisplayer_specificLabel_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractCboDisplayer_Conception_Group").controls.at("AbstractCboDisplayer_specificLabel_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocProgressBar_ReferenceTo_AbstractCboDisplayer_standardLabel_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractCboDisplayer_Conception_Group").controls.at("AbstractCboDisplayer_standardLabel_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRow_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocRow"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocRow_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocRow_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocRow_ReferenceTo_DocStructElement_separator_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStructElement_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRow_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocRow"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocRow_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocRow_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRow_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocRow"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocRow_ReferenceTo_DocAbstractLabeled_labelAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocRow_ReferenceTo_DocAbstractLabeled_labelWidth_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_labelWidth_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocRow_ReferenceTo_DocAbstractLabeled_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractLabeled_Affichage_Group").controls.at("DocAbstractLabeled_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocRow_ReferenceTo_DocStructElement_justified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStructElement_Affichage_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRuleEnumAttribute_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocRuleEnumAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleEnumAttribute_ReferenceTo_DocRuleEnumAttribute_validatorAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleEnumAttribute_Conception_Group").controls.at("DocRuleEnumAttribute_validatorAttribute_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleEnumAttribute_ReferenceTo_DocRuleEnumAttribute_value_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleEnumAttribute_Conception_Group").controls.at("DocRuleEnumAttribute_value_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRuleIntegerAttribute_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocRuleIntegerAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleIntegerAttribute_ReferenceTo_DocRuleIntegerAttribute_validatorAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleIntegerAttribute_Conception_Group").controls.at("DocRuleIntegerAttribute_validatorAttribute_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocRuleIntegerAttribute_ReferenceTo_DocRuleIntegerAttribute_value_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleIntegerAttribute_Conception_Group").controls.at("DocRuleIntegerAttribute_value_Eqx_Spinner") as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRuleRegexpAttribute_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocRuleRegexpAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleRegexpAttribute_ReferenceTo_DocRuleRegexpAttribute_validatorAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleRegexpAttribute_Conception_Group").controls.at("DocRuleRegexpAttribute_validatorAttribute_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocRuleRegexpAttribute_ReferenceTo_DocRuleRegexpAttribute_value_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleRegexpAttribute_Conception_Group").controls.at("DocRuleRegexpAttribute_value_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRuleStringAttribute_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocRuleStringAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleStringAttribute_ReferenceTo_DocRuleStringAttribute_validatorAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleStringAttribute_Conception_Group").controls.at("DocRuleStringAttribute_validatorAttribute_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocRuleStringAttribute_ReferenceTo_DocRuleStringAttribute_value_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocRuleStringAttribute_Conception_Group").controls.at("DocRuleStringAttribute_value_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSeparator_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocSeparator"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocSeparator_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocSeparator_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSeparator_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocSeparator"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocSeparator_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocSeparator_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSigningBloc_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocSigningBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocSigningBloc_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocInfoBloc_specificJsp_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocInfoBloc_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSigningBloc_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocSigningBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSigningBloc_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocSigningBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocSigningBloc_ReferenceTo_DocBloc_style_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSigningBloc_Affichage_Group").controls.head as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSortingRule_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocSortingRule"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocSortingRule_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_ReferenceTo_DocSortingRule_caseSensitive_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSortingRule_Conception_Group").controls.at("DocSortingRule_caseSensitive_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_ReferenceTo_DocSortingRule_diacriticsInsensitive_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSortingRule_Conception_Group").controls.at("DocSortingRule_diacriticsSensitive_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_ReferenceTo_DocSortingRule_simpleQuoteSensitive_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSortingRule_Conception_Group").controls.at("DocSortingRule_simpleQuoteSensitive_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_ReferenceTo_DocSortingRule_spacesSensitive_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSortingRule_Conception_Group").controls.at("DocSortingRule_spacesSensitive_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocSortingRule_ReferenceTo_DocSortingRule_sortOrder_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSortingRule_Conception_Group").controls.at("DocSortingRule_sortOrder_Enum") as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocSortingRule_ReferenceTo_DocSortingRule_sAppliqueSurLaDonnee_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSortingRule_Conception_Group").controls.at("DocSortingRule_sAppliqueSurLaDonnee_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSortingRule_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocSortingRule"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocSortingRule_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSpace_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocSpace"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocSpace_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocSpace_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSpace_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocSpace"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocSpace_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocSpace_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocStartTaskAction_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocStartTaskAction_ReferenceTo_NamedElement_name_Txt"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.getParent().oclIsTypeOf(equinoxeDialogue::DocTableColumn)"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocStartTaskAction_ReferenceTo_DocStartTaskAction_actionTarget_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStartTaskAction_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocStartTaskAction_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocStartTaskAction_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocStartTaskAction_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocStartTaskAction_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocStartTaskAction_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocStartTaskAction_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocStartTaskAction_ReferenceTo_DocAbstractButton_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractButton_Affichage_Group").controls.head as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocStaticValue_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocStaticValue"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocStaticValue_ReferenceTo_DocStaticValue_value_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocStaticValue_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTab_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTab"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTab_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTab_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTab_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTab_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTab_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTab_ReferenceTo_DocTab_default_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTab_Conception_Group").controls.at("DocTab_default_Check") as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTab_ReferenceTo_DocTab_zoneDeDonneeRecevantLeFocus_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTab_Conception_Group").controls.at("DocTab_zoneDeDonneeRecevantLeFocus_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTab_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTab"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTab_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTab_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTab_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTab"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTab_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTabbedBloc_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTabbedBloc_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocTabbedBloc_tabbingMode_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTabbedBloc_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTabbedBloc_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTabbedBloc_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTabbedBloc_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTable_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTable"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTable_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTable_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTable_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTable_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTable_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTable_ReferenceTo_DocAbstractTable_disableSelectionPredicate_Check"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.selectionMode = equinoxeDialogue::EnumSelectionMode::multipleSelection"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTable_Conception_Group").controls.at("DocAbstractTable_disableSelectionPredicate_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocTable_ReferenceTo_DocAbstractTable_selectionMode_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTable_Conception_Group").controls.at("DocAbstractTable_selectionMode_Enum") as SelectDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.hasPagerMode()"
            widget = SelectDescription.create[
              name = "DocTable_ReferenceTo_DocTable_pagerMode_Enum"
              extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTable_Conception_Group").controls.at("DocTable_pagerMode_Enum") as SelectDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.hasPagerMode()"
            widget = SelectDescription.create[
              name = "DocTable_ReferenceTo_DocTable_pagerValidationStrategy_Enum"
              isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.pagerMode == equinoxeDialogue::EnumPagerMode::on"
              extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTable_Conception_Group").controls.at("DocTable_pagerValidationStrategy_Enum") as SelectDescription) ]
            ]
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTable_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTable"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTable_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTable_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTable_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTable"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTable_ReferenceTo_DocAbstractHigh_height_Txt"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.isInInternetContext()"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.hasPagerMode()"
            widget = CustomDescription.create[
              name = "DocTable_ReferenceTo_DocTable_pagerSize_Eqx_Spinner"
              isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.pagerMode == equinoxeDialogue::EnumPagerMode::on"
              extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTable_Conception_Group").controls.at("DocTable_pagerSize_Eqx_Spinner") as CustomDescription) ]
            ]
          ]
        ]
        controls += CustomDescription.create[
          name = "DocTable_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTable_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTable_ReferenceTo_DocAbstractTable_verticalAlign_Ref"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isInInternetContext()"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTable_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTable_ReferenceTo_DocTable_forceBottomEmptyLines_Check"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.isInInternetContext()"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTable_Conception_Group").controls.at("DocTable_forceBottomEmptyLines_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableColumn_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableColumn_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTableColumn_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableColumn_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableColumn_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableColumn_ReferenceTo_DocAbstractTableColumn_isMonoUnit_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableColumn_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_ReferenceTo_DocTableColumn_contentOrientation_Enum"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isInInternetContext()"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableColumn_Conception_Group").controls.at("DocTableColumn_contentOrientation_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_ReferenceTo_DocTableColumn_contentStyle_Enum"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.isInInternetContext()"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableColumn_Conception_Group").controls.at("DocTableColumn_contentStyle_Enum") as SelectDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableColumn_ReferenceTo_DocTableColumn_repeatable_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableColumn_Conception_Group").controls.at("DocTableColumn_repeatable_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_ReferenceTo_DocTableColumn_sortingMode_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableColumn_Conception_Group").controls.at("DocTableColumn_sortingMode_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_ReferenceTo_DocTableColumn_sortingModeInitial_Enum"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.sortingMode != equinoxeDialogue::EnumSortingMode::_Undefined and self.sortingMode != equinoxeDialogue::EnumSortingMode::unsortable"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableColumn_Conception_Group").controls.at("DocTableColumn_sortingModeInitial_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableColumn_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTableColumn_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTableColumn_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableColumn_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableColumn_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTableColumn_ReferenceTo_DocAbstractTableColumn_contentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableColumn_Affichage_Group").controls.at("DocAbstractTableColumn_contentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTableColumn_ReferenceTo_DocAbstractTableColumn_titleAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableColumn_Affichage_Group").controls.at("DocAbstractTableColumn_titleAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTree_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTree"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableTree_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTableTree_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTree_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTree_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTree_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTree_ReferenceTo_DocAbstractTable_disableSelectionPredicate_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTable_Conception_Group").controls.at("DocAbstractTable_disableSelectionPredicate_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocTableTree_ReferenceTo_DocAbstractTable_selectionMode_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTable_Conception_Group").controls.at("DocAbstractTable_selectionMode_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTree_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTree"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTableTree_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTableTree_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTree_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTree"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableTree_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocTableTree_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTableTree_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTableTree_ReferenceTo_DocAbstractTable_verticalAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTable_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTree_ReferenceTo_DocTableTree_expandable_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableTree_Affichage_Group").controls.at("DocTableTree_expandable_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTree_ReferenceTo_DocTableTree_initiallyExpanded_Check"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.expandable"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableTree_Affichage_Group").controls.at("DocTableTree_initiallyExpanded_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeCell_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeCell"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "DocTableTreeCell_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTreeCell_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeColumn_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocAbstractTableColumn_isMonoUnit_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableColumn_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeColumn_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeColumn_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeColumn"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocAbstractWide_width_Txt"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.rang > 0"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocAbstractTableColumn_contentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableColumn_Affichage_Group").controls.at("DocAbstractTableColumn_contentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTableTreeColumn_ReferenceTo_DocAbstractTableColumn_titleAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableColumn_Affichage_Group").controls.at("DocAbstractTableColumn_titleAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeFooterCell_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeFooterCell"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableTreeFooterCell_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeFooterCell_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeFooterCell"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTableTreeFooterCell_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeFooterCell_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeFooterCell"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocTableTreeFooterCell_ReferenceTo_DocAbstractTableFooterCell_align_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableFooterCell_Affichage_Group").controls.at("DocAbstractTableFooterCell_align_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocTableTreeFooterCell_ReferenceTo_DocAbstractTableFooterCell_style_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractTableFooterCell_Affichage_Group").controls.at("DocAbstractTableFooterCell_style_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeLevel_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTableTreeLevel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "DocTableTreeLevel_ReferenceTo_DocTableTreeLevel_deferredExpandMode_Enum"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.getLevel() == 2"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTableTreeLevel_Conception_Group").controls.head as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopic_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopic"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocTopic_ReferenceTo_DocTopic_canal_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTopic_Conception_Group").controls.at("DocTopic_canal_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTopic_ReferenceTo_DocTopic_taskId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTopic_Conception_Group").controls.at("DocTopic_taskId_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopic_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopic"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTopic_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopic_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopic"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTopic_ReferenceTo_DocTopic_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTopic_Affichage_Group").controls.at("DocTopic_height_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTopic_ReferenceTo_DocTopic_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTopic_Affichage_Group").controls.at("DocTopic_width_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopicAction_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopicAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocTopicAction_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTopicAction_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTopicAction_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTopicAction_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTopicAction_ReferenceTo_DocAbstractDisableable_disabled_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractDisableable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicAction_ReferenceTo_DocTopicAction_canal_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTopicAction_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopicAction_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopicAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTopicAction_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocTopicAction_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopicAction_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopicAction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "DocTopicAction_ReferenceTo_DocScreenItem_colSpan_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_colSpan_Eqx_Spinner") as CustomDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicAction_ReferenceTo_DocScreenItem_seContentAlign_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocScreenItem_Affichage_Group").controls.at("DocScreenItem_seContentAlign_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicAction_ReferenceTo_DocSimpleItem_labelPosition_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocSimpleItem_Affichage_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "DocTopicAction_ReferenceTo_DocAbstractButton_tabIndex_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractButton_Affichage_Group").controls.head as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopicMapping_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopicMapping"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicMapping_ReferenceTo_DocTopicMapping_dataId_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTopicMapping_Conception_Group").controls.at("DocTopicMapping_dataId_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicMapping_ReferenceTo_DocTopicMapping_champFournissantLaDonnee_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocTopicMapping_Conception_Group").controls.at("DocTopicMapping_champFournissantLaDonnee_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopicMapping_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocTopicMapping"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocTopicMapping_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocValidationRule_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocValidationRule"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocValidationRule_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocValidationRule_ReferenceTo_DocValidationRule_cboPropertyName_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocValidationRule_Conception_Group").controls.at("DocValidationRule_cboPropertyName_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocValidationRule_ReferenceTo_DocValidationRule_rule_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocValidationRule_Conception_Group").controls.at("DocValidationRule_rule_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocValidationRule_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocValidationRule"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocValidationRule_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocWebAppPanel_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocWebAppPanel_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocElement_shortId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocAbstractHideable_visible_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHideable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocAbstractClassifiable_classified_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractClassifiable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocWebAppPanel_defaultDisplayMode_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocWebAppPanel_Conception_Group").controls.at("DocWebAppPanel_defaultDisplayMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocWebAppPanel_webAppId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocWebAppPanel_Conception_Group").controls.at("DocWebAppPanel_webAppId_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocWebAppPanel_webAppTaskId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocWebAppPanel_Conception_Group").controls.at("DocWebAppPanel_webAppTaskId_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocWebAppPanel_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocElement_dmxId_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocElement_Documentation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocWebAppPanel_Affichage_Reference_Group"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocAbstractWide_width_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractWide_Affichage_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "DocWebAppPanel_ReferenceTo_DocAbstractHigh_height_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocAbstractHigh_Affichage_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocWidgetRef_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.DocWidgetRef"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "DocWidgetRef_ReferenceTo_DocWidgetRef_widgetReference_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("DocWidgetRef_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocWidgetRef_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.DocWidgetRef"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DocWidgetRef_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "EventTransition_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.EventTransition"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "EventTransition_ReferenceTo_EventTransition_event_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("EventTransition_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "EventTransition_ReferenceTo_AbstractTransition_target_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractTransition_Conception_Group").controls.at("AbstractTransition_target_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "EventTransition_ReferenceTo_AbstractTransition_condition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractTransition_Conception_Group").controls.at("AbstractTransition_condition_TxtArea") as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FinalState_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.FinalState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FinalState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "InitialState_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.InitialState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "InitialState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "InitialTransition_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.InitialTransition"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "InitialTransition_ReferenceTo_AbstractTransition_target_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractTransition_Conception_Group").controls.at("AbstractTransition_target_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "InitialTransition_ReferenceTo_AbstractTransition_condition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractTransition_Conception_Group").controls.at("AbstractTransition_condition_TxtArea") as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ScreenMapState_Conception_Reference_Group"
        domainClass = "equinoxeDialogue.ScreenMapState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ScreenMapState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ScreenMapState_ReferenceTo_ScreenMapState_accessMode_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("ScreenMapState_Conception_Group").controls.at("ScreenMapState_accessMode_Enum") as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ScreenMapState_ReferenceTo_ScreenMapState_screen_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("ScreenMapState_Conception_Group").controls.at("ScreenMapState_screen_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ScreenMapState_Documentation_Reference_Group"
        domainClass = "equinoxeDialogue.ScreenMapState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ScreenMapState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
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
