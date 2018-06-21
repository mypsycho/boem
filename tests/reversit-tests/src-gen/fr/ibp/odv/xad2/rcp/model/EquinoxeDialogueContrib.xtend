package fr.ibp.odv.xad2.rcp.model

import static org.mypsycho.emf.modit.reverit.test.EmfExtensions.Ext.*

import fr.ibp.odv.xad2.rcp.model.EqxModelExtensions.Tab
import org.mypsycho.emf.reflem.EmfContribution
import org.mypsycho.emf.reflem.EmfStretcher
import fr.ibp.odv.xad2.model.equinoxeDialogue.EquinoxeDialoguePackage

class EquinoxeDialogueContrib extends EmfContribution {
    
    static val extension EquinoxeDialoguePackage target = EquinoxeDialoguePackage.eINSTANCE
    
    new(EmfStretcher it) {
        super(it, target)
    }
    
    override run() {
      AWADialogFormats_InputFormat += list
      AWADialogFormats_OutputFormat += list
      abstractDocList_Orientation += Tab->Tab.affichage
      abstractDocList_WithSelectionAction += hidden
      abstractStateMachine_Initialization += multiline
      abstractStateMachine_Finalization += multiline
      abstractTransition_Target += list
      abstractTransition_Condition += multiline
      dataPath_Source += hidden
      dataPath_Data += hidden
      dialogComponent_GenerateLabels += Tab->Tab.generation
      dialogInterface_FormatEs += list
      dialogScreen_HeaderType += Tab->Tab.affichage
      dialogScreen_HeaderHeight += Tab->Tab.affichage
      dialogScreen_DefaultActionWidth += Tab->Tab.affichage
      docAbstractButton_TabIndex += Tab->Tab.affichage
      docAbstractField_TabIndex += Tab->Tab.affichage
      docAbstractHigh_Height += Tab->Tab.affichage
      docAbstractLabeled_LabelWidth += Tab->Tab.affichage
      docAbstractLabeled_LabelAlign += #[ Tab->Tab.affichage, list ]
      docAbstractLabeled_SeContentAlign += #[ Tab->Tab.affichage, list ]
      docAbstractMessage_Style += Tab->Tab.affichage
      docAbstractMessage_NbVisibleChars += Tab->Tab.affichage
      docAbstractTable_VerticalAlign += #[ Tab->Tab.affichage, list ]
      docAbstractTableColumn_ContentAlign += #[ Tab->Tab.affichage, list ]
      docAbstractTableColumn_TitleAlign += #[ Tab->Tab.affichage, list ]
      docAbstractTableFooterCell_Style += Tab->Tab.affichage
      docAbstractTableFooterCell_Align += #[ Tab->Tab.affichage, list ]
      docAbstractWide_Width += Tab->Tab.affichage
      docAction_WithConfirmation += shown
      docAction_ButtonWidth += Tab->Tab.affichage
      docAction_WithImage += shown
      docAction_DialogAction += list
      docBannerModel_Position += #[ Tab->Tab.affichage, list ]
      docBloc_Style += Tab->Tab.affichage
      docButtonGroup_ButtonWidth += Tab->Tab.affichage
      docButtonGroup_GroupWidth += Tab->Tab.affichage
      docCodeFilter_CboAttribute += list
      docColumn_ForceDefaultHeight += Tab->Tab.affichage
      docConfirmationModel_YesAction += list
      docConfirmationModel_NoAction += list
      docConversionRule_Rule += list
      docConversionRule_PatternKey += list
      docCrAttribute_DynamicAttribute += list
      docDisplayModeC_ScreenDisplayMode += list
      docDocViewer_DocType += list
      docDocViewer_Source += list
      docElement_DmxId += Tab->Tab.documentation
      docEvent_Event += list
      docField_WithInputWizard += shown
      docGrid_ForceDefaultHeight += Tab->Tab.affichage
      docItem_Rang += hidden
      docLabel_CboAttribute += list
      docListAction_WithConfirmation += shown
      docListAction_DialogAction += list
      docMailto_Style += Tab->Tab.affichage
      docMsgArg_Rang += hidden
      docMsgArg_WithDynamicValue += hidden
      docMsgArg_WithPropertyConverter += hidden
      docMsgArg_WithFieldValue += hidden
      docRow_WithLabelKey += hidden
      docRuleEnumAttribute_ValidatorAttribute += list
      docRuleEnumAttribute_Value += list
      docRuleIntegerAttribute_ValidatorAttribute += list
      docRuleRegexpAttribute_ValidatorAttribute += list
      docRuleStringAttribute_ValidatorAttribute += list
      docScreenItem_ColSpan += Tab->Tab.affichage
      docScreenItem_SeContentAlign += #[ Tab->Tab.affichage, list ]
      docSimpleItem_LabelPosition += #[ Tab->Tab.affichage, list ]
      docStartTaskAction_ActionTarget += list
      docStructElement_Justified += Tab->Tab.affichage
      docTab_AvecActionDeSelection += hidden
      docTabbedBloc_TabbingMode += list
      docTableColumn_WithSortingRule += hidden
      docTableColumn_WithSelectionAction += hidden
      docTableTree_Expandable += Tab->Tab.affichage
      docTableTree_InitiallyExpanded += Tab->Tab.affichage
      docTopic_Width += Tab->Tab.affichage
      docTopic_Height += Tab->Tab.affichage
      docTopic_Canal += list
      docTopicAction_Canal += list
      docTopicMapping_WithProperty += hidden
      docTopicMapping_WithConverter += hidden
      docTopicMapping_DataId += list
      eventTransition_Event += list
    }
}
