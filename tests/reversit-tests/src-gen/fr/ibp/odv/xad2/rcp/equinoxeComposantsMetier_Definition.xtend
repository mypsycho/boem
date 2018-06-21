package fr.ibp.odv.xad2.rcp

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CheckboxWidgetStyle
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.CustomExpression
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.HyperlinkWidgetStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.TextWidgetConditionalStyle
import org.eclipse.sirius.properties.TextWidgetStyle
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.mypsycho.emf.modit.EModIt

class equinoxeComposantsMetier_Definition {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "equinoxeComposantsMetier_Definition".alias(Category.create[
      name = "equinoxeComposantsMetier_Definition"
      groups += GroupDescription.create[
        name = "AbstractBoAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBoAttribute"
        controls += TextDescription.create[
          name = "AbstractBoAttribute_colonne_Txt"
          labelExpression = "aql:self.getFeatureLabel('colonne')"
          helpExpression = "Identification de la colonne à laquelle est rattachée la donnée (persistance physique).\nPour indiquer plusieurs colonnes, les séparer par le caractère '|' (pipe)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:colonne"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('colonne',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractBoAttribute_referenceDma_Txt"
          labelExpression = "aql:self.getFeatureLabel('referenceDma')"
          helpExpression = "Référence à la Documentation Métier d'un Attribut. C'est le code de la rubrique PAC dans le dictionnaire de données PAC.\nPour indiquer plusieurs références, les séparer par le caractère '|' (pipe)."
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
          labelExpression = "aql:self.getFeatureLabel('table')"
          helpExpression = "Identification de la table à laquelle est rattachée la donnée (persistance physique).\nPour indiquer plusieurs tables, les séparer par le caractère '|' (pipe)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:table"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('table',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AbstractBoAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Type de l'attribut d'objet métier."
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
        controls += SelectDescription.create[
          name = "AbstractBoAttribute_visibility_Enum"
          labelExpression = "aql:self.getFeatureLabel('visibility')"
          helpExpression = "Visibilité de l'attribut :"
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
      ]
      groups += GroupDescription.create[
        name = "AbstractBoAttribute_Generation_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBoAttribute"
        controls += TextDescription.create[
          name = "AbstractBoAttribute_jdbcRowName_Txt"
          labelExpression = "aql:self.getFeatureLabel('jdbcRowName')"
          helpExpression = "Pour la génération JDBC : sur la table correspondant à l'objet métier, nom de la colonne correspondant à l'attribut. Si cette propriété reste vide, le nom de la colonne est le nom de l'attribut."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:jdbcRowName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('jdbcRowName',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractBoViewAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBoViewAttribute"
        controls += TextDescription.create[
          name = "AbstractBoViewAttribute_documentationReference_Txt"
          labelExpression = "aql:self.getFeatureLabel('documentationReference')"
          helpExpression = "Référence à la Documentation Métier d'un Attribut ou d'une class. C'est le code de la rubrique PAC dans le dictionnaire de données PAC."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:documentationReference"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('documentationReference',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractBusinessComponent_Generation_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessComponent"
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_jdbcGeneration_Check"
          labelExpression = "aql:self.getFeatureLabel('jdbcGeneration')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:jdbcGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('jdbcGeneration',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_momGeneration_Check"
          labelExpression = "aql:self.getFeatureLabel('momGeneration')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momGeneration',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_sqljGeneration_Check"
          labelExpression = "aql:self.getFeatureLabel('sqljGeneration')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:sqljGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sqljGeneration',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractBusinessComponent_legacyEjb_Check"
          labelExpression = "aql:self.getFeatureLabel('legacyEjb')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:legacyEjb"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('legacyEjb',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractBusinessComponentInterface_Conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessComponentInterface"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractBusinessComponentInterface_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage du l'interface"
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
      ]
      groups += GroupDescription.create[
        name = "AbstractBusinessComponentRealization_Conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessComponentRealization"
        controls += ListDescription.create[
          name = "AbstractBusinessComponentRealization_implementedInterfaces_Ref"
          labelExpression = "aql:self.getFeatureLabel('implementedInterfaces')"
          helpExpression = "Interfaces de conception implémentées par la Facade.\nAttention : les interfaces métier du composant réalisées par la Facade se modélisent sur le package parent."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('implementedInterfaces',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('implementedInterfaces',selection)"
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractBusinessObject_Conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractBusinessObject"
        controls += CheckboxDescription.create[
          name = "AbstractBusinessObject_abstraite_Check"
          labelExpression = "aql:self.getFeatureLabel('abstraite')"
          helpExpression = "Indique si cet objet métier est abstrait."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:abstraite"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('abstraite',newValue)"
            ]
          ]
        ]
        controls += TextAreaDescription.create[
          name = "AbstractBusinessObject_checkValidity_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('checkValidity')"
          helpExpression = "Description textuelle des règles de validation."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:checkValidity"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('checkValidity',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "AbstractBusinessObject_erreursLeveesParLInvariant_Ref"
          labelExpression = "aql:self.getFeatureLabel('erreursLeveesParLInvariant')"
          helpExpression = "Erreurs fonctionnelles levées par la méthode de validation de l'invariant fonctionnel du BO. Les erreurs fonctionnelles doivent être des erreurs fonctionnelles publiques du composant."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('erreursLeveesParLInvariant',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('erreursLeveesParLInvariant',selection)"
              ]
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "AbstractBusinessObject_implementeLesInterfaces_Ref"
          labelExpression = "aql:self.getFeatureLabel('implementeLesInterfaces')"
          helpExpression = "Interfaces de conception implémentées par l'objet métier."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('implementeLesInterfaces',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('implementeLesInterfaces',selection)"
              ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractBusinessObject_referenceDmc_Txt"
          labelExpression = "aql:self.getFeatureLabel('referenceDmc')"
          helpExpression = "Référence à la Documentation Métier d'une Classe. C'est le nom de la classe de donnée dans le MCD MEGA."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDmc"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDmc',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AbstractBusinessObject_defaultView_Ref"
          labelExpression = "aql:self.getFeatureLabel('defaultView')"
          helpExpression = ""
          isEnabledExpression = "aql:false"
          valueExpression = "feature:defaultView"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "AbstractBusinessObject_referencedViews_Ref"
          labelExpression = "aql:self.getFeatureLabel('referencedViews')"
          helpExpression = ""
          isEnabledExpression = "aql:false"
          valueExpression = "feature:referencedViews"
          displayExpression = "aql:value.getEqxLabel()"
          onClickOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerViewDoubleClick(onClickEventKind)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractComponent_Conception_Group"
        domainClass = "equinoxeComposantsMetier.AbstractComponent"
        controls += TextDescription.create[
          name = "AbstractComponent_codeObjetMetier_Txt"
          labelExpression = "aql:self.getFeatureLabel('codeObjetMetier')"
          helpExpression = "Trigramme identifiant le composant métier. La liste de ces codes sera donnée par les urbanistes."
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
      ]
      groups += GroupDescription.create[
        name = "BasicTypeBAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeBAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Type de l'attribut"
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
      ]
      groups += GroupDescription.create[
        name = "BoAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        controls += CheckboxDescription.create[
          name = "BoAttribute_identifier_Check"
          labelExpression = "aql:self.getFeatureLabel('identifier')"
          helpExpression = "Attribut constituant l'identifiant du BO.\nNote: La vue par défaut de ce BO doit être éditable pour pouvoir modifier cette propriété."
          isEnabledExpression = "aql:self.isBoAttributeIdentifierEditable()"
          valueExpression = "feature:identifier"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('identifier',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoAttribute_modifiable_Check"
          labelExpression = "aql:self.getFeatureLabel('modifiable')"
          helpExpression = "Indique si l'attribut est modifiable au sein du composant.\nUn attribut modifiable peut être modifié au sein du composant sans contrôle autre que le contrôle de validité sur l'objet métier.\nUn attribut non modifiable ne pourra être modifié qu'à travers des \"business methods\" de l'objet métier, qui pourront implémenter des contrôles supplémentaires sur la modification de l'attribut."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:modifiable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('modifiable',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BoBoAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BoBoAttribute_associatedBO_Ref"
          labelExpression = "aql:self.getFeatureLabel('associatedBO')"
          helpExpression = ""
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
          name = "BoBoAttribute_opposite_Ref"
          labelExpression = "aql:self.getFeatureLabel('opposite')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:opposite"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create
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
          labelExpression = "aql:self.getFeatureLabel('modifiable')"
          helpExpression = ""
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
          labelExpression = "aql:self.getFeatureLabel('referenceDMR')"
          helpExpression = ""
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
          labelExpression = "aql:self.getFeatureLabel('table')"
          helpExpression = ""
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
          labelExpression = "aql:self.getFeatureLabel('colonne')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:colonne"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('colonne',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BoBoAttribute_Generation_Group"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        controls += CheckboxDescription.create[
          name = "BoBoAttribute_generate_multiple_finder_Check"
          labelExpression = "aql:self.getFeatureLabel('generate_multiple_finder')"
          helpExpression = ""
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
          labelExpression = "aql:self.getFeatureLabel('service_id')"
          helpExpression = ""
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
          labelExpression = "aql:self.getFeatureLabel('queue')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.componentUseJmsConfiguration()"
          valueExpression = "feature:queue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('queue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_SendQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('SendQueue')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.componentUseJmsConfiguration()"
          valueExpression = "feature:SendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('SendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReplyQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('ReplyQueue')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.componentUseJmsConfiguration()"
          valueExpression = "feature:ReplyQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('ReplyQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_version_Txt"
          labelExpression = "aql:self.getFeatureLabel('version')"
          helpExpression = ""
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
          labelExpression = "aql:self.getFeatureLabel('priority')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:priority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('priority',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BoGroup_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoGroup"
        controls += TextDescription.create[
          name = "BoGroup_codeObjetMetier_Txt"
          labelExpression = "aql:self.getFeatureLabel('codeObjetMetier')"
          helpExpression = "Trigramme identifiant l'Objet Métier de manière unique dans le Composant."
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
          name = "BoGroup_isAccessor_Check"
          labelExpression = "aql:self.getFeatureLabel('isAccessor')"
          helpExpression = "Indique si les méthodes CRUD sur le BO répondent à la définition d'un accesseur."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isAccessor"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isAccessor',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoGroup_serverCacheStrategy_Check"
          labelExpression = "aql:self.getFeatureLabel('serverCacheStrategy')"
          helpExpression = "Indique si une stratégie de cache serveur doit être adoptée pour le BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:serverCacheStrategy"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('serverCacheStrategy',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BoMethod_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractExtendedReturningMethod_returnType_Ref"
          labelExpression = "aql:self.getFeatureLabel('returnType')"
          helpExpression = "Type de retour de la méthode."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::finder and self.type != equinoxeComposantsMetier::EboMethodType::multiIdFinder and self.type != equinoxeComposantsMetier::EboMethodType::multiForeignKeyFinder"
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
        controls += SelectDescription.create[
          name = "BoMethod_type_Enum"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Type de méthode :"
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
        controls += SelectDescription.create[
          name = "BoMethod_visibility_Enum"
          labelExpression = "aql:self.getFeatureLabel('visibility')"
          helpExpression = "Visibilité (Java) de la méthode."
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
          name = "BoMethod_isAccessor_Check"
          labelExpression = "aql:self.getFeatureLabel('isAccessor')"
          helpExpression = "Puor une requête uniquement : indique si la requête correspond à la définition d'un accesseur.\nPour chaque objet métier, une liste réduite d'accesseurs est définie, afin de répondre à la question 'comment faire pour accéder - en lecture / en écriture - à telle ou telle donnée ?' (cf. FC-APEx2-OD)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
          valueExpression = "feature:isAccessor"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isAccessor',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "AbstractErrorRaisingMethod_possibleErrors_Ref"
          labelExpression = "aql:self.getFeatureLabel('possibleErrors')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type = equinoxeComposantsMetier::EboMethodType::businessMethod"
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
      ]
      groups += GroupDescription.create[
        name = "BoMethod_Generation_Group"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        controls += SelectDescription.create[
          name = "BoMethod_conversionMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('conversionMode')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
          valueExpression = "feature:conversionMode"
          candidatesExpression = "aql:equinoxeCore::EConversionMode.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionMode',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_multiplicity_Txt"
          labelExpression = "aql:self.getFeatureLabel('multiplicity')"
          helpExpression = "Multiplicité MOM maximum en sortie."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::finder and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
          valueExpression = "feature:multiplicity"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('multiplicity',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoMethod_pagedInput_Check"
          labelExpression = "aql:self.getFeatureLabel('pagedInput')"
          helpExpression = "Indique si la requête est paginée en entrée."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type = equinoxeComposantsMetier::EboMethodType::pagedQuery"
          valueExpression = "feature:pagedInput"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pagedInput',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_pagedInputSize_Txt"
          labelExpression = "aql:self.getFeatureLabel('pagedInputSize')"
          helpExpression = "Taille d'une page de paramètre en entrée, si la requête est paginée en entrée."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type = equinoxeComposantsMetier::EboMethodType::pagedQuery"
          valueExpression = "feature:pagedInputSize"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pagedInputSize',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoMethod_pagedOutput_Check"
          labelExpression = "aql:self.getFeatureLabel('pagedOutput')"
          helpExpression = "Indique si la requête est paginée en sortie.\nCette information est à spécifier sous l'assistant DA, à travers le type du service."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:pagedOutput"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pagedOutput',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_paginationKeyName_Txt"
          labelExpression = "aql:self.getFeatureLabel('paginationKeyName')"
          helpExpression = "Nom de la clé de reprise COBOL, si le service est paginé en sortie."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and (self.type = equinoxeComposantsMetier::EboMethodType::query or self.type = equinoxeComposantsMetier::EboMethodType::finder)"
          valueExpression = "feature:paginationKeyName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('paginationKeyName',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_paginationKeySize_Txt"
          labelExpression = "aql:self.getFeatureLabel('paginationKeySize')"
          helpExpression = "Taille de la clé de reprise COBOL, si le service est paginé en sortie."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and (self.type = equinoxeComposantsMetier::EboMethodType::query or self.type = equinoxeComposantsMetier::EboMethodType::finder)"
          valueExpression = "feature:paginationKeySize"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('paginationKeySize',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoMethod_parametrePagineEnEntree_Ref"
          labelExpression = "aql:self.getFeatureLabel('parametrePagineEnEntree')"
          helpExpression = "Paramètre paginé en entrée, si la requête est paginée en entrée. \nCe paramètre doit être une collection de vues ou une collection de formats."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type = equinoxeComposantsMetier::EboMethodType::pagedQuery"
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
                browseExpression = "aql:self.eqxSetFromListView('parametrePagineEnEntree')"
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
          name = "BoMethod_priority_Txt"
          labelExpression = "aql:self.getFeatureLabel('priority')"
          helpExpression = "Priorité du programme COBOL sur le mainframe appelé par la requête.\nLaisser vide dans la plupart des cas."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
          valueExpression = "feature:priority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('priority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_programid_Txt"
          labelExpression = "aql:self.getFeatureLabel('programid')"
          helpExpression = "Identifiant du programme COBOL sur le mainframe appelé par la requête."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
          valueExpression = "feature:programid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('programid',newValue)"
            ]
          ]
          conditionalStyles += TextWidgetConditionalStyle.create[
            preconditionExpression = "aql:self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
            style = TextWidgetStyle.create[
              labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_queueName_Txt"
          labelExpression = "aql:self.getFeatureLabel('queueName')"
          helpExpression = "Si on n'utilise pas la configuration JMS : File d'attente MQSeries utilisée par la requête pour accéder au mainframe."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
          valueExpression = "feature:queueName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('queueName',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_replyQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('replyQueue')"
          helpExpression = "Si on utilise la configuration JMS : File de retour spécifique utilisée par la requête pour accéder au mainframe.\nDans le cas général, à laisser vide pour utiliser la file de retour par défaut définie au niveau du composant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod and self.componentUseJmsConfiguration()"
          valueExpression = "feature:replyQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('replyQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_sendQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('sendQueue')"
          helpExpression = "Si on utilise la configuration JMS : File d'envoi spécifique utilisée par la requête pour accéder au mainframe.\nDans le cas général, à laisser vide pour utiliser la file d'envoi par défaut définie au niveau du composant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod and self.componentUseJmsConfiguration()"
          valueExpression = "feature:sendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_version_Txt"
          labelExpression = "aql:self.getFeatureLabel('version')"
          helpExpression = "Version du programme COBOL sur le mainframe appelé par la requête."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.type != equinoxeComposantsMetier::EboMethodType::businessMethod"
          valueExpression = "feature:version"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('version',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BoView_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoView"
        controls += EqxHyperlinkDescription.create[
          name = "BoView_businessObject_Ref"
          labelExpression = "aql:self.getFeatureLabel('businessObject')"
          helpExpression = "Objet métier sur lequel porte la Vue.\nIl n'est pas possible de modifier cet objet métier. Pour créer une vue sur un objet métier donné, créer la vue dans le package de cet objet métier."
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
        ]
        controls += ListDescription.create[
          name = "BoView_implementeLesInterfaces_Ref"
          labelExpression = "aql:self.getFeatureLabel('implementeLesInterfaces')"
          helpExpression = "Interfaces de Conception implémentées par la vue."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('implementeLesInterfaces',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('implementeLesInterfaces',selection)"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoView_isBdt_Check"
          labelExpression = "aql:self.getFeatureLabel('isBdt')"
          helpExpression = "Indique que la vue est un Business Data Types (ou Format Métier Commun).\nLes BDT permettent d'avoir une représentation unique d'un objet métier qui est partagée par toutes les couches (CMR, CMT, CP, voire CD) afin de faciliter le travail de développement et de maintenance. Les BDT sont externalisés par rapport aux CMR, et regroupés au sein de GTC."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isBdt"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isBdt',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoView_referenceDmc_Txt"
          labelExpression = "aql:self.getFeatureLabel('referenceDmc')"
          helpExpression = "Référence à la Documentation Métier d'une Classe. C'est le nom de la classe de donnée dans le MCD MEGA."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDmc"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDmc',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        controls += TextDescription.create[
          name = "BoViewAttribute_table_Txt"
          labelExpression = "aql:self.getFeatureLabel('table')"
          helpExpression = "Identification de la table à laquelle est rattachée la donnée (persistance physique)."
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
          labelExpression = "aql:self.getFeatureLabel('colonne')"
          helpExpression = "Identification de la colonne à laquelle est rattachée la donnée (persistance physique)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:colonne"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('colonne',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoViewAttribute_referencedAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('referencedAttribute')"
          helpExpression = "Attribut d'objet métier représenté par cet elément."
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
                browseExpression = "aql:self.eqxSetFromListView('referencedAttribute')"
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
        controls += EqxHyperlinkDescription.create[
          name = "BoViewAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Tye de l'attribut : il s'agit du type de l'attribut d'objet métier référencé."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:type"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BoViewAttribute_derived_Check"
          labelExpression = "aql:self.getFeatureLabel('derived')"
          helpExpression = "Indique qu'il s'agit d'un attribut calculé (\"derived\")."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:derived"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('derived',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewBAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BoViewBAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Collection de Vue : vue simple qui type chaque item de la collection.\n Référence de Vue : vue simple référencée."
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
      ]
      groups += GroupDescription.create[
        name = "BoViewFAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BoViewFAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = ""
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
        controls += EqxHyperlinkDescription.create[
          name = "BoViewFAttribute_businessObject_Ref"
          labelExpression = "aql:self.getFeatureLabel('businessObject')"
          helpExpression = "Objet métier de la vue selectionné dans le champ \"Type\""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:businessObject"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "Bsp_Conception_Group"
        domainClass = "equinoxeComposantsMetier.Bsp"
        controls += EqxHyperlinkDescription.create[
          name = "Bsp_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Feature that references the inheritance of this element"
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
      ]
      groups += GroupDescription.create[
        name = "Bsp_Generation_Group"
        domainClass = "equinoxeComposantsMetier.Bsp"
        controls += TextDescription.create[
          name = "Bsp_dsName_Txt"
          labelExpression = "aql:self.getFeatureLabel('dsName')"
          helpExpression = "Pour SQLJ, nom de la source de donnée (ds_name)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dsName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dsName',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessInterfaceMethod_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        controls += EqxHyperlinkDescription.create[
          name = "BusinessInterfaceMethod_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('type')"
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
      ]
      groups += GroupDescription.create[
        name = "BusinessInterfaceMethod_Generation_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        controls += TextDescription.create[
          name = "BusinessInterfaceMethod_exceptions_Txt"
          labelExpression = "aql:self.getFeatureLabel('exceptions')"
          helpExpression = "Laisser ce champ vide."
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
          labelExpression = "aql:self.getFeatureLabel('transactionalMode')"
          helpExpression = "Indique si l'utilisation d'une transaction est requise lors de l'appel de la méthode."
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
      ]
      groups += GroupDescription.create[
        name = "BusinessObject_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        controls += EqxHyperlinkDescription.create[
          name = "BusinessObject_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage de cet élément"
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
      ]
      groups += GroupDescription.create[
        name = "BusinessObject_Generation_Group"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        controls += SelectDescription.create[
          name = "BusinessObject_daoDataAccess_Enum"
          labelExpression = "aql:self.getFeatureLabel('daoDataAccess')"
          helpExpression = "Mode d'accès aux données pour les services DAO (services CRUD et finders)."
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
          labelExpression = "aql:self.getFeatureLabel('queryDataAccess')"
          helpExpression = "Mode d'accès aux données pour les queries (queries et paged queries)."
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
          labelExpression = "aql:self.getFeatureLabel('createProgramId')"
          helpExpression = "Identifiant du programme COBOL sur le mainframe appelé lors de la création du BO.\nCet identifiant est constitué de la concaténation de :\n- code composant\n- nom de la transaction host (anciennement Nom transaction)\n- nom du service élémentaire (anciennement Nom service)"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:createProgramId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createProgramId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_createVersion_Txt"
          labelExpression = "aql:self.getFeatureLabel('createVersion')"
          helpExpression = "Version du service élémentaire pour la création du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:createVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_createPriority_Txt"
          labelExpression = "aql:self.getFeatureLabel('createPriority')"
          helpExpression = "Priorité du programme COBOL sur le mainframe appelé lors de la création du BO.\nLaisser vide dans la plupart des cas."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:createPriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createPriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readProgramid_Txt"
          labelExpression = "aql:self.getFeatureLabel('readProgramid')"
          helpExpression = "Identifiant du programme COBOL sur le mainframe appelé lors de la lecture du BO.\nCet identifiant est constitué de la concaténation de :\n- code composant\n- nom de la transaction host (anciennement Nom transaction)\n- nom du service élémentaire (anciennement Nom service)"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:readProgramid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readProgramid',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readVersion_Txt"
          labelExpression = "aql:self.getFeatureLabel('readVersion')"
          helpExpression = "Version du service élémentaire pour la lecture du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:readVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readPriority_Txt"
          labelExpression = "aql:self.getFeatureLabel('readPriority')"
          helpExpression = "Priorité du programme COBOL sur le mainframe appelé lors de la lecture du BO.\nLaisser vide dans la plupart des cas."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:readPriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readPriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updateProgramid_Txt"
          labelExpression = "aql:self.getFeatureLabel('updateProgramid')"
          helpExpression = "Identifiant du programme COBOL sur le mainframe appelé lors de la mise à jour du BO.\nCet identifiant est constitué de la concaténation de :\n- code composant\n- nom de la transaction host (anciennement Nom transaction)\n- nom du service élémentaire (anciennement Nom service)"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:updateProgramid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updateProgramid',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updateVersion_Txt"
          labelExpression = "aql:self.getFeatureLabel('updateVersion')"
          helpExpression = "Version du service élémentaire pour la mise à jour du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:updateVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updateVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updatePriority_Txt"
          labelExpression = "aql:self.getFeatureLabel('updatePriority')"
          helpExpression = "Priorité du programme COBOL sur le mainframe appelé lors de la mise à jour du BO.\nLaisser vide dans la plupart des cas."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:updatePriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updatePriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_programidDelete_Txt"
          labelExpression = "aql:self.getFeatureLabel('programidDelete')"
          helpExpression = "Identifiant du programme COBOL sur le mainframe appelé lors de la suppression du BO.\nCet identifiant est constitué de la concaténation de :\n- code composant\n- nom de la transaction host (anciennement Nom transaction)\n- nom du service élémentaire (anciennement Nom service)"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:programidDelete"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('programidDelete',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_deleteVersion_Txt"
          labelExpression = "aql:self.getFeatureLabel('deleteVersion')"
          helpExpression = "Version du service élémentaire pour la suppression du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:deleteVersion"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deleteVersion',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_deletePriority_Txt"
          labelExpression = "aql:self.getFeatureLabel('deletePriority')"
          helpExpression = "Priorité du programme COBOL sur le mainframe appelé lors de la suppression du BO.\nLaisser vide dans la plupart des cas."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:deletePriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deletePriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_sqljPriority_Txt"
          labelExpression = "aql:self.getFeatureLabel('sqljPriority')"
          helpExpression = "Pour SQLJ, priorité de la mise à jour du BO (create, update, delete) lors de l'exécution de la transaction globale de mise à jour des BOs.\nLaisser vide pour la priorité par défaut (0)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()   and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::sqlj"
          valueExpression = "feature:sqljPriority"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sqljPriority',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_dsName_Txt"
          labelExpression = "aql:self.getFeatureLabel('dsName')"
          helpExpression = "Pour JDBC et SQLJ, nom de la source de donnée (ds_name)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and ( self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::sqlj or self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::jdbc or self.queryDataAccess == equinoxeComposantsMetier::EDataAccess::sqlj or self.queryDataAccess == equinoxeComposantsMetier::EDataAccess::jdbc)"
          valueExpression = "feature:dsName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dsName',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_ownSequence_Check"
          labelExpression = "aql:self.getFeatureLabel('ownSequence')"
          helpExpression = "Génération de séquence privée pour les identifiants techniques du BO."
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
          labelExpression = "aql:self.getFeatureLabel('oldBoRef')"
          helpExpression = "Pour compatibilité ascendante : une ancienne version du générateur de code générait par défaut un pseudo BORef (clé+timestamp) dans le loadOutputRecord. \n"
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
          labelExpression = "aql:self.getFeatureLabel('alternativeBoInheritance')"
          helpExpression = "Génération de l'implémentation alternative de l'héritage du BO : la modification du BO parent n'entraine pas la nécessité de regénérer l'ensemble des BO enfants.\nCette capacité est valable pour l'ensemble de la grappe de BO : elle doit être indiquée sur le BO au sommet de la grappe.\nCette capacité est valable uniquement pour une implémentation SQLJ."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:alternativeBoInheritance"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('alternativeBoInheritance',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_sendQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('sendQueue')"
          helpExpression = "Si on utilise la configuration JMS : File d'envoi spécifique utilisée par la requête pour la lecture du BO.\nDans le cas général, à laisser vide pour utiliser la file d'envoi par défaut définie au niveau du composant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:sendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('sendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_luwSendQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('luwSendQueue')"
          helpExpression = "Si on utilise la configuration JMS : File d'envoi spécifique utilisée par la requête pour la création, la mise à jour et la suppression du BO.\nDans le cas général, à laisser vide pour utiliser la file d'envoi par défaut définie au niveau du composant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:luwSendQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('luwSendQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_replyQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('replyQueue')"
          helpExpression = "Si on utilise la configuration JMS : File de retour spécifique utilisée par la requête pour la création, la lecture, la mise à jour et la suppression du BO.\nDans le cas général, à laisser vide pour utiliser la file de retour par défaut définie au niveau du composant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:replyQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('replyQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_createQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('createQueue')"
          helpExpression = "Si on n'utilise pas la configuration JMS : File d'attente MQSeries utilisée pour la création du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:createQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('createQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_deleteQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('deleteQueue')"
          helpExpression = "Si on n'utilise pas la configuration JMS : File d'attente MQSeries utilisée pour la suppression du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:deleteQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deleteQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_readQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('readQueue')"
          helpExpression = "Si on n'utilise pas la configuration JMS : File d'attente MQSeries utilisée pour la lecture du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:readQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('readQueue',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_updateQueue_Txt"
          labelExpression = "aql:self.getFeatureLabel('updateQueue')"
          helpExpression = "Si on n'utilise pas la configuration JMS : File d'attente MQSeries utilisée pour la mise à jour du BO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.daoDataAccess == equinoxeComposantsMetier::EDataAccess::mom"
          valueExpression = "feature:updateQueue"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('updateQueue',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessServiceProviderMethod_Conception_Group"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        controls += SelectDescription.create[
          name = "BusinessServiceProviderMethod_visibility_Enum"
          labelExpression = "aql:self.getFeatureLabel('visibility')"
          helpExpression = "Visibilité (Java) de la méthode."
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
        controls += EqxHyperlinkDescription.create[
          name = "BusinessServiceProviderMethod_initMethod_Ref"
          labelExpression = "aql:self.getFeatureLabel('initMethod')"
          helpExpression = ""
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
      ]
      groups += GroupDescription.create[
        name = "BusinessServiceProviderMethod_Generation_Group"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        controls += TextDescription.create[
          name = "BusinessServiceProviderMethod_exceptions_Txt"
          labelExpression = "aql:self.getFeatureLabel('exceptions')"
          helpExpression = "Laisser ce champ vide."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:exceptions"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('exceptions',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "CMR_Generation_Group"
        domainClass = "equinoxeComposantsMetier.CMR"
        controls += CheckboxDescription.create[
          name = "CMR_useJmsConfiguration_Check"
          labelExpression = "aql:self.getFeatureLabel('useJmsConfiguration')"
          helpExpression = "Utiliser la configuration JMS pour le composant.\nSi la configuration JMS est utilisée, elle doit l'être pour tous les composants du projet.\n"
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
          labelExpression = "aql:self.getFeatureLabel('sendQueue')"
          helpExpression = "File d'envoi par défaut pour tous les services de lecture du composant, si on utilise la configuration JMS."
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
          labelExpression = "aql:self.getFeatureLabel('luwSendQueue')"
          helpExpression = "File d'envoi par défaut pour tous les services LUW (mise à jour) du composant, si on utilise la configuration JMS."
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
          labelExpression = "aql:self.getFeatureLabel('replyQueue')"
          helpExpression = "File de retour par défaut pour tous les services du composant, si on utilise la configuration JMS."
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
          labelExpression = "aql:self.getFeatureLabel('conversionMode')"
          helpExpression = "Valeur par défaut pour le mode de conversion à l'encodage des données MOM sur le composant. Lorsqu'on laisse la valeur par défaut, la valeur par défaut pour l'application est utilisée."
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
      ]
      groups += GroupDescription.create[
        name = "CMT_Conception_Group"
        domainClass = "equinoxeComposantsMetier.CMT"
        controls += SelectDescription.create[
          name = "CMT_level_Enum"
          labelExpression = "aql:self.getFeatureLabel('level')"
          helpExpression = "Caractérise le niveau du CMT."
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
      ]
      groups += GroupDescription.create[
        name = "CaConnector_Generation_Group"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        controls += TextDescription.create[
          name = "CaConnector_connectorId_Txt"
          labelExpression = "aql:self.getFeatureLabel('connectorId')"
          helpExpression = "Identifiant du connecteur défini au niveau du Proxy."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:connectorId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('connectorId',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorClass_Conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorClass"
        controls += ListDescription.create[
          name = "CmteCollectorClass_implementeLesInterfaces_Ref"
          labelExpression = "aql:self.getFeatureLabel('implementeLesInterfaces')"
          helpExpression = "Interfaces de conception implémentées par le collecteur."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('implementeLesInterfaces',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('implementeLesInterfaces',selection)"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorClass_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage de l'élément"
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
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorMethod_Conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorMethod"
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorMethod_collectedFormat_Ref"
          labelExpression = "aql:self.getFeatureLabel('collectedFormat')"
          helpExpression = "Format qui va accueillir les données collectées par la méthode."
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
          name = "CmteCollectorMethod_dataIdentifier_Txt"
          labelExpression = "aql:self.getFeatureLabel('dataIdentifier')"
          helpExpression = "Identifiant utilisé dans le dictionnaire de donnée"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dataIdentifier"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dataIdentifier',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "CmteCollectorMethod_dataName_Txt"
          labelExpression = "aql:self.getFeatureLabel('dataName')"
          helpExpression = "Nom associée à la donnée collectée et permettant de différencier un même format (ex: Client) utilisé par deux méthodes de collecte (ex: collectEmprunteur() collectCoEmprunteur() ).\nCe nom sert à initialiser le nom de la méthode qui n'est pas en saisie libre."
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
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorRef_Conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorRef"
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorRef_collecteurUtilise_Ref"
          labelExpression = "aql:self.getFeatureLabel('collecteurUtilise')"
          helpExpression = "Définition du collecteur utilisé."
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
          labelExpression = "aql:self.getFeatureLabel('rang')"
          helpExpression = "Rang du Collecteur utilisé."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:rang"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('rang',newValue)"
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteDocTypeTech_Conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeTech"
        controls += TextDescription.create[
          name = "CmteDocTypeTech_intitule_Txt"
          labelExpression = "aql:self.getFeatureLabel('intitule')"
          helpExpression = "Intitulé du Document"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:intitule"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('intitule',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteFacadePackage_Conception_Group"
        domainClass = "equinoxeComposantsMetier.CmteFacadePackage"
        controls += EqxHyperlinkDescription.create[
          name = "CmteFacadePackage_realisationDe_Ref"
          labelExpression = "aql:self.getFeatureLabel('realisationDe')"
          helpExpression = "La Facade principale réalise l'interface principale du CMTE."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:realisationDe"
          displayExpression = "aql:value.getEqxLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerView()"
            ]
          ]
          style = HyperlinkWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteInterfacePackage_Generation_Group"
        domainClass = "equinoxeComposantsMetier.CmteInterfacePackage"
        controls += SelectDescription.create[
          name = "CmteInterfacePackage_proxyImplementationStrategy_Enum"
          labelExpression = "aql:self.getFeatureLabel('proxyImplementationStrategy')"
          helpExpression = ""
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
      ]
      groups += GroupDescription.create[
        name = "ComputedBoAttribute_Conception_Group"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        controls += ListDescription.create[
          name = "ComputedBoAttribute_attributsIntervenants_Ref"
          labelExpression = "aql:self.getFeatureLabel('attributsIntervenants')"
          helpExpression = "Liste des attributs intervenants dans le calcul de la valeur de cet attribut."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('attributsIntervenants',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('attributsIntervenants',selection)"
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "ConnectorMethod_Conception_Group"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        controls += SelectDescription.create[
          name = "ConnectorMethod_emissionMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('emissionMode')"
          helpExpression = ""
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
      ]
      groups += GroupDescription.create[
        name = "ConnectorMethod_Generation_Group"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        controls += TextDescription.create[
          name = "ConnectorMethod_remoteServiceName_Txt"
          labelExpression = "aql:self.getFeatureLabel('remoteServiceName')"
          helpExpression = "Nom du service distant auquel se connecte cette méthode. Par défaut, il s'agit du nom de la méthode."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:remoteServiceName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('remoteServiceName',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeMethod_Conception_Group"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        controls += SelectDescription.create[
          name = "FacadeMethod_visibility_Enum"
          labelExpression = "aql:self.getFeatureLabel('visibility')"
          helpExpression = "Visibilité (Java) de la méthode."
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
        controls += ListDescription.create[
          name = "FacadeMethod_possibleErrors_Ref"
          labelExpression = "aql:self.getFeatureLabel('possibleErrors')"
          helpExpression = "Erreurs fonctionnelles qui peuvent être renvoyées par la méthode de Facade. Les erreurs disponibles sont les erreurs fonctionnelles du composant (publiques ou internes) ou des erreurs fonctionnelles de l'interface d'un composant dont dépend le composant."
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
      ]
      groups += GroupDescription.create[
        name = "FacadeMethod_Generation_Group"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        controls += CheckboxDescription.create[
          name = "FacadeMethod_throwsExceptions_Check"
          labelExpression = "aql:self.getFeatureLabel('throwsExceptions')"
          helpExpression = "Indique que la méthode peut lever des exceptions."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:throwsExceptions"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('throwsExceptions',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeRealization_Generation_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        controls += TextDescription.create[
          name = "FacadeRealization_dsName_Txt"
          labelExpression = "aql:self.getFeatureLabel('dsName')"
          helpExpression = "Pour SQLJ, nom de la source de donnée (ds_name)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dsName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dsName',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeRealizationGroup_Conception_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealizationGroup"
        controls += ListDescription.create[
          name = "FacadeRealizationGroup_realizationOf_Ref"
          labelExpression = "aql:self.getFeatureLabel('realizationOf')"
          helpExpression = "Interfaces Métier du Composant que réalise la Facade. Ces interfaces doivent toutes être du même type (classiques ou WebService). Une interface requise doit être implémentée par une interface métier du composant avant d'être à son tour réalisée par la Facade."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('realizationOf',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('realizationOf',selection)"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "FacadeRealizationGroup_remoteAccess_Check"
          labelExpression = "aql:self.getFeatureLabel('remoteAccess')"
          helpExpression = ""
          isEnabledExpression = "aql:false"
          valueExpression = "feature:remoteAccess"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('remoteAccess',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "InterfaceCm_Generation_Group"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        controls += SelectDescription.create[
          name = "InterfaceCm_proxyImplementationStrategy_Enum"
          labelExpression = "aql:self.getFeatureLabel('proxyImplementationStrategy')"
          helpExpression = "Stratégie d'implémentation de l'interface."
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
      ]
      groups += GroupDescription.create[
        name = "RelatedBO_Conception_Group"
        domainClass = "equinoxeComposantsMetier.RelatedBO"
        controls += EqxHyperlinkDescription.create[
          name = "RelatedBO_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage de cet élément"
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
