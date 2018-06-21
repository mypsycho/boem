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

class EquinoxeCore_Definition implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeCore_Definition".alias(Category.create[
      name = "equinoxeCore_Definition"
      groups += GroupDescription.create[
        name = "AbstractConstrainedMethod_conception_Group"
        domainClass = "equinoxeCore.AbstractConstrainedMethod"
        controls += TextDescription.create[
          name = "AbstractConstrainedMethod_precondition_Txt"
          labelExpression = "precondition"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:precondition"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('precondition',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractConstrainedMethod_postcondition_Txt"
          labelExpression = "postcondition"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:postcondition"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('postcondition',newValue)"
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
        name = "AbstractError_conception_Group"
        domainClass = "equinoxeCore.AbstractError"
        controls += TextDescription.create[
          name = "AbstractError_code_Txt"
          labelExpression = "code"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:code"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('code',newValue)"
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
        name = "AbstractErrorRaisingMethod_conception_Group"
        domainClass = "equinoxeCore.AbstractErrorRaisingMethod"
        controls += ListDescription.create[
          name = "AbstractErrorRaisingMethod_possibleErrors_"
          labelExpression = "possibleErrors"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:possibleErrors"
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
                browseExpression = "aql:self.eqxAddFromTreeView('possibleErrors',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('possibleErrors',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('possibleErrors',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('possibleErrors',selection)"
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
        name = "AbstractExtendedReturningMethod_conception_Group"
        domainClass = "equinoxeCore.AbstractExtendedReturningMethod"
        controls += TextDescription.create[
          name = "AbstractExtendedReturningMethod_returnTypeDocumentation_Txt"
          labelExpression = "returnTypeDocumentation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:returnTypeDocumentation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('returnTypeDocumentation',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AbstractExtendedReturningMethod_returnType_"
          labelExpression = "returnType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:returnType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('returnType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('returnType')"
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
        name = "AbstractReturningMethod_conception_Group"
        domainClass = "equinoxeCore.AbstractReturningMethod"
        controls += TextDescription.create[
          name = "AbstractReturningMethod_returnTypeDocumentation_Txt"
          labelExpression = "returnTypeDocumentation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:returnTypeDocumentation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('returnTypeDocumentation',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AbstractReturningMethod_returnType_"
          labelExpression = "returnType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:returnType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('returnType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('returnType')"
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
        name = "AbstractRootElement_conception_Group"
        domainClass = "equinoxeCore.AbstractRootElement"
        controls += TextDescription.create[
          name = "AbstractRootElement_lgaName_Txt"
          labelExpression = "lgaName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:lgaName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('lgaName',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractRootElement_quartier_Txt"
          labelExpression = "quartier"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:quartier"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('quartier',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractRootElement_standardGeneration_Check"
          labelExpression = "standardGeneration"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:standardGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('standardGeneration',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractRootElement_errorGeneration_Check"
          labelExpression = "errorGeneration"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:errorGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('errorGeneration',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += ListDescription.create[
          name = "AbstractRootElement_dependencies_"
          labelExpression = "dependencies"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dependencies"
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
                browseExpression = "aql:self.eqxAddFromTreeView('dependencies',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('dependencies',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('dependencies',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('dependencies',selection)"
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
        name = "BasicType_conception_Group"
        domainClass = "equinoxeCore.BasicType"
        controls += CheckboxDescription.create[
          name = "BasicType_wsCompatible_Check"
          labelExpression = "wsCompatible"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:wsCompatible"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('wsCompatible',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicType_momTypeClass_Txt"
          labelExpression = "momTypeClass"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momTypeClass"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momTypeClass',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicType_momTypeArguments_Txt"
          labelExpression = "momTypeArguments"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momTypeArguments"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momTypeArguments',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicType_cloneable_Check"
          labelExpression = "cloneable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cloneable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cloneable',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicType_javaClassName_Txt"
          labelExpression = "javaClassName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:javaClassName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('javaClassName',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BasicType_superType_"
          labelExpression = "superType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:superType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('superType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('superType')"
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
        name = "BasicTypeFAttribute_conception_Group"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeFAttribute_type_"
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
          name = "BasicTypeFAttribute_referenceDma_Txt"
          labelExpression = "referenceDma"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDma"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDma',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_table_Txt"
          labelExpression = "table"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:table"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('table',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_colonne_Txt"
          labelExpression = "colonne"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:colonne"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('colonne',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicTypeFAttribute_calcule_Check"
          labelExpression = "calcule"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:calcule"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('calcule',newValue)"
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
        name = "Cbo_conception_Group"
        domainClass = "equinoxeCore.Cbo"
        controls += TextDescription.create[
          name = "Cbo_referenceDmc_Txt"
          labelExpression = "referenceDmc"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDmc"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDmc',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "Cbo_javaClassName_Txt"
          labelExpression = "javaClassName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:javaClassName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('javaClassName',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += CheckboxDescription.create[
          name = "Cbo_useCboFactory_Check"
          labelExpression = "useCboFactory"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:useCboFactory"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useCboFactory',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "Cbo_cloneable_Check"
          labelExpression = "cloneable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cloneable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cloneable',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Cbo_typeMomParDefaut_"
          labelExpression = "typeMomParDefaut"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:typeMomParDefaut"
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
                browseExpression = "aql:self.eqxSetFromTreeView('typeMomParDefaut')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('typeMomParDefaut')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Cbo_superType_"
          labelExpression = "superType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:superType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('superType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('superType')"
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
        name = "CboAttribute_conception_Group"
        domainClass = "equinoxeCore.CboAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "CboAttribute_type_"
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
          name = "CboAttribute_referenceDma_Txt"
          labelExpression = "referenceDma"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDma"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDma',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "CboAttribute_table_Txt"
          labelExpression = "table"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:table"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('table',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "CboAttribute_colonne_Txt"
          labelExpression = "colonne"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:colonne"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('colonne',newValue)"
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
        name = "CbomomType_conception_Group"
        domainClass = "equinoxeCore.CbomomType"
        controls += TextDescription.create[
          name = "CbomomType_arguments_Txt"
          labelExpression = "arguments"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:arguments"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('arguments',newValue)"
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
        name = "ComplexType_conception_Group"
        domainClass = "equinoxeCore.ComplexType"
        controls += EqxHyperlinkDescription.create[
          name = "ComplexType_superType_"
          labelExpression = "superType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:superType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('superType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('superType')"
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
        name = "Converter_conception_Group"
        domainClass = "equinoxeCore.Converter"
        controls += EqxHyperlinkDescription.create[
          name = "Converter_patronParDefaut_"
          labelExpression = "patronParDefaut"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:patronParDefaut"
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
                browseExpression = "aql:self.eqxSetFromTreeView('patronParDefaut')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('patronParDefaut')"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "Converter_complexConverter_Check"
          labelExpression = "complexConverter"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:complexConverter"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('complexConverter',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "Converter_constants_Txt"
          labelExpression = "constants"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:constants"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('constants',newValue)"
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
        name = "CtAttribute_conception_Group"
        domainClass = "equinoxeCore.CtAttribute"
        controls += SelectDescription.create[
          name = "CtAttribute_visibility_Enum"
          labelExpression = "visibility"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:visibility"
          candidatesExpression = "aql:equinoxeCore::EVisibilityFeature.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('visibility',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_derive_Check"
          labelExpression = "derive"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:derive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('derive',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_statique_Check"
          labelExpression = "statique"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:statique"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('statique',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_final_Check"
          labelExpression = "final"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:final"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('final',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtAttribute_type_"
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
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtClass_conception_Group"
        domainClass = "equinoxeCore.CtClass"
        controls += CheckboxDescription.create[
          name = "CtClass_generable_Check"
          labelExpression = "generable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:generable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('generable',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtClass_abstraite_Check"
          labelExpression = "abstraite"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:abstraite"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('abstraite',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtClass_final_Check"
          labelExpression = "final"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:final"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('final',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "CtClass_implementeLesInterfaces_"
          labelExpression = "implementeLesInterfaces"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:implementeLesInterfaces"
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
                browseExpression = "aql:self.eqxAddFromTreeView('implementeLesInterfaces',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('implementeLesInterfaces',selection)"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtClass_superType_"
          labelExpression = "superType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:superType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('superType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('superType')"
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
        name = "CtInterface_conception_Group"
        domainClass = "equinoxeCore.CtInterface"
        controls += CheckboxDescription.create[
          name = "CtInterface_generable_Check"
          labelExpression = "generable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:generable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('generable',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtInterface_superType_"
          labelExpression = "superType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:superType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('superType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('superType')"
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
        name = "CtOperation_conception_Group"
        domainClass = "equinoxeCore.CtOperation"
        controls += SelectDescription.create[
          name = "CtOperation_visibility_Enum"
          labelExpression = "visibility"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:visibility"
          candidatesExpression = "aql:equinoxeCore::EVisibilityFeature.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('visibility',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtOperation_abstraite_Check"
          labelExpression = "abstraite"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:abstraite"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('abstraite',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtOperation_static_Check"
          labelExpression = "static"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:static"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('static',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtOperation_synchronized_Check"
          labelExpression = "synchronized"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:synchronized"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('synchronized',newValue)"
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
        name = "DirectAccessMethod_conception_Group"
        domainClass = "equinoxeCore.DirectAccessMethod"
        controls += SelectDescription.create[
          name = "DirectAccessMethod_callType_Enum"
          labelExpression = "callType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:callType"
          candidatesExpression = "aql:equinoxeCore::EnumDirectAccessTypes.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('callType',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DirectAccessMethod_conversionMode_Enum"
          labelExpression = "conversionMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionMode"
          candidatesExpression = "aql:equinoxeCore::EConversionMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionMode',newValue)"
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
        name = "DocumentableElement_conception_Group"
        domainClass = "equinoxeCore.DocumentableElement"
        controls += TextDescription.create[
          name = "DocumentableElement_documentation_Txt"
          labelExpression = "documentation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:documentation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('documentation',newValue)"
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
        name = "DynamicAttribute_conception_Group"
        domainClass = "equinoxeCore.DynamicAttribute"
        controls += SelectDescription.create[
          name = "DynamicAttribute_attributeType_Enum"
          labelExpression = "attributeType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:attributeType"
          candidatesExpression = "aql:equinoxeCore::EDynamicAttributeType.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('attributeType',newValue)"
            ]
          ]
          style = SelectWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += SelectDescription.create[
          name = "DynamicAttribute_staticValueType_Enum"
          labelExpression = "staticValueType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:staticValueType"
          candidatesExpression = "aql:equinoxeCore::EDynamicAttributeValueType.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('staticValueType',newValue)"
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
        name = "Enumeration_conception_Group"
        domainClass = "equinoxeCore.Enumeration"
        controls += CheckboxDescription.create[
          name = "Enumeration_extensible_Check"
          labelExpression = "extensible"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:extensible"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('extensible',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Enumeration_superType_"
          labelExpression = "superType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:superType"
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
                browseExpression = "aql:self.eqxSetFromTreeView('superType')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('superType')"
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
        name = "EnumerationValue_conception_Group"
        domainClass = "equinoxeCore.EnumerationValue"
        controls += TextDescription.create[
          name = "EnumerationValue_value_Txt"
          labelExpression = "value"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:value"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('value',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "EnumerationValue_description_Txt"
          labelExpression = "description"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:description"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('description',newValue)"
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
        name = "FeClass_conception_Group"
        domainClass = "equinoxeCore.FeClass"
        controls += CheckboxDescription.create[
          name = "FeClass_withPropagation_Check"
          labelExpression = "withPropagation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:withPropagation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withPropagation',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "FeClass_convertedError_"
          labelExpression = "convertedError"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:convertedError"
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
                browseExpression = "aql:self.eqxAddFromTreeView('convertedError',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('convertedError',selection)"
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
        name = "Format_conception_Group"
        domainClass = "equinoxeCore.Format"
        controls += TextDescription.create[
          name = "Format_referenceDmc_Txt"
          labelExpression = "referenceDmc"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDmc"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDmc',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "Format_isBdt_Check"
          labelExpression = "isBdt"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isBdt"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isBdt',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "Format_implementeLesInterfaces_"
          labelExpression = "implementeLesInterfaces"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:implementeLesInterfaces"
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
                browseExpression = "aql:self.eqxAddFromTreeView('implementeLesInterfaces',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('implementeLesInterfaces',selection)"
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
        name = "FormatFAttribute_conception_Group"
        domainClass = "equinoxeCore.FormatFAttribute"
        controls += TextDescription.create[
          name = "FormatFAttribute_colonne_Txt"
          labelExpression = "colonne"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:colonne"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('colonne',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "FormatFAttribute_referenceDmr_Txt"
          labelExpression = "referenceDmr"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDmr"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDmr',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "FormatFAttribute_table_Txt"
          labelExpression = "table"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:table"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('table',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "FormatFAttribute_type_"
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
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HostCall_conception_Group"
        domainClass = "equinoxeCore.HostCall"
        controls += TextDescription.create[
          name = "HostCall_transactionId_Txt"
          labelExpression = "transactionId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:transactionId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('transactionId',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "HostCall_calltype_Enum"
          labelExpression = "calltype"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:calltype"
          candidatesExpression = "aql:equinoxeCore::EnumHostCallTypes.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('calltype',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "HostCall_conversionMode_Enum"
          labelExpression = "conversionMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionMode"
          candidatesExpression = "aql:equinoxeCore::EConversionMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionMode',newValue)"
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
        name = "HwFormat_conception_Group"
        domainClass = "equinoxeCore.HwFormat"
        controls += SelectDescription.create[
          name = "HwFormat_direction_Enum"
          labelExpression = "direction"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:direction"
          candidatesExpression = "aql:equinoxeCore::EnumDirection.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('direction',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "HwFormat_fepi_Check"
          labelExpression = "fepi"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:fepi"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('fepi',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormat_version_Txt"
          labelExpression = "version"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:version"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('version',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormat_fepiSubProgId_Txt"
          labelExpression = "fepiSubProgId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:fepiSubProgId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('fepiSubProgId',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "HwFormat_conversionMode_Enum"
          labelExpression = "conversionMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionMode"
          candidatesExpression = "aql:equinoxeCore::EConversionMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionMode',newValue)"
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
        name = "HwFormatAttribute_conception_Group"
        domainClass = "equinoxeCore.HwFormatAttribute"
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostName_Txt"
          labelExpression = "hostName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:hostName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostName',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "HwFormatAttribute_hostType_Enum"
          labelExpression = "hostType"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:hostType"
          candidatesExpression = "aql:equinoxeCore::EnumHostFieldType.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostType',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_libellePacbase_Txt"
          labelExpression = "libellePacbase"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:libellePacbase"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('libellePacbase',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostLength_Txt"
          labelExpression = "hostLength"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:hostLength"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostLength',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostFloatLength_Txt"
          labelExpression = "hostFloatLength"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:hostFloatLength"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostFloatLength',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostSign_Txt"
          labelExpression = "hostSign"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:hostSign"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostSign',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostFormat_Txt"
          labelExpression = "hostFormat"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:hostFormat"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostFormat',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "HwFormatAttribute_technical_Check"
          labelExpression = "technical"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:technical"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('technical',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "HwFormatAttribute_type_"
          labelExpression = "type"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:type"
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
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "IbpNamedElementDeprecable_conception_Group"
        domainClass = "equinoxeCore.IbpNamedElementDeprecable"
        controls += CheckboxDescription.create[
          name = "IbpNamedElementDeprecable_deprecated_Check"
          labelExpression = "deprecated"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:deprecated"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deprecated',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "IbpNamedElementDeprecable_commentsDeprecated_Txt"
          labelExpression = "commentsDeprecated"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:commentsDeprecated"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('commentsDeprecated',newValue)"
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
        name = "MethodParameter_conception_Group"
        domainClass = "equinoxeCore.MethodParameter"
        controls += EqxHyperlinkDescription.create[
          name = "MethodParameter_type_"
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
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MomAttribute_conception_Group"
        domainClass = "equinoxeCore.MomAttribute"
        controls += TextDescription.create[
          name = "MomAttribute_cobolName_Txt"
          labelExpression = "cobolName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cobolName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolName',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "MomAttribute_cobolFormat_Txt"
          labelExpression = "cobolFormat"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cobolFormat"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolFormat',newValue)"
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
        name = "MomTypedElement_conception_Group"
        domainClass = "equinoxeCore.MomTypedElement"
        controls += EqxHyperlinkDescription.create[
          name = "MomTypedElement_typeMom_"
          labelExpression = "typeMom"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:typeMom"
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
                browseExpression = "aql:self.eqxSetFromTreeView('typeMom')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('typeMom')"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "MomTypedElement_momTypeLg_Txt"
          labelExpression = "momTypeLg"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momTypeLg"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momTypeLg',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "MomTypedElement_conversionMode_Enum"
          labelExpression = "conversionMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionMode"
          candidatesExpression = "aql:equinoxeCore::EConversionMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionMode',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "MomTypedElement_useDefaultsUnused_Check"
          labelExpression = "useDefaultsUnused"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:useDefaultsUnused"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useDefaultsUnused',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "MomTypedElement_cobolNames_Txt"
          labelExpression = "cobolNames"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cobolNames"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolNames',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "MomTypedElement_cobolFormats_Txt"
          labelExpression = "cobolFormats"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cobolFormats"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolFormats',newValue)"
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
        name = "MultiplicityElement_conception_Group"
        domainClass = "equinoxeCore.MultiplicityElement"
        controls += SelectDescription.create[
          name = "MultiplicityElement_multiplicite_Enum"
          labelExpression = "multiplicite"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:multiplicite"
          candidatesExpression = "aql:equinoxeCore::EMultiplicity.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('multiplicite',newValue)"
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
        name = "NamedElement_conception_Group"
        domainClass = "equinoxeCore.NamedElement"
        controls += TextDescription.create[
          name = "NamedElement_name_Txt"
          labelExpression = "name"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:name"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('name',newValue)"
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
        name = "ParameterElement_conception_Group"
        domainClass = "equinoxeCore.ParameterElement"
        controls += TextDescription.create[
          name = "ParameterElement_javaInterface_Txt"
          labelExpression = "javaInterface"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:javaInterface"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('javaInterface',newValue)"
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
        name = "TableHwFormat_conception_Group"
        domainClass = "equinoxeCore.TableHwFormat"
        controls += CustomDescription.create[
          name = "TableHwFormat_multiplicite_Eqx_Spinner"
          labelExpression = "multiplicite"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:multiplicite"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('multiplicite',newValue)"
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypeCollection_conception_Group"
        domainClass = "equinoxeCore.TypeCollection"
        controls += EqxHyperlinkDescription.create[
          name = "TypeCollection_type_"
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
        controls += CustomDescription.create[
          name = "TypeCollection_multiplicityMomMax_Eqx_Spinner"
          labelExpression = "multiplicityMomMax"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:multiplicityMomMax"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('multiplicityMomMax',newValue)"
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypesGroup_conception_Group"
        domainClass = "equinoxeCore.TypesGroup"
        controls += TextDescription.create[
          name = "TypesGroup_javaPackageName_Txt"
          labelExpression = "javaPackageName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:javaPackageName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('javaPackageName',newValue)"
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
        name = "WsError_conception_Group"
        domainClass = "equinoxeCore.WsError"
        controls += ListDescription.create[
          name = "WsError_erreursInterceptees_"
          labelExpression = "erreursInterceptees"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:erreursInterceptees"
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
                browseExpression = "aql:self.eqxAddFromTreeView('erreursInterceptees',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('erreursInterceptees',selection)"
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
        name = "WsOperation_conception_Group"
        domainClass = "equinoxeCore.WsOperation"
        controls += ListDescription.create[
          name = "WsOperation_possibleErrors_"
          labelExpression = "possibleErrors"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:possibleErrors"
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
                browseExpression = "aql:self.eqxAddFromTreeView('possibleErrors',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('possibleErrors',selection)"
              ]
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "WsOperation_transactionalMode_Enum"
          labelExpression = "transactionalMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:transactionalMode"
          candidatesExpression = "aql:equinoxeCore::ETransactionalMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('transactionalMode',newValue)"
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
