package fr.ibp.odv.xad2.rcp.gen

import java.util.Map
import java.util.concurrent.Callable
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.PageDescription
import org.mypsycho.emf.modit.EModIt

class EquinoxeDialogue_Reference implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeDialogue_Reference".alias(Category.create[
      name = "equinoxeDialogue_Reference"
      pages += PageDescription.create[
        name = "AWADialogFormats_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.AWADialogFormats"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::AWADialogFormats)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("AWADialogFormats_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "AwaDialogComponent_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.AwaDialogComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::AwaDialogComponent)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("AwaDialogComponent_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DataPath_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DataPath"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DataPath)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DataPath_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogComponent_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DialogComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogComponent)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DialogComponent_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogInterface_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DialogInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogInterface)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DialogInterface_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DialogScreen_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DialogScreen"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DialogScreen)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DialogScreen_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocAction_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocAction)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocAction_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBannerModel_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocBannerModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBannerModel)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocBannerModel_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocBloc_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocBloc)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocBloc_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocButtonGroup_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocButtonGroup)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocButtonGroup_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCodeFilter_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocCodeFilter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCodeFilter)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocCodeFilter_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocColumn_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocColumn)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocColumn_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCompositeField_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocCompositeField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCompositeField)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocCompositeField_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocConfirmationModel_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocConfirmationModel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocConfirmationModel)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocConfirmationModel_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocConversionRule_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocConversionRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocConversionRule)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocConversionRule_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCrAttributeProperty_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocCrAttributeProperty"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCrAttributeProperty)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocCrAttributeProperty_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCrAttributeRule_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocCrAttributeRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCrAttributeRule)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocCrAttributeRule_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocCrAttributeStatic_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocCrAttributeStatic"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocCrAttributeStatic)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocCrAttributeStatic_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocDisplayModeC_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocDisplayModeC"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocDisplayModeC)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocDisplayModeC_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocDocViewer_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocDocViewer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocDocViewer)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocDocViewer_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocEvent_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocEvent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocEvent)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocEvent_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocField_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocField"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocField)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocField_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocGrid_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocGrid"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocGrid)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocGrid_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInfoBloc_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInfoBloc)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocInfoBloc_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocInputWizard_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocInputWizard"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocInputWizard)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocInputWizard_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocLabel_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocLabel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocLabel)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocLabel_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocList_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocList"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocList)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocList_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocListAction_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocListAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocListAction)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocListAction_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMailto_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocMailto"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMailto)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocMailto_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMessage_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocMessage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMessage)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocMessage_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocMsgKey_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocMsgKey"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocMsgKey)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocMsgKey_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocParameter_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocParameter)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocParameter_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleEnumAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocRuleEnumAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleEnumAttribute)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocRuleEnumAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleIntegerAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocRuleIntegerAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleIntegerAttribute)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocRuleIntegerAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleRegexpAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocRuleRegexpAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleRegexpAttribute)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocRuleRegexpAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocRuleStringAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocRuleStringAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocRuleStringAttribute)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocRuleStringAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocSortingRule_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocSortingRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocSortingRule)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocSortingRule_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocStartTaskAction_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocStartTaskAction)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocStartTaskAction_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocStaticValue_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocStaticValue"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocStaticValue)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocStaticValue_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTab_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTab"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTab)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTab_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTabbedBloc_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTabbedBloc)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTabbedBloc_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTable_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTable"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTable)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTable_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableColumn_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTableColumn"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableColumn)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTableColumn_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTree_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTableTree"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTree)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTableTree_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTableTreeLevel_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTableTreeLevel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTableTreeLevel)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTableTreeLevel_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopic_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTopic"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopic)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTopic_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopicAction_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTopicAction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopicAction)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTopicAction_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocTopicMapping_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocTopicMapping"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocTopicMapping)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocTopicMapping_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocValidationRule_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocValidationRule"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocValidationRule)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocValidationRule_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocWebAppPanel_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocWebAppPanel)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocWebAppPanel_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DocWidgetRef_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.DocWidgetRef"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::DocWidgetRef)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("DocWidgetRef_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "EventTransition_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.EventTransition"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::EventTransition)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("EventTransition_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ScreenMapState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeDialogue.ScreenMapState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeDialogue::ScreenMapState)"
        groups += GroupDescription.ref("EquinoxeDialogue_Definition")[ (it as Category).groups.at("ScreenMapState_conception_Group") ]
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
