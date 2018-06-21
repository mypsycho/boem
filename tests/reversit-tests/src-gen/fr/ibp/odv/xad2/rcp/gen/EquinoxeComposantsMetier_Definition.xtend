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
import org.eclipse.sirius.properties.CustomWidgetStyle
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

class EquinoxeComposantsMetier_Definition implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeComposantsMetier_Definition".alias(Category.create[
      name = "equinoxeComposantsMetier_Definition"
      groups += GroupDescription.create[
        name = "AbstractBoAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBoAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractBoAttribute_type_"
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
          name = "AbstractBoAttribute_referenceDma_Txt"
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
          name = "AbstractBoAttribute_table_Txt"
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
          name = "AbstractBoAttribute_colonne_Txt"
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
          name = "AbstractBoAttribute_jdbcRowName_Txt"
          labelExpression = "jdbcRowName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:jdbcRowName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('jdbcRowName',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractBoAttribute_visibility_Enum"
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
          style = SelectWidgetStyle.create[
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
        name = "AbstractBoViewAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBoViewAttribute"
        controls += TextDescription.create[
          name = "AbstractBoViewAttribute_documentationReference_Txt"
          labelExpression = "documentationReference"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:documentationReference"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('documentationReference',newValue)"
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
        name = "AbstractBusinessComponent_conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessComponent"
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_legacyEjb_Check"
          labelExpression = "legacyEjb"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:legacyEjb"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('legacyEjb',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_momGeneration_Check"
          labelExpression = "momGeneration"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momGeneration',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_jdbcGeneration_Check"
          labelExpression = "jdbcGeneration"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:jdbcGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('jdbcGeneration',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_sqljGeneration_Check"
          labelExpression = "sqljGeneration"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sqljGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sqljGeneration',newValue)"
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
        name = "AbstractBusinessComponentInterface_conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessComponentInterface"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractBusinessComponentInterface_superType_"
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
        name = "AbstractBusinessComponentRealization_conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessComponentRealization"
        controls += ListDescription.create[
          name = "AbstractBusinessComponentRealization_implementedInterfaces_"
          labelExpression = "implementedInterfaces"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:implementedInterfaces"
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
                browseExpression = "aql:self.eqxAddFromTreeView('implementedInterfaces',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('implementedInterfaces',selection)"
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
        name = "AbstractBusinessObject_conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessObject"
        controls += ListDescription.create[
          name = "AbstractBusinessObject_erreursLeveesParLInvariant_"
          labelExpression = "erreursLeveesParLInvariant"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:erreursLeveesParLInvariant"
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
                browseExpression = "aql:self.eqxAddFromTreeView('erreursLeveesParLInvariant',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('erreursLeveesParLInvariant',selection)"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractBusinessObject_referenceDmc_Txt"
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
          name = "AbstractBusinessObject_abstraite_Check"
          labelExpression = "abstraite"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:abstraite"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('abstraite',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractBusinessObject_checkValidity_Txt"
          labelExpression = "checkValidity"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:checkValidity"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('checkValidity',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "AbstractBusinessObject_implementeLesInterfaces_"
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
          name = "AbstractBusinessObject_defaultView_"
          labelExpression = "defaultView"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:defaultView"
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
                browseExpression = "aql:self.eqxSetFromTreeView('defaultView')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('defaultView')"
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
        name = "AbstractComponent_conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractComponent"
        controls += TextDescription.create[
          name = "AbstractComponent_codeObjetMetier_Txt"
          labelExpression = "codeObjetMetier"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:codeObjetMetier"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('codeObjetMetier',newValue)"
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
        name = "BasicTypeBAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeBAttribute_type_"
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
        name = "BoAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        controls += CheckboxDescription.create[
          name = "BoAttribute_identifier_Check"
          labelExpression = "identifier"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:identifier"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('identifier',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoAttribute_modifiable_Check"
          labelExpression = "modifiable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:modifiable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('modifiable',newValue)"
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
        name = "BoBoAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BoBoAttribute_associatedBO_"
          labelExpression = "associatedBO"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:associatedBO"
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
                browseExpression = "aql:self.eqxSetFromTreeView('associatedBO')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('associatedBO')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoBoAttribute_opposite_"
          labelExpression = "opposite"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:opposite"
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
                browseExpression = "aql:self.eqxSetFromTreeView('opposite')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('opposite')"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoBoAttribute_modifiable_Check"
          labelExpression = "modifiable"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:modifiable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('modifiable',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_referenceDMR_Txt"
          labelExpression = "referenceDMR"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDMR"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDMR',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_table_Txt"
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
          name = "BoBoAttribute_colonne_Txt"
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
          name = "BoBoAttribute_generate_multiple_finder_Check"
          labelExpression = "generate_multiple_finder"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:generate_multiple_finder"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('generate_multiple_finder',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_service_id_Txt"
          labelExpression = "service_id"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:service_id"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('service_id',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_queue_Txt"
          labelExpression = "queue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:queue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('queue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_SendQueue_Txt"
          labelExpression = "SendQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:SendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('SendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReplyQueue_Txt"
          labelExpression = "ReplyQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:ReplyQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('ReplyQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_version_Txt"
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
          name = "BoBoAttribute_priority_Txt"
          labelExpression = "priority"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:priority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('priority',newValue)"
            ]
          ]
        ]
        controls += CustomDescription.create[
          name = "BoBoAttribute_momMax_Eqx_Spinner"
          labelExpression = "momMax"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:momMax"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('momMax',newValue)"
          ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoGroup_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoGroup"
        controls += CheckboxDescription.create[
          name = "BoGroup_isAccessor_Check"
          labelExpression = "isAccessor"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isAccessor"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isAccessor',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoGroup_codeObjetMetier_Txt"
          labelExpression = "codeObjetMetier"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:codeObjetMetier"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('codeObjetMetier',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoGroup_serverCacheStrategy_Check"
          labelExpression = "serverCacheStrategy"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:serverCacheStrategy"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('serverCacheStrategy',newValue)"
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
        name = "BoMethod_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        controls += CheckboxDescription.create[
          name = "BoMethod_isAccessor_Check"
          labelExpression = "isAccessor"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isAccessor"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isAccessor',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "BoMethod_visibility_Enum"
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
        controls += SelectDescription.create[
          name = "BoMethod_type_Enum"
          labelExpression = "type"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:type"
          candidatesExpression = "aql:equinoxeComposantsMetier::EboMethodType.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('type',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_paginationKeyName_Txt"
          labelExpression = "paginationKeyName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:paginationKeyName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('paginationKeyName',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_paginationKeySize_Txt"
          labelExpression = "paginationKeySize"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:paginationKeySize"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('paginationKeySize',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "BoMethod_conversionMode_Enum"
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
        controls += EqxHyperlinkDescription.create[
          name = "BoMethod_parametrePagineEnEntree_"
          labelExpression = "parametrePagineEnEntree"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:parametrePagineEnEntree"
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
                browseExpression = "aql:self.eqxSetFromTreeView('parametrePagineEnEntree')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('parametrePagineEnEntree')"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_programid_Txt"
          labelExpression = "programid"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:programid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('programid',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_queueName_Txt"
          labelExpression = "queueName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:queueName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('queueName',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_sendQueue_Txt"
          labelExpression = "sendQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_replyQueue_Txt"
          labelExpression = "replyQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:replyQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('replyQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_version_Txt"
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
          name = "BoMethod_priority_Txt"
          labelExpression = "priority"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:priority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('priority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_multiplicity_Txt"
          labelExpression = "multiplicity"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:multiplicity"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('multiplicity',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoMethod_pagedInput_Check"
          labelExpression = "pagedInput"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:pagedInput"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pagedInput',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_pagedInputSize_Txt"
          labelExpression = "pagedInputSize"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:pagedInputSize"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pagedInputSize',newValue)"
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
        name = "BoView_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoView"
        controls += EqxHyperlinkDescription.create[
          name = "BoView_businessObject_"
          labelExpression = "businessObject"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:businessObject"
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
                browseExpression = "aql:self.eqxSetFromTreeView('businessObject')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('businessObject')"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoView_referenceDmc_Txt"
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
          name = "BoView_isBdt_Check"
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
          name = "BoView_implementeLesInterfaces_"
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
        name = "BoViewAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BoViewAttribute_referencedAttribute_"
          labelExpression = "referencedAttribute"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referencedAttribute"
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
                browseExpression = "aql:self.eqxSetFromTreeView('referencedAttribute')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('referencedAttribute')"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoViewAttribute_table_Txt"
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
          name = "BoViewAttribute_colonne_Txt"
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
        name = "BoViewBAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BoViewBAttribute_type_"
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
        name = "BoViewFAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BoViewFAttribute_type_"
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
        name = "Bsp_conception_Group"
        domainClass = "equinoxeComposantsMetier.Bsp"
        controls += TextDescription.create[
          name = "Bsp_dsName_Txt"
          labelExpression = "dsName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dsName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dsName',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Bsp_superType_"
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
        name = "BusinessInterfaceMethod_conception_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        controls += TextDescription.create[
          name = "BusinessInterfaceMethod_exceptions_Txt"
          labelExpression = "exceptions"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:exceptions"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('exceptions',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "BusinessInterfaceMethod_transactionalMode_Enum"
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
        controls += EqxHyperlinkDescription.create[
          name = "BusinessInterfaceMethod_type_"
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
        name = "BusinessObject_conception_Group"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        controls += SelectDescription.create[
          name = "BusinessObject_daoDataAccess_Enum"
          labelExpression = "daoDataAccess"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:daoDataAccess"
          candidatesExpression = "aql:equinoxeComposantsMetier::EDataAccess.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('daoDataAccess',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "BusinessObject_queryDataAccess_Enum"
          labelExpression = "queryDataAccess"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:queryDataAccess"
          candidatesExpression = "aql:equinoxeComposantsMetier::EDataAccess.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('queryDataAccess',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_createProgramId_Txt"
          labelExpression = "createProgramId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:createProgramId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createProgramId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_createQueue_Txt"
          labelExpression = "createQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:createQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_createVersion_Txt"
          labelExpression = "createVersion"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:createVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_createPriority_Txt"
          labelExpression = "createPriority"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:createPriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createPriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readProgramid_Txt"
          labelExpression = "readProgramid"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:readProgramid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readProgramid',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readQueue_Txt"
          labelExpression = "readQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:readQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readVersion_Txt"
          labelExpression = "readVersion"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:readVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readPriority_Txt"
          labelExpression = "readPriority"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:readPriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readPriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updateProgramid_Txt"
          labelExpression = "updateProgramid"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:updateProgramid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updateProgramid',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updateQueue_Txt"
          labelExpression = "updateQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:updateQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updateQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updateVersion_Txt"
          labelExpression = "updateVersion"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:updateVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updateVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updatePriority_Txt"
          labelExpression = "updatePriority"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:updatePriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updatePriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_programidDelete_Txt"
          labelExpression = "programidDelete"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:programidDelete"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('programidDelete',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_deleteQueue_Txt"
          labelExpression = "deleteQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:deleteQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deleteQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_deleteVersion_Txt"
          labelExpression = "deleteVersion"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:deleteVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deleteVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_deletePriority_Txt"
          labelExpression = "deletePriority"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:deletePriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deletePriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_sendQueue_Txt"
          labelExpression = "sendQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_luwSendQueue_Txt"
          labelExpression = "luwSendQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:luwSendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('luwSendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_replyQueue_Txt"
          labelExpression = "replyQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:replyQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('replyQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_sqljPriority_Txt"
          labelExpression = "sqljPriority"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sqljPriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sqljPriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_dsName_Txt"
          labelExpression = "dsName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dsName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dsName',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_ownSequence_Check"
          labelExpression = "ownSequence"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:ownSequence"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('ownSequence',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_oldBoRef_Check"
          labelExpression = "oldBoRef"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:oldBoRef"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('oldBoRef',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_alternativeBoInheritance_Check"
          labelExpression = "alternativeBoInheritance"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:alternativeBoInheritance"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('alternativeBoInheritance',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessObject_superType_"
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
        name = "BusinessServiceProviderMethod_conception_Group"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        controls += SelectDescription.create[
          name = "BusinessServiceProviderMethod_visibility_Enum"
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
        controls += TextDescription.create[
          name = "BusinessServiceProviderMethod_exceptions_Txt"
          labelExpression = "exceptions"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:exceptions"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('exceptions',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessServiceProviderMethod_initMethod_"
          labelExpression = "initMethod"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:initMethod"
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
                browseExpression = "aql:self.eqxSetFromTreeView('initMethod')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('initMethod')"
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
        name = "CMR_conception_Group"
        domainClass = "equinoxeComposantsMetier.CMR"
        controls += CheckboxDescription.create[
          name = "CMR_useJmsConfiguration_Check"
          labelExpression = "useJmsConfiguration"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:useJmsConfiguration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useJmsConfiguration',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "CMR_sendQueue_Txt"
          labelExpression = "sendQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "CMR_luwSendQueue_Txt"
          labelExpression = "luwSendQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:luwSendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('luwSendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "CMR_replyQueue_Txt"
          labelExpression = "replyQueue"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:replyQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('replyQueue',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "CMR_conversionMode_Enum"
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
        name = "CMT_conception_Group"
        domainClass = "equinoxeComposantsMetier.CMT"
        controls += SelectDescription.create[
          name = "CMT_level_Enum"
          labelExpression = "level"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:level"
          candidatesExpression = "aql:equinoxeComposantsMetier::EnumCmtLevel.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('level',newValue)"
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
        name = "CaConnector_conception_Group"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        controls += TextDescription.create[
          name = "CaConnector_connectorId_Txt"
          labelExpression = "connectorId"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:connectorId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('connectorId',newValue)"
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
        name = "CmteCollectorClass_conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorClass"
        controls += ListDescription.create[
          name = "CmteCollectorClass_implementeLesInterfaces_"
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
          name = "CmteCollectorClass_superType_"
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
        name = "CmteCollectorMethod_conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorMethod"
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorMethod_collectedFormat_"
          labelExpression = "collectedFormat"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:collectedFormat"
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
                browseExpression = "aql:self.eqxSetFromTreeView('collectedFormat')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('collectedFormat')"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "CmteCollectorMethod_dataName_Txt"
          labelExpression = "dataName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dataName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dataName',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += TextDescription.create[
          name = "CmteCollectorMethod_dataIdentifier_Txt"
          labelExpression = "dataIdentifier"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dataIdentifier"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dataIdentifier',newValue)"
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
        name = "CmteCollectorRef_conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorRef"
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorRef_collecteurUtilise_"
          labelExpression = "collecteurUtilise"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:collecteurUtilise"
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
                browseExpression = "aql:self.eqxSetFromTreeView('collecteurUtilise')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('collecteurUtilise')"
              ]
            ]
          ]
        ]
        controls += CustomDescription.create[
          name = "CmteCollectorRef_rang_Eqx_Spinner"
          labelExpression = "rang"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:rang"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('rang',newValue)"
          ]
          style = CustomWidgetStyle.create[
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
        name = "CmteDocTypeTech_conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeTech"
        controls += TextDescription.create[
          name = "CmteDocTypeTech_intitule_Txt"
          labelExpression = "intitule"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:intitule"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('intitule',newValue)"
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
        name = "CmteInterfacePackage_conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteInterfacePackage"
        controls += SelectDescription.create[
          name = "CmteInterfacePackage_proxyImplementationStrategy_Enum"
          labelExpression = "proxyImplementationStrategy"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:proxyImplementationStrategy"
          candidatesExpression = "aql:equinoxeComposantsMetier::EnumProxyImplementationStrategy.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('proxyImplementationStrategy',newValue)"
            ]
          ]
          style = SelectWidgetStyle.create[
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
        name = "ComputedBoAttribute_conception_Group"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        controls += ListDescription.create[
          name = "ComputedBoAttribute_attributsIntervenants_"
          labelExpression = "attributsIntervenants"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:attributsIntervenants"
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
                browseExpression = "aql:self.eqxAddFromTreeView('attributsIntervenants',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('attributsIntervenants',selection)"
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
        name = "ConnectorMethod_conception_Group"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        controls += SelectDescription.create[
          name = "ConnectorMethod_emissionMode_Enum"
          labelExpression = "emissionMode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:emissionMode"
          candidatesExpression = "aql:equinoxeComposantsMetier::EnumConnectorMethodModeEmission.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('emissionMode',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "ConnectorMethod_remoteServiceName_Txt"
          labelExpression = "remoteServiceName"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:remoteServiceName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('remoteServiceName',newValue)"
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
        name = "FacadeMethod_conception_Group"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        controls += ListDescription.create[
          name = "FacadeMethod_possibleErrors_"
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
          name = "FacadeMethod_visibility_Enum"
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
          name = "FacadeMethod_throwsExceptions_Check"
          labelExpression = "throwsExceptions"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:throwsExceptions"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('throwsExceptions',newValue)"
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
        name = "FacadeRealization_conception_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        controls += TextDescription.create[
          name = "FacadeRealization_dsName_Txt"
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
        name = "FacadeRealizationGroup_conception_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealizationGroup"
        controls += ListDescription.create[
          name = "FacadeRealizationGroup_realizationOf_"
          labelExpression = "realizationOf"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:realizationOf"
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
                browseExpression = "aql:self.eqxAddFromTreeView('realizationOf',true)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Retirer"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxRemove('realizationOf',selection)"
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
        name = "InterfaceCm_conception_Group"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        controls += SelectDescription.create[
          name = "InterfaceCm_proxyImplementationStrategy_Enum"
          labelExpression = "proxyImplementationStrategy"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:proxyImplementationStrategy"
          candidatesExpression = "aql:equinoxeComposantsMetier::EnumProxyImplementationStrategy.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('proxyImplementationStrategy',newValue)"
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
        name = "RelatedBO_conception_Group"
        domainClass = "equinoxeComposantsMetier.RelatedBO"
        controls += EqxHyperlinkDescription.create[
          name = "RelatedBO_superType_"
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
    ])
  }
  
  def getExtras() {
    context.extras
  }

  def <T extends org.eclipse.sirius.viewpoint.description.IdentifiedElement> at(Iterable<T> values, Object key) {
    context.at(values, key) as T // Xtend inference fails?
  }

}
