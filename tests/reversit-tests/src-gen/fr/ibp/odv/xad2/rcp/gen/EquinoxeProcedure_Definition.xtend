package fr.ibp.odv.xad2.rcp.gen

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.Map
import java.util.concurrent.Callable
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CheckboxWidgetStyle
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.HyperlinkWidgetStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.TextWidgetStyle
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.mypsycho.emf.modit.EModIt

class EquinoxeProcedure_Definition implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeProcedure_Definition".alias(Category.create[
      name = "equinoxeProcedure_Definition"
      groups += GroupDescription.create[
        name = "AccessingProcessState_conception_Group"
        domainClass = "equinoxeProcedure.AccessingProcessState"
        controls += SelectDescription.create[
          name = "AccessingProcessState_habilitationType_Enum"
          labelExpression = "habilitationType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:habilitationType"
          candidatesExpression = "aql:equinoxeProcedure::EHabilitationType.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('habilitationType',newValue)"
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
        name = "EditicState_conception_Group"
        domainClass = "equinoxeProcedure.EditicState"
        controls += ListDescription.create[
          name = "EditicState_documents_"
          labelExpression = "documents"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:documents"
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
                browseExpression = "aql:self.eqxAddFromTreeView('documents',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('documents',selection)"
              ]
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "EditicState_editSubprocess_Enum"
          labelExpression = "editSubprocess"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:editSubprocess"
          candidatesExpression = "aql:equinoxeProcedure::EEditionType.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('editSubprocess',newValue)"
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
        name = "IORuleState_conception_Group"
        domainClass = "equinoxeProcedure.IORuleState"
        controls += TextDescription.create[
          name = "IORuleState_inputRules_Txt"
          labelExpression = "inputRules"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:inputRules"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('inputRules',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "IORuleState_outputRules_Txt"
          labelExpression = "outputRules"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:outputRules"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('outputRules',newValue)"
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
        name = "MessageState_conception_Group"
        domainClass = "equinoxeProcedure.MessageState"
        controls += EqxHyperlinkDescription.create[
          name = "MessageState_inputFormat_"
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
          name = "MessageState_outputFormat_"
          labelExpression = "outputFormat"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:outputFormat"
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
        controls += EqxHyperlinkDescription.create[
          name = "MessageState_messageInterface_"
          labelExpression = "messageInterface"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:messageInterface"
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
                browseExpression = "aql:self.eqxSetFromTreeView('messageInterface')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('messageInterface')"
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
        name = "PafAdapter_conception_Group"
        domainClass = "equinoxeProcedure.PafAdapter"
        controls += CheckboxDescription.create[
          name = "PafAdapter_manageSessionLifecycle_Check"
          labelExpression = "manageSessionLifecycle"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:manageSessionLifecycle"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('manageSessionLifecycle',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "PafAdapter_publishData_Check"
          labelExpression = "publishData"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:publishData"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('publishData',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "PafAdapter_taskChaining_Check"
          labelExpression = "taskChaining"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:taskChaining"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('taskChaining',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "PafAdapter_nextTaskId_Txt"
          labelExpression = "nextTaskId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:nextTaskId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('nextTaskId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "PafAdapter_adapterId_Txt"
          labelExpression = "adapterId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:adapterId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('adapterId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "PafAdapter_parentClass_Txt"
          labelExpression = "parentClass"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:parentClass"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('parentClass',newValue)"
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
        name = "PopixAttribute_conception_Group"
        domainClass = "equinoxeProcedure.PopixAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "PopixAttribute_type_"
          labelExpression = "type"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:type"
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
                browseExpression = "aql:self.eqxSetFromTreeView('type')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('type')"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "PopixAttribute_popixField_Txt"
          labelExpression = "popixField"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:popixField"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('popixField',newValue)"
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
        name = "PopixState_conception_Group"
        domainClass = "equinoxeProcedure.PopixState"
        controls += EqxHyperlinkDescription.create[
          name = "PopixState_popixTransaction_"
          labelExpression = "popixTransaction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:popixTransaction"
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
                browseExpression = "aql:self.eqxSetFromTreeView('popixTransaction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('popixTransaction')"
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
        name = "PopixTransaction_conception_Group"
        domainClass = "equinoxeProcedure.PopixTransaction"
        controls += TextDescription.create[
          name = "PopixTransaction_transactionId_Txt"
          labelExpression = "transactionId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:transactionId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('transactionId',newValue)"
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
        name = "PresentationState_conception_Group"
        domainClass = "equinoxeProcedure.PresentationState"
        controls += EqxHyperlinkDescription.create[
          name = "PresentationState_dialog_"
          labelExpression = "dialog"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dialog"
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
                browseExpression = "aql:self.eqxSetFromTreeView('dialog')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('dialog')"
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
        name = "ProcessComponent_conception_Group"
        domainClass = "equinoxeProcedure.ProcessComponent"
        controls += CheckboxDescription.create[
          name = "ProcessComponent_entryPoint_Check"
          labelExpression = "entryPoint"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:entryPoint"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('entryPoint',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ProcessComponent_callingDynamicProcessComponent_"
          labelExpression = "callingDynamicProcessComponent"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:callingDynamicProcessComponent"
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
                browseExpression = "aql:self.eqxSetFromTreeView('callingDynamicProcessComponent')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('callingDynamicProcessComponent')"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "ProcessComponent_realizePf_Check"
          labelExpression = "realizePf"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:realizePf"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('realizePf',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += TextDescription.create[
          name = "ProcessComponent_dsName_Txt"
          labelExpression = "dsName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dsName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dsName',newValue)"
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
        name = "ProcessInterface_conception_Group"
        domainClass = "equinoxeProcedure.ProcessInterface"
        controls += EqxHyperlinkDescription.create[
          name = "ProcessInterface_inputFormat_"
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
          name = "ProcessInterface_outputFormat_"
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
        name = "ProcessOperationState_conception_Group"
        domainClass = "equinoxeProcedure.ProcessOperationState"
        controls += EqxHyperlinkDescription.create[
          name = "ProcessOperationState_processOperation_"
          labelExpression = "processOperation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:processOperation"
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
                browseExpression = "aql:self.eqxSetFromTreeView('processOperation')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('processOperation')"
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
        name = "ProcessScreenState_conception_Group"
        domainClass = "equinoxeProcedure.ProcessScreenState"
        controls += EqxHyperlinkDescription.create[
          name = "ProcessScreenState_screen_"
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
      groups += GroupDescription.create[
        name = "ProcessTransition_conception_Group"
        domainClass = "equinoxeProcedure.ProcessTransition"
        controls += EqxHyperlinkDescription.create[
          name = "ProcessTransition_exitAction_"
          labelExpression = "exitAction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:exitAction"
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
                browseExpression = "aql:self.eqxSetFromTreeView('exitAction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('exitAction')"
              ]
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "ProcessTransition_errors_"
          labelExpression = "errors"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:errors"
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
                browseExpression = "aql:self.eqxAddFromTreeView('errors',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('errors',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('errors',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('errors',selection)"
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
        name = "ScreenDisplayModeState_conception_Group"
        domainClass = "equinoxeProcedure.ScreenDisplayModeState"
        controls += SelectDescription.create[
          name = "ScreenDisplayModeState_accessMode_Enum"
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
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "SubProcessState_conception_Group"
        domainClass = "equinoxeProcedure.SubProcessState"
        controls += EqxHyperlinkDescription.create[
          name = "SubProcessState_process_"
          labelExpression = "process"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:process"
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
                browseExpression = "aql:self.eqxSetFromTreeView('process')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('process')"
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
