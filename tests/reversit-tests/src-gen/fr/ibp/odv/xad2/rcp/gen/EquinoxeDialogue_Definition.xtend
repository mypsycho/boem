package fr.ibp.odv.xad2.rcp.gen

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.Map
import java.util.concurrent.Callable
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CheckboxWidgetStyle
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.CustomExpression
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.HyperlinkWidgetStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.SelectWidgetStyle
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.TextWidgetStyle
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.mypsycho.emf.modit.EModIt

class EquinoxeDialogue_Definition implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeDialogue_Definition".alias(Category.create[
      name = "equinoxeDialogue_Definition"
      groups += GroupDescription.create[
        name = "AWADialogFormats_conception_Group"
        domainClass = "equinoxeDialogue.AWADialogFormats"
        controls += EqxHyperlinkDescription.create[
          name = "AWADialogFormats_inputFormat_"
          labelExpression = "inputFormat"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:inputFormat"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('inputFormat')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('inputFormat')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AWADialogFormats_outputFormat_"
          labelExpression = "outputFormat"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:outputFormat"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('outputFormat')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('outputFormat')"
              ]
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
        name = "AbstractCboDisplayer_conception_Group"
        domainClass = "equinoxeDialogue.AbstractCboDisplayer"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractCboDisplayer_cboCode_"
          labelExpression = "cboCode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cboCode"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('cboCode')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('cboCode')"
              ]
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractCboDisplayer_standardLabel_Enum"
          labelExpression = "standardLabel"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:standardLabel"
          candidatesExpression = "aql:equinoxeDialogue::EnumCboLabel.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('standardLabel',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractCboDisplayer_specificLabel_Txt"
          labelExpression = "specificLabel"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:specificLabel"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('specificLabel',newValue)"
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
        name = "AbstractDocList_conception_Group"
        domainClass = "equinoxeDialogue.AbstractDocList"
        controls += SelectDescription.create[
          name = "AbstractDocList_realisation_Enum"
          labelExpression = "realisation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:realisation"
          candidatesExpression = "aql:equinoxeDialogue::EnumListRealisation.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('realisation',newValue)"
            ]
          ]
          style = SelectWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AbstractDocList_targetedWidget_"
          labelExpression = "targetedWidget"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:targetedWidget"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('targetedWidget')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('targetedWidget')"
              ]
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractDocList_orientation_Enum"
          labelExpression = "orientation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:orientation"
          candidatesExpression = "aql:equinoxeDialogue::EnumOrientation.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('orientation',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractDocList_selectionMode_Enum"
          labelExpression = "selectionMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:selectionMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumSelectionMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('selectionMode',newValue)"
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
        name = "AbstractStateMachine_conception_Group"
        domainClass = "equinoxeDialogue.AbstractStateMachine"
        controls += TextDescription.create[
          name = "AbstractStateMachine_initialization_Txt"
          labelExpression = "initialization"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:initialization"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('initialization',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractStateMachine_finalization_Txt"
          labelExpression = "finalization"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:finalization"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('finalization',newValue)"
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
        name = "AbstractTransition_conception_Group"
        domainClass = "equinoxeDialogue.AbstractTransition"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractTransition_target_"
          labelExpression = "target"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:target"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('target')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('target')"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractTransition_condition_Txt"
          labelExpression = "condition"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:condition"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('condition',newValue)"
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
        name = "AbstractUIComponent_conception_Group"
        domainClass = "equinoxeDialogue.AbstractUIComponent"
        controls += CheckboxDescription.create[
          name = "AbstractUIComponent_isDynamic_Check"
          labelExpression = "isDynamic"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isDynamic"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isDynamic',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractUIComponent_codeAction_Txt"
          labelExpression = "codeAction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:codeAction"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('codeAction',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractUIComponent_numeroSequentiel_Txt"
          labelExpression = "numeroSequentiel"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:numeroSequentiel"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('numeroSequentiel',newValue)"
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
        name = "AbstractUIRealization_conception_Group"
        domainClass = "equinoxeDialogue.AbstractUIRealization"
        controls += SelectDescription.create[
          name = "AbstractUIRealization_media_Enum"
          labelExpression = "media"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:media"
          candidatesExpression = "aql:equinoxeDialogue::EnumMedia.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('media',newValue)"
            ]
          ]
          style = SelectWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractUIRealization_canal_Enum"
          labelExpression = "canal"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:canal"
          candidatesExpression = "aql:equinoxeDialogue::EnumCanal.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('canal',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractUIRealization_bank_Txt"
          labelExpression = "bank"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:bank"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('bank',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractUIRealization_lang_Enum"
          labelExpression = "lang"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:lang"
          candidatesExpression = "aql:equinoxeDialogue::EnumLang.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('lang',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractUIRealization_country_Enum"
          labelExpression = "country"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:country"
          candidatesExpression = "aql:equinoxeDialogue::EnumCountry.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('country',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractUIRealization_moreSelectors_Txt"
          labelExpression = "moreSelectors"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:moreSelectors"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('moreSelectors',newValue)"
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
        name = "AwaDialogComponent_conception_Group"
        domainClass = "equinoxeDialogue.AwaDialogComponent"
        controls += TextDescription.create[
          name = "AwaDialogComponent_webAppId_Txt"
          labelExpression = "webAppId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:webAppId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('webAppId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AwaDialogComponent_webAppTaskId_Txt"
          labelExpression = "webAppTaskId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:webAppTaskId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('webAppTaskId',newValue)"
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
        name = "DataPath_conception_Group"
        domainClass = "equinoxeDialogue.DataPath"
        controls += ListDescription.create[
          name = "DataPath_segments_"
          labelExpression = "segments"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:segments"
          displayExpression = "aql:value.getEqxLabel()"
          onClickOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerViewDoubleClick(onClickEventKind)"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Ajouter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxAddFromTreeView('segments',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('segments',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('segments',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('segments',selection)"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DataPath_source_"
          labelExpression = "source"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:source"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('source')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('source')"
              ]
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
        name = "DialogComponent_conception_Group"
        domainClass = "equinoxeDialogue.DialogComponent"
        controls += CheckboxDescription.create[
          name = "DialogComponent_generateLabels_Check"
          labelExpression = "generateLabels"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:generateLabels"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('generateLabels',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogInterface_conception_Group"
        domainClass = "equinoxeDialogue.DialogInterface"
        controls += EqxHyperlinkDescription.create[
          name = "DialogInterface_formatEs_"
          labelExpression = "formatEs"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:formatEs"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('formatEs')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('formatEs')"
              ]
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
        name = "DialogScreen_conception_Group"
        domainClass = "equinoxeDialogue.DialogScreen"
        controls += SelectDescription.create[
          name = "DialogScreen_headerType_Enum"
          labelExpression = "headerType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:headerType"
          candidatesExpression = "aql:equinoxeDialogue::EnumHeaderType.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('headerType',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DialogScreen_headerHeight_Txt"
          labelExpression = "headerHeight"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:headerHeight"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('headerHeight',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DialogScreen_script_Txt"
          labelExpression = "script"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:script"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('script',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DialogScreen_defaultActionWidth_Txt"
          labelExpression = "defaultActionWidth"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:defaultActionWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('defaultActionWidth',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DialogScreen_screenFocusStrategy_Check"
          labelExpression = "screenFocusStrategy"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:screenFocusStrategy"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('screenFocusStrategy',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DialogScreen_fieldToFocus_"
          labelExpression = "fieldToFocus"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:fieldToFocus"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('fieldToFocus')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('fieldToFocus')"
              ]
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
        name = "DocAbstractButton_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractButton"
        controls += CustomDescription.create[
          name = "DocAbstractButton_tabIndex_Eqx_Spinner"
          labelExpression = "tabIndex"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:tabIndex"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('tabIndex',newValue)"
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractClassifiable_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractClassifiable"
        controls += CheckboxDescription.create[
          name = "DocAbstractClassifiable_classified_Check"
          labelExpression = "classified"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:classified"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('classified',newValue)"
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
        name = "DocAbstractDisableable_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractDisableable"
        controls += CheckboxDescription.create[
          name = "DocAbstractDisableable_disabled_Check"
          labelExpression = "disabled"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:disabled"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('disabled',newValue)"
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
        name = "DocAbstractField_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractField"
        controls += CustomDescription.create[
          name = "DocAbstractField_tabIndex_Eqx_Spinner"
          labelExpression = "tabIndex"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:tabIndex"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('tabIndex',newValue)"
          ]
        ]
        controls += CustomDescription.create[
          name = "DocAbstractField_visibleLines_Eqx_Spinner"
          labelExpression = "visibleLines"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:visibleLines"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('visibleLines',newValue)"
          ]
        ]
        controls += TextDescription.create[
          name = "DocAbstractField_visibleCharacters_Txt"
          labelExpression = "visibleCharacters"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:visibleCharacters"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('visibleCharacters',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAbstractField_modifOnClient_Check"
          labelExpression = "modifOnClient"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:modifOnClient"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('modifOnClient',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractField_blocCibleDeLaLegende_"
          labelExpression = "blocCibleDeLaLegende"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:blocCibleDeLaLegende"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('blocCibleDeLaLegende')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('blocCibleDeLaLegende')"
              ]
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
        name = "DocAbstractHideable_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractHideable"
        controls += CheckboxDescription.create[
          name = "DocAbstractHideable_visible_Check"
          labelExpression = "visible"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:visible"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('visible',newValue)"
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
        name = "DocAbstractHigh_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractHigh"
        controls += TextDescription.create[
          name = "DocAbstractHigh_height_Txt"
          labelExpression = "height"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:height"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('height',newValue)"
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
        name = "DocAbstractLabeled_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractLabeled"
        controls += TextDescription.create[
          name = "DocAbstractLabeled_labelWidth_Txt"
          labelExpression = "labelWidth"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:labelWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('labelWidth',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractLabeled_labelAlign_"
          labelExpression = "labelAlign"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:labelAlign"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('labelAlign')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('labelAlign')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractLabeled_seContentAlign_"
          labelExpression = "seContentAlign"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:seContentAlign"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('seContentAlign')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('seContentAlign')"
              ]
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
        name = "DocAbstractMessage_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractMessage"
        controls += SelectDescription.create[
          name = "DocAbstractMessage_style_Enum"
          labelExpression = "style"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:style"
          candidatesExpression = "aql:equinoxeDialogue::EnumMsgStyle.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('style',newValue)"
            ]
          ]
        ]
        controls += CustomDescription.create[
          name = "DocAbstractMessage_nbVisibleChars_Eqx_Spinner"
          labelExpression = "nbVisibleChars"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:nbVisibleChars"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('nbVisibleChars',newValue)"
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractTable_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractTable"
        controls += SelectDescription.create[
          name = "DocAbstractTable_selectionMode_Enum"
          labelExpression = "selectionMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:selectionMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumSelectionMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('selectionMode',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAbstractTable_disableSelectionPredicate_Check"
          labelExpression = "disableSelectionPredicate"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:disableSelectionPredicate"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('disableSelectionPredicate',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractTable_verticalAlign_"
          labelExpression = "verticalAlign"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:verticalAlign"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('verticalAlign')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('verticalAlign')"
              ]
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
        name = "DocAbstractTableColumn_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractTableColumn"
        controls += CheckboxDescription.create[
          name = "DocAbstractTableColumn_isMonoUnit_Check"
          labelExpression = "isMonoUnit"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isMonoUnit"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isMonoUnit',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractTableColumn_contentAlign_"
          labelExpression = "contentAlign"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:contentAlign"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('contentAlign')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('contentAlign')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractTableColumn_titleAlign_"
          labelExpression = "titleAlign"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:titleAlign"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('titleAlign')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('titleAlign')"
              ]
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
        name = "DocAbstractTableFooterCell_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractTableFooterCell"
        controls += SelectDescription.create[
          name = "DocAbstractTableFooterCell_style_Enum"
          labelExpression = "style"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:style"
          candidatesExpression = "aql:equinoxeDialogue::EnumFooterCellStyle.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('style',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractTableFooterCell_align_"
          labelExpression = "align"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:align"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('align')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('align')"
              ]
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
        name = "DocAbstractWide_conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractWide"
        controls += TextDescription.create[
          name = "DocAbstractWide_width_Txt"
          labelExpression = "width"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:width"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('width',newValue)"
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
        name = "DocAction_conception_Group"
        domainClass = "equinoxeDialogue.DocAction"
        controls += ListDescription.create[
          name = "DocAction_widgetsARafraichirIntranet_"
          labelExpression = "widgetsARafraichirIntranet"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:widgetsARafraichirIntranet"
          displayExpression = "aql:value.getEqxLabel()"
          onClickOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerViewDoubleClick(onClickEventKind)"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Ajouter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxAddFromTreeView('widgetsARafraichirIntranet',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('widgetsARafraichirIntranet',selection)"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_checkAlerts_Check"
          labelExpression = "checkAlerts"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:checkAlerts"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('checkAlerts',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_refreshAjaxSc_Check"
          labelExpression = "refreshAjaxSc"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:refreshAjaxSc"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('refreshAjaxSc',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_default_Check"
          labelExpression = "default"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:default"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('default',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocAction_validationStrategy_Enum"
          labelExpression = "validationStrategy"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:validationStrategy"
          candidatesExpression = "aql:equinoxeDialogue::EnumValidationStrategy.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('validationStrategy',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocAction_confirmFunction_Txt"
          labelExpression = "confirmFunction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:confirmFunction"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('confirmFunction',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocAction_buttonWidth_Txt"
          labelExpression = "buttonWidth"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:buttonWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('buttonWidth',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocAction_type_Enum"
          labelExpression = "type"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:type"
          candidatesExpression = "aql:equinoxeDialogue::EnumTypeBouton.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('type',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAction_dialogAction_"
          labelExpression = "dialogAction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dialogAction"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('dialogAction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('dialogAction')"
              ]
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
        name = "DocBannerModel_conception_Group"
        domainClass = "equinoxeDialogue.DocBannerModel"
        controls += EqxHyperlinkDescription.create[
          name = "DocBannerModel_position_"
          labelExpression = "position"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:position"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('position')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('position')"
              ]
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
        name = "DocBloc_conception_Group"
        domainClass = "equinoxeDialogue.DocBloc"
        controls += SelectDescription.create[
          name = "DocBloc_style_Enum"
          labelExpression = "style"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:style"
          candidatesExpression = "aql:equinoxeDialogue::EnumStyleBloc.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('style',newValue)"
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
        name = "DocButtonGroup_conception_Group"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        controls += TextDescription.create[
          name = "DocButtonGroup_buttonWidth_Txt"
          labelExpression = "buttonWidth"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:buttonWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('buttonWidth',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocButtonGroup_groupWidth_Txt"
          labelExpression = "groupWidth"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:groupWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('groupWidth',newValue)"
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
        name = "DocCodeFilter_conception_Group"
        domainClass = "equinoxeDialogue.DocCodeFilter"
        controls += EqxHyperlinkDescription.create[
          name = "DocCodeFilter_cboAttribute_"
          labelExpression = "cboAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cboAttribute"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('cboAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('cboAttribute')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocCodeFilter_filterCriteria_"
          labelExpression = "filterCriteria"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:filterCriteria"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('filterCriteria')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('filterCriteria')"
              ]
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
        name = "DocColumn_conception_Group"
        domainClass = "equinoxeDialogue.DocColumn"
        controls += CheckboxDescription.create[
          name = "DocColumn_forceDefaultHeight_Check"
          labelExpression = "forceDefaultHeight"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:forceDefaultHeight"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('forceDefaultHeight',newValue)"
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
        name = "DocCompositeField_conception_Group"
        domainClass = "equinoxeDialogue.DocCompositeField"
        controls += CheckboxDescription.create[
          name = "DocCompositeField_withAutoTab_Check"
          labelExpression = "withAutoTab"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:withAutoTab"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withAutoTab',newValue)"
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
        name = "DocConfirmationModel_conception_Group"
        domainClass = "equinoxeDialogue.DocConfirmationModel"
        controls += EqxHyperlinkDescription.create[
          name = "DocConfirmationModel_yesAction_"
          labelExpression = "yesAction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:yesAction"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('yesAction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('yesAction')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocConfirmationModel_noAction_"
          labelExpression = "noAction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:noAction"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('noAction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('noAction')"
              ]
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
        name = "DocConversionRule_conception_Group"
        domainClass = "equinoxeDialogue.DocConversionRule"
        controls += EqxHyperlinkDescription.create[
          name = "DocConversionRule_rule_"
          labelExpression = "rule"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:rule"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('rule')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('rule')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocConversionRule_patternKey_"
          labelExpression = "patternKey"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:patternKey"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('patternKey')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('patternKey')"
              ]
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
        name = "DocCrAttribute_conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "DocCrAttribute_dynamicAttribute_"
          labelExpression = "dynamicAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dynamicAttribute"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('dynamicAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('dynamicAttribute')"
              ]
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
        name = "DocCrAttributeProperty_conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeProperty"
        controls += CheckboxDescription.create[
          name = "DocCrAttributeProperty_valueIsConstant_Check"
          labelExpression = "valueIsConstant"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:valueIsConstant"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('valueIsConstant',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocCrAttributeProperty_propertyName_Txt"
          labelExpression = "propertyName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:propertyName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('propertyName',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCrAttributeRule_conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeRule"
        controls += TextDescription.create[
          name = "DocCrAttributeRule_conversionRule_Txt"
          labelExpression = "conversionRule"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionRule"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionRule',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += TextDescription.create[
          name = "DocCrAttributeRule_conversionPattern_Txt"
          labelExpression = "conversionPattern"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionPattern"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionPattern',newValue)"
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
        name = "DocCrAttributeStatic_conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeStatic"
        controls += TextDescription.create[
          name = "DocCrAttributeStatic_staticValue_Txt"
          labelExpression = "staticValue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:staticValue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('staticValue',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocDisplayModeC_conception_Group"
        domainClass = "equinoxeDialogue.DocDisplayModeC"
        controls += EqxHyperlinkDescription.create[
          name = "DocDisplayModeC_screenDisplayMode_"
          labelExpression = "screenDisplayMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:screenDisplayMode"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('screenDisplayMode')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('screenDisplayMode')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocDisplayModeC_widgetDisplayMode_"
          labelExpression = "widgetDisplayMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:widgetDisplayMode"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('widgetDisplayMode')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('widgetDisplayMode')"
              ]
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
        name = "DocDocViewer_conception_Group"
        domainClass = "equinoxeDialogue.DocDocViewer"
        controls += EqxHyperlinkDescription.create[
          name = "DocDocViewer_docType_"
          labelExpression = "docType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:docType"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('docType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('docType')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocDocViewer_source_"
          labelExpression = "source"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:source"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('source')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('source')"
              ]
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
        name = "DocElement_conception_Group"
        domainClass = "equinoxeDialogue.DocElement"
        controls += TextDescription.create[
          name = "DocElement_dmxId_Txt"
          labelExpression = "dmxId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dmxId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dmxId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocElement_shortId_Txt"
          labelExpression = "shortId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:shortId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('shortId',newValue)"
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
        name = "DocEvent_conception_Group"
        domainClass = "equinoxeDialogue.DocEvent"
        controls += TextDescription.create[
          name = "DocEvent_functionCall_Txt"
          labelExpression = "functionCall"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:functionCall"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('functionCall',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocEvent_process_Enum"
          labelExpression = "process"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:process"
          candidatesExpression = "aql:equinoxeDialogue::EnumEventProcess.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('process',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocEvent_event_"
          labelExpression = "event"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:event"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('event')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('event')"
              ]
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
        name = "DocField_conception_Group"
        domainClass = "equinoxeDialogue.DocField"
        controls += CheckboxDescription.create[
          name = "DocField_isPassword_Check"
          labelExpression = "isPassword"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isPassword"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isPassword',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocField_withAutoTab_Check"
          labelExpression = "withAutoTab"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:withAutoTab"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withAutoTab',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocField_pivot_Txt"
          labelExpression = "pivot"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:pivot"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pivot',newValue)"
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
        name = "DocGrid_conception_Group"
        domainClass = "equinoxeDialogue.DocGrid"
        controls += CustomDescription.create[
          name = "DocGrid_cols_Eqx_Spinner"
          labelExpression = "cols"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:cols"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('cols',newValue)"
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocGrid_forceDefaultHeight_Check"
          labelExpression = "forceDefaultHeight"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:forceDefaultHeight"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('forceDefaultHeight',newValue)"
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
        name = "DocInfoBloc_conception_Group"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        controls += CheckboxDescription.create[
          name = "DocInfoBloc_specificJsp_Check"
          labelExpression = "specificJsp"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:specificJsp"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('specificJsp',newValue)"
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
        name = "DocInputWizard_conception_Group"
        domainClass = "equinoxeDialogue.DocInputWizard"
        controls += TextDescription.create[
          name = "DocInputWizard_taskOid_Txt"
          labelExpression = "taskOid"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:taskOid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('taskOid',newValue)"
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
        name = "DocLabel_conception_Group"
        domainClass = "equinoxeDialogue.DocLabel"
        controls += SelectDescription.create[
          name = "DocLabel_realisation_Enum"
          labelExpression = "realisation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:realisation"
          candidatesExpression = "aql:equinoxeDialogue::EnumFieldRealisation.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('realisation',newValue)"
            ]
          ]
          style = SelectWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += CustomDescription.create[
          name = "DocLabel_cols_Eqx_Spinner"
          labelExpression = "cols"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:cols"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('cols',newValue)"
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocLabel_useColorRange_Check"
          labelExpression = "useColorRange"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:useColorRange"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useColorRange',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocLabel_unitDisplayMode_Enum"
          labelExpression = "unitDisplayMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:unitDisplayMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumFieldDisplayMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('unitDisplayMode',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocLabel_cboAttribute_"
          labelExpression = "cboAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cboAttribute"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('cboAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('cboAttribute')"
              ]
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
        name = "DocList_conception_Group"
        domainClass = "equinoxeDialogue.DocList"
        controls += CheckboxDescription.create[
          name = "DocList_areRadioButtonsDynamicallyDeactivated_Check"
          labelExpression = "areRadioButtonsDynamicallyDeactivated"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:areRadioButtonsDynamicallyDeactivated"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('areRadioButtonsDynamicallyDeactivated',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocList_conversionRulePerimeter_Enum"
          labelExpression = "conversionRulePerimeter"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionRulePerimeter"
          candidatesExpression = "aql:equinoxeDialogue::EnumListRgConvPerimeter.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionRulePerimeter',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocList_isActionList_Check"
          labelExpression = "isActionList"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isActionList"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isActionList',newValue)"
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
        name = "DocListAction_conception_Group"
        domainClass = "equinoxeDialogue.DocListAction"
        controls += SelectDescription.create[
          name = "DocListAction_validationStrategy_Enum"
          labelExpression = "validationStrategy"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:validationStrategy"
          candidatesExpression = "aql:equinoxeDialogue::EnumValidationStrategy.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('validationStrategy',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocListAction_dialogAction_"
          labelExpression = "dialogAction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dialogAction"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('dialogAction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('dialogAction')"
              ]
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
        name = "DocMailto_conception_Group"
        domainClass = "equinoxeDialogue.DocMailto"
        controls += SelectDescription.create[
          name = "DocMailto_style_Enum"
          labelExpression = "style"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:style"
          candidatesExpression = "aql:equinoxeDialogue::EnumMsgStyle.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('style',newValue)"
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
        name = "DocMessage_conception_Group"
        domainClass = "equinoxeDialogue.DocMessage"
        controls += EqxHyperlinkDescription.create[
          name = "DocMessage_targetedDocBloc_"
          labelExpression = "targetedDocBloc"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:targetedDocBloc"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('targetedDocBloc')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('targetedDocBloc')"
              ]
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
        name = "DocMsgKey_conception_Group"
        domainClass = "equinoxeDialogue.DocMsgKey"
        controls += TextDescription.create[
          name = "DocMsgKey_domaine_Txt"
          labelExpression = "domaine"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:domaine"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('domaine',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocMsgKey_key_Txt"
          labelExpression = "key"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:key"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('key',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocMsgKey_value_Txt"
          labelExpression = "value"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:value"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('value',newValue)"
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
        name = "DocParameter_conception_Group"
        domainClass = "equinoxeDialogue.DocParameter"
        controls += CheckboxDescription.create[
          name = "DocParameter_useInterface_Check"
          labelExpression = "useInterface"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:useInterface"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useInterface',newValue)"
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
        name = "DocRuleEnumAttribute_conception_Group"
        domainClass = "equinoxeDialogue.DocRuleEnumAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleEnumAttribute_validatorAttribute_"
          labelExpression = "validatorAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:validatorAttribute"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('validatorAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('validatorAttribute')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleEnumAttribute_value_"
          labelExpression = "value"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:value"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('value')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('value')"
              ]
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
        name = "DocRuleIntegerAttribute_conception_Group"
        domainClass = "equinoxeDialogue.DocRuleIntegerAttribute"
        controls += CustomDescription.create[
          name = "DocRuleIntegerAttribute_value_Eqx_Spinner"
          labelExpression = "value"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:value"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('value',newValue)"
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleIntegerAttribute_validatorAttribute_"
          labelExpression = "validatorAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:validatorAttribute"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('validatorAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('validatorAttribute')"
              ]
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
        name = "DocRuleRegexpAttribute_conception_Group"
        domainClass = "equinoxeDialogue.DocRuleRegexpAttribute"
        controls += TextDescription.create[
          name = "DocRuleRegexpAttribute_value_Txt"
          labelExpression = "value"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:value"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('value',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleRegexpAttribute_validatorAttribute_"
          labelExpression = "validatorAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:validatorAttribute"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('validatorAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('validatorAttribute')"
              ]
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
        name = "DocRuleStringAttribute_conception_Group"
        domainClass = "equinoxeDialogue.DocRuleStringAttribute"
        controls += TextDescription.create[
          name = "DocRuleStringAttribute_value_Txt"
          labelExpression = "value"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:value"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('value',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleStringAttribute_validatorAttribute_"
          labelExpression = "validatorAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:validatorAttribute"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('validatorAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('validatorAttribute')"
              ]
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
        name = "DocScreenItem_conception_Group"
        domainClass = "equinoxeDialogue.DocScreenItem"
        controls += CustomDescription.create[
          name = "DocScreenItem_colSpan_Eqx_Spinner"
          labelExpression = "colSpan"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:colSpan"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('colSpan',newValue)"
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocScreenItem_seContentAlign_"
          labelExpression = "seContentAlign"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:seContentAlign"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('seContentAlign')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('seContentAlign')"
              ]
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
        name = "DocSimpleItem_conception_Group"
        domainClass = "equinoxeDialogue.DocSimpleItem"
        controls += EqxHyperlinkDescription.create[
          name = "DocSimpleItem_labelPosition_"
          labelExpression = "labelPosition"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:labelPosition"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('labelPosition')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('labelPosition')"
              ]
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
        name = "DocSortingRule_conception_Group"
        domainClass = "equinoxeDialogue.DocSortingRule"
        controls += EqxHyperlinkDescription.create[
          name = "DocSortingRule_sAppliqueSurLaDonnee_"
          labelExpression = "sAppliqueSurLaDonnee"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sAppliqueSurLaDonnee"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('sAppliqueSurLaDonnee')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('sAppliqueSurLaDonnee')"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_caseSensitive_Check"
          labelExpression = "caseSensitive"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:caseSensitive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('caseSensitive',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_spacesSensitive_Check"
          labelExpression = "spacesSensitive"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:spacesSensitive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('spacesSensitive',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_diacriticsSensitive_Check"
          labelExpression = "diacriticsSensitive"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:diacriticsSensitive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('diacriticsSensitive',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_simpleQuoteSensitive_Check"
          labelExpression = "simpleQuoteSensitive"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:simpleQuoteSensitive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('simpleQuoteSensitive',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocSortingRule_sortOrder_Enum"
          labelExpression = "sortOrder"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sortOrder"
          candidatesExpression = "aql:equinoxeDialogue::EnumSortingRule.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sortOrder',newValue)"
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
        name = "DocStartTaskAction_conception_Group"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        controls += EqxHyperlinkDescription.create[
          name = "DocStartTaskAction_actionTarget_"
          labelExpression = "actionTarget"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:actionTarget"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('actionTarget')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('actionTarget')"
              ]
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
        name = "DocStaticValue_conception_Group"
        domainClass = "equinoxeDialogue.DocStaticValue"
        controls += TextDescription.create[
          name = "DocStaticValue_value_Txt"
          labelExpression = "value"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:value"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('value',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DocStructElement_conception_Group"
        domainClass = "equinoxeDialogue.DocStructElement"
        controls += CheckboxDescription.create[
          name = "DocStructElement_separator_Check"
          labelExpression = "separator"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:separator"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('separator',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocStructElement_justified_Check"
          labelExpression = "justified"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:justified"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('justified',newValue)"
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
        name = "DocTab_conception_Group"
        domainClass = "equinoxeDialogue.DocTab"
        controls += EqxHyperlinkDescription.create[
          name = "DocTab_zoneDeDonneeRecevantLeFocus_"
          labelExpression = "zoneDeDonneeRecevantLeFocus"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:zoneDeDonneeRecevantLeFocus"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('zoneDeDonneeRecevantLeFocus')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('zoneDeDonneeRecevantLeFocus')"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTab_default_Check"
          labelExpression = "default"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:default"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('default',newValue)"
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
        name = "DocTabbedBloc_conception_Group"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        controls += EqxHyperlinkDescription.create[
          name = "DocTabbedBloc_tabbingMode_"
          labelExpression = "tabbingMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:tabbingMode"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('tabbingMode')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('tabbingMode')"
              ]
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
        name = "DocTable_conception_Group"
        domainClass = "equinoxeDialogue.DocTable"
        controls += CheckboxDescription.create[
          name = "DocTable_forceBottomEmptyLines_Check"
          labelExpression = "forceBottomEmptyLines"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:forceBottomEmptyLines"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('forceBottomEmptyLines',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocTable_pagerMode_Enum"
          labelExpression = "pagerMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:pagerMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumPagerMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pagerMode',newValue)"
            ]
          ]
        ]
        controls += CustomDescription.create[
          name = "DocTable_pagerSize_Eqx_Spinner"
          labelExpression = "pagerSize"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:pagerSize"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('pagerSize',newValue)"
          ]
        ]
        controls += SelectDescription.create[
          name = "DocTable_pagerValidationStrategy_Enum"
          labelExpression = "pagerValidationStrategy"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:pagerValidationStrategy"
          candidatesExpression = "aql:equinoxeDialogue::EnumValidationStrategy.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pagerValidationStrategy',newValue)"
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
        name = "DocTableColumn_conception_Group"
        domainClass = "equinoxeDialogue.DocTableColumn"
        controls += CheckboxDescription.create[
          name = "DocTableColumn_repeatable_Check"
          labelExpression = "repeatable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:repeatable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('repeatable',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_sortingMode_Enum"
          labelExpression = "sortingMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sortingMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumSortingMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sortingMode',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_sortingModeInitial_Enum"
          labelExpression = "sortingModeInitial"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sortingModeInitial"
          candidatesExpression = "aql:equinoxeDialogue::EnumSortingModeInitial.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sortingModeInitial',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_contentStyle_Enum"
          labelExpression = "contentStyle"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:contentStyle"
          candidatesExpression = "aql:equinoxeDialogue::EnumContentStyle.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('contentStyle',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocTableColumn_contentOrientation_Enum"
          labelExpression = "contentOrientation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:contentOrientation"
          candidatesExpression = "aql:equinoxeDialogue::EnumOrientation.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('contentOrientation',newValue)"
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
        name = "DocTableTree_conception_Group"
        domainClass = "equinoxeDialogue.DocTableTree"
        controls += CheckboxDescription.create[
          name = "DocTableTree_expandable_Check"
          labelExpression = "expandable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:expandable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('expandable',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocTableTree_initiallyExpanded_Check"
          labelExpression = "initiallyExpanded"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:initiallyExpanded"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('initiallyExpanded',newValue)"
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
        name = "DocTableTreeLevel_conception_Group"
        domainClass = "equinoxeDialogue.DocTableTreeLevel"
        controls += SelectDescription.create[
          name = "DocTableTreeLevel_deferredExpandMode_Enum"
          labelExpression = "deferredExpandMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:deferredExpandMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumDeferredExpandMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deferredExpandMode',newValue)"
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
        name = "DocTopic_conception_Group"
        domainClass = "equinoxeDialogue.DocTopic"
        controls += TextDescription.create[
          name = "DocTopic_taskId_Txt"
          labelExpression = "taskId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:taskId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('taskId',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += TextDescription.create[
          name = "DocTopic_width_Txt"
          labelExpression = "width"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:width"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('width',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocTopic_height_Txt"
          labelExpression = "height"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:height"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('height',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTopic_canal_"
          labelExpression = "canal"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:canal"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('canal')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('canal')"
              ]
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
        name = "DocTopicAction_conception_Group"
        domainClass = "equinoxeDialogue.DocTopicAction"
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicAction_canal_"
          labelExpression = "canal"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:canal"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('canal')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('canal')"
              ]
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
        name = "DocTopicMapping_conception_Group"
        domainClass = "equinoxeDialogue.DocTopicMapping"
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicMapping_champFournissantLaDonnee_"
          labelExpression = "champFournissantLaDonnee"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:champFournissantLaDonnee"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('champFournissantLaDonnee')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('champFournissantLaDonnee')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicMapping_dataId_"
          labelExpression = "dataId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dataId"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('dataId')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('dataId')"
              ]
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
        name = "DocValidationRule_conception_Group"
        domainClass = "equinoxeDialogue.DocValidationRule"
        controls += TextDescription.create[
          name = "DocValidationRule_cboPropertyName_Txt"
          labelExpression = "cboPropertyName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cboPropertyName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cboPropertyName',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocValidationRule_rule_"
          labelExpression = "rule"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:rule"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('rule')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('rule')"
              ]
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
        name = "DocWebAppPanel_conception_Group"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        controls += TextDescription.create[
          name = "DocWebAppPanel_webAppId_Txt"
          labelExpression = "webAppId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:webAppId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('webAppId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocWebAppPanel_webAppTaskId_Txt"
          labelExpression = "webAppTaskId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:webAppTaskId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('webAppTaskId',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocWebAppPanel_defaultDisplayMode_Enum"
          labelExpression = "defaultDisplayMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:defaultDisplayMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumActionDisplayMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('defaultDisplayMode',newValue)"
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
        name = "DocWidgetRef_conception_Group"
        domainClass = "equinoxeDialogue.DocWidgetRef"
        controls += EqxHyperlinkDescription.create[
          name = "DocWidgetRef_widgetReference_"
          labelExpression = "widgetReference"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:widgetReference"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('widgetReference')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('widgetReference')"
              ]
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
        name = "EventTransition_conception_Group"
        domainClass = "equinoxeDialogue.EventTransition"
        controls += EqxHyperlinkDescription.create[
          name = "EventTransition_event_"
          labelExpression = "event"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:event"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('event')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('event')"
              ]
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
        name = "ScreenMapState_conception_Group"
        domainClass = "equinoxeDialogue.ScreenMapState"
        controls += SelectDescription.create[
          name = "ScreenMapState_accessMode_Enum"
          labelExpression = "accessMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:accessMode"
          candidatesExpression = "aql:equinoxeDialogue::EnumScreenDisplayMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('accessMode',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ScreenMapState_screen_"
          labelExpression = "screen"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:screen"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxSetFromTreeView('screen')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('screen')"
              ]
            ]
          ]
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
