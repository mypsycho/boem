package fr.ibp.odv.xad2.rcp

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.mypsycho.emf.modit.EModIt

class equinoxeProcedure_Reference {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "equinoxeProcedure_Reference".alias(Category.create[
      name = "equinoxeProcedure_Reference"
      pages += PageDescription.create[
        name = "EditicState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.EditicState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::EditicState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("EditicState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "EditicState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.EditicState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::EditicState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("EditicState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MessageInterface_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.MessageInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::MessageInterface)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("MessageInterface_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MessageInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.MessageInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::MessageInterface)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("MessageInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MessageState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.MessageState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::MessageState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("MessageState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MessageState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.MessageState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::MessageState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("MessageState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "OnlineHelpPresentationState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.OnlineHelpPresentationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::OnlineHelpPresentationState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("OnlineHelpPresentationState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "OnlineHelpPresentationState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.OnlineHelpPresentationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::OnlineHelpPresentationState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("OnlineHelpPresentationState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PafAdapter_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.PafAdapter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PafAdapter)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PafAdapter_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PafAdapter_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.PafAdapter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PafAdapter)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PafAdapter_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PafAdapter_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeProcedure.PafAdapter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PafAdapter)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PafAdapter_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.PopixAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixAttribute)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PopixAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.PopixAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixAttribute)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PopixAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.PopixState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PopixState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.PopixState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PopixState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixTransaction_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.PopixTransaction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixTransaction)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PopixTransaction_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixTransaction_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.PopixTransaction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixTransaction)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PopixTransaction_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PresentationState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.PresentationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PresentationState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PresentationState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "PresentationState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.PresentationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PresentationState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("PresentationState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessComponent_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ProcessComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessComponent)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessComponent_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessComponent_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessComponent)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessComponent_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessComponent_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeProcedure.ProcessComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessComponent)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessComponent_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessComponentFormats_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessComponentFormats"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessComponentFormats)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessComponentFormats_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessHandler_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ProcessHandler"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessHandler)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessHandler_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessHandler_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessHandler"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessHandler)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessHandler_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessInterface_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ProcessInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessInterface)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessInterface_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessInterface)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessInterfaceGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessInterfaceGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessOperation_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ProcessOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessOperation)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessOperation_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessOperation_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessOperation)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessOperation_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessOperationState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ProcessOperationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessOperationState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessOperationState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessOperationState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessOperationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessOperationState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessOperationState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessRealization_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessRealization)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessRealization_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessScreenState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ProcessScreenState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessScreenState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessScreenState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessScreenState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ProcessScreenState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessScreenState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessScreenState_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessTransition_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ProcessTransition"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessTransition)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ProcessTransition_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ScreenPackage_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.ScreenPackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ScreenPackage)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ScreenPackage_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ScreenPackage_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.ScreenPackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ScreenPackage)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("ScreenPackage_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "SubProcessState_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeProcedure.SubProcessState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::SubProcessState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("SubProcessState_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "SubProcessState_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeProcedure.SubProcessState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::SubProcessState)"
        groups += GroupDescription.ref("equinoxeProcedure_Reference")[ (it as Category).groups.at("SubProcessState_Documentation_Reference_Group") ]
      ]
      groups += GroupDescription.create[
        name = "EditicState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.EditicState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "EditicState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "EditicState_ReferenceTo_EditicState_documents_Ref"
          extends = ListDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("EditicState_Conception_Group").controls.at("EditicState_documents_Ref") as ListDescription) ]
        ]
        controls += SelectDescription.create[
          name = "EditicState_ReferenceTo_EditicState_editSubprocess_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("EditicState_Conception_Group").controls.at("EditicState_editSubprocess_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "EditicState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.EditicState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "EditicState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MessageInterface_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.MessageInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "MessageInterface_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MessageInterface_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.MessageInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MessageInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MessageState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.MessageState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "MessageState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "MessageState_ReferenceTo_AccessingProcessState_habilitationType_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("AccessingProcessState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "MessageState_ReferenceTo_MessageState_inputFormat_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("MessageState_Conception_Group").controls.at("MessageState_inputFormat_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "MessageState_ReferenceTo_MessageState_outputFormat_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("MessageState_Conception_Group").controls.at("MessageState_outputFormat_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "MessageState_ReferenceTo_MessageState_messageInterface_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("MessageState_Conception_Group").controls.at("MessageState_messageInterface_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MessageState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.MessageState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MessageState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "OnlineHelpPresentationState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.OnlineHelpPresentationState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "OnlineHelpPresentationState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "OnlineHelpPresentationState_ReferenceTo_AccessingProcessState_habilitationType_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("AccessingProcessState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "OnlineHelpPresentationState_ReferenceTo_IORuleState_inputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_inputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "OnlineHelpPresentationState_ReferenceTo_IORuleState_outputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_outputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "OnlineHelpPresentationState_ReferenceTo_ScreenDisplayModeState_accessMode_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ScreenDisplayModeState_Conception_Group").controls.head as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "OnlineHelpPresentationState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.OnlineHelpPresentationState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "OnlineHelpPresentationState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PafAdapter_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.PafAdapter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "PafAdapter_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "PafAdapter_ReferenceTo_PafAdapter_manageSessionLifecycle_Check"
          extends = CheckboxDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PafAdapter_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PafAdapter_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.PafAdapter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "PafAdapter_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PafAdapter_Generation_Reference_Group"
        domainClass = "equinoxeProcedure.PafAdapter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "PafAdapter_ReferenceTo_PafAdapter_publishData_Check"
          extends = CheckboxDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PafAdapter_Generation_Group").controls.at("PafAdapter_publishData_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "PafAdapter_ReferenceTo_PafAdapter_taskChaining_Check"
          extends = CheckboxDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PafAdapter_Generation_Group").controls.at("PafAdapter_taskChaining_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "PafAdapter_ReferenceTo_PafAdapter_adapterId_Txt"
          extends = TextDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PafAdapter_Generation_Group").controls.at("PafAdapter_adapterId_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "PafAdapter_ReferenceTo_PafAdapter_nextTaskId_Txt"
          extends = TextDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PafAdapter_Generation_Group").controls.at("PafAdapter_nextTaskId_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "PafAdapter_ReferenceTo_PafAdapter_parentClass_Txt"
          extends = TextDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PafAdapter_Generation_Group").controls.at("PafAdapter_parentClass_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PopixAttribute_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.PopixAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "PopixAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "PopixAttribute_ReferenceTo_PopixAttribute_popixField_Txt"
          extends = TextDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PopixAttribute_Conception_Group").controls.at("PopixAttribute_popixField_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "PopixAttribute_ReferenceTo_PopixAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PopixAttribute_Conception_Group").controls.at("PopixAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PopixAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.PopixAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "PopixAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PopixState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.PopixState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "PopixState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "PopixState_ReferenceTo_AccessingProcessState_habilitationType_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("AccessingProcessState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "PopixState_ReferenceTo_IORuleState_inputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_inputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "PopixState_ReferenceTo_IORuleState_outputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_outputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "PopixState_ReferenceTo_PopixState_popixTransaction_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PopixState_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PopixState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.PopixState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "PopixState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PopixTransaction_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.PopixTransaction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "PopixTransaction_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "PopixTransaction_ReferenceTo_PopixTransaction_transactionId_Txt"
          extends = TextDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PopixTransaction_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PopixTransaction_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.PopixTransaction"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "PopixTransaction_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PresentationState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.PresentationState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "PresentationState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "PresentationState_ReferenceTo_AccessingProcessState_habilitationType_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("AccessingProcessState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "PresentationState_ReferenceTo_IORuleState_inputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_inputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "PresentationState_ReferenceTo_IORuleState_outputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_outputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "PresentationState_ReferenceTo_ScreenDisplayModeState_accessMode_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ScreenDisplayModeState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "PresentationState_ReferenceTo_PresentationState_dialog_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("PresentationState_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "PresentationState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.PresentationState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "PresentationState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessComponent_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ProcessComponent_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractRootElement_quartier_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_quartier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractRootElement_lgaName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_lgaName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractRootElement_dependencies_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_dependencies_Ref") as ListDescription) ]
        ]
        controls += TextDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractComponent_codeObjetMetier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractComponent_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractUIComponent_codeAction_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIComponent_Conception_Group").controls.at("AbstractUIComponent_codeAction_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractUIComponent_numeroSequentiel_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIComponent_Conception_Group").controls.at("AbstractUIComponent_numeroSequentiel_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractUIComponent_isDynamic_Check"
          extends = CheckboxDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIComponent_Conception_Group").controls.at("AbstractUIComponent_isDynamic_Check") as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ProcessComponent_ReferenceTo_ProcessComponent_callingDynamicProcessComponent_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessComponent_Conception_Group").controls.at("ProcessComponent_callingDynamicProcessComponent_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ProcessComponent_ReferenceTo_ProcessComponent_entryPoint_Check"
          extends = CheckboxDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessComponent_Conception_Group").controls.at("ProcessComponent_entryPoint_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ProcessComponent_ReferenceTo_ProcessComponent_realizePf_Check"
          extends = CheckboxDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessComponent_Conception_Group").controls.at("ProcessComponent_realizePf_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessComponent_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessComponent_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessComponent_Generation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessComponent"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractRootElement_standardGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_standardGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ProcessComponent_ReferenceTo_AbstractRootElement_errorGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_errorGeneration_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ProcessComponent_ReferenceTo_ProcessComponent_dsName_Txt"
          extends = TextDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessComponent_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessComponentFormats_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessComponentFormats"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessComponentFormats_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessHandler_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessHandler"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessHandler_ReferenceTo_AbstractStateMachine_initialization_TxtArea"
          extends = TextAreaDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractStateMachine_Conception_Group").controls.at("AbstractStateMachine_initialization_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ProcessHandler_ReferenceTo_AbstractStateMachine_finalization_TxtArea"
          extends = TextAreaDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractStateMachine_Conception_Group").controls.at("AbstractStateMachine_finalization_TxtArea") as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessHandler_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessHandler"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessHandler_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessInterface_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "ProcessInterface_ReferenceTo_ProcessInterface_inputFormat_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessInterface_Conception_Group").controls.at("ProcessInterface_inputFormat_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ProcessInterface_ReferenceTo_ProcessInterface_outputFormat_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessInterface_Conception_Group").controls.at("ProcessInterface_outputFormat_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessInterface_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessInterfaceGroup_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessInterfaceGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessOperation_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ProcessOperation_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessOperation_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessOperation_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessOperationState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessOperationState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ProcessOperationState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ProcessOperationState_ReferenceTo_AccessingProcessState_habilitationType_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("AccessingProcessState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ProcessOperationState_ReferenceTo_ProcessOperationState_processOperation_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessOperationState_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessOperationState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessOperationState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessOperationState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessRealization_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessRealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessRealization_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessScreenState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessScreenState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ProcessScreenState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ProcessScreenState_ReferenceTo_AccessingProcessState_habilitationType_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("AccessingProcessState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ProcessScreenState_ReferenceTo_IORuleState_inputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_inputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ProcessScreenState_ReferenceTo_IORuleState_outputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_outputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ProcessScreenState_ReferenceTo_ScreenDisplayModeState_accessMode_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ScreenDisplayModeState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ProcessScreenState_ReferenceTo_ProcessScreenState_screen_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessScreenState_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessScreenState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessScreenState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ProcessScreenState_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ProcessTransition_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ProcessTransition"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "ProcessTransition_ReferenceTo_EventTransition_event_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("EventTransition_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ProcessTransition_ReferenceTo_AbstractTransition_target_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractTransition_Conception_Group").controls.at("AbstractTransition_target_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ProcessTransition_ReferenceTo_AbstractTransition_condition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractTransition_Conception_Group").controls.at("AbstractTransition_condition_TxtArea") as TextAreaDescription) ]
        ]
        controls += ListDescription.create[
          name = "ProcessTransition_ReferenceTo_ProcessTransition_errors_Ref"
          extends = ListDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessTransition_Conception_Group").controls.at("ProcessTransition_errors_Ref") as ListDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ProcessTransition_ReferenceTo_ProcessTransition_exitAction_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("ProcessTransition_Conception_Group").controls.at("ProcessTransition_exitAction_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ScreenPackage_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.ScreenPackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "ScreenPackage_ReferenceTo_AbstractUIRealization_media_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_media_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ScreenPackage_ReferenceTo_AbstractUIRealization_canal_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_canal_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "ScreenPackage_ReferenceTo_AbstractUIRealization_bank_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_bank_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ScreenPackage_ReferenceTo_AbstractUIRealization_lang_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_lang_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ScreenPackage_ReferenceTo_AbstractUIRealization_country_Enum"
          extends = SelectDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_country_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "ScreenPackage_ReferenceTo_AbstractUIRealization_moreSelectors_Txt"
          extends = TextDescription.ref("equinoxeDialogue_Definition")[ ((it as Category).groups.at("AbstractUIRealization_Conception_Group").controls.at("AbstractUIRealization_moreSelectors_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ScreenPackage_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.ScreenPackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ScreenPackage_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "SubProcessState_Conception_Reference_Group"
        domainClass = "equinoxeProcedure.SubProcessState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "SubProcessState_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "SubProcessState_ReferenceTo_AccessingProcessState_habilitationType_Enum"
          extends = SelectDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("AccessingProcessState_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "SubProcessState_ReferenceTo_IORuleState_inputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_inputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "SubProcessState_ReferenceTo_IORuleState_outputRules_TxtArea"
          extends = TextAreaDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("IORuleState_Conception_Group").controls.at("IORuleState_outputRules_TxtArea") as TextAreaDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "SubProcessState_ReferenceTo_SubProcessState_process_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeProcedure_Definition")[ ((it as Category).groups.at("SubProcessState_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "SubProcessState_Documentation_Reference_Group"
        domainClass = "equinoxeProcedure.SubProcessState"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "SubProcessState_ReferenceTo_DocumentableElement_documentation_TxtArea"
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
