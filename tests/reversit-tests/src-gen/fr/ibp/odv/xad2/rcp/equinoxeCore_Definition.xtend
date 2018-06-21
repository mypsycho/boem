package fr.ibp.odv.xad2.rcp

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.CustomExpression
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.HyperlinkWidgetStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.TextWidgetStyle
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.mypsycho.emf.modit.EModIt

class equinoxeCore_Definition {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "equinoxeCore_Definition".alias(Category.create[
      name = "equinoxeCore_Definition"
      groups += GroupDescription.create[
        name = "AbstractConstrainedMethod_Conception_Group"
        domainClass = "equinoxeCore.AbstractConstrainedMethod"
        controls += TextAreaDescription.create[
          name = "AbstractConstrainedMethod_precondition_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('precondition')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:precondition"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('precondition',newValue)"
            ]
          ]
        ]
        controls += TextAreaDescription.create[
          name = "AbstractConstrainedMethod_postcondition_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('postcondition')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:postcondition"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('postcondition',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractError_Conception_Group"
        domainClass = "equinoxeCore.AbstractError"
        controls += TextDescription.create[
          name = "AbstractError_code_Txt"
          labelExpression = "aql:self.getFeatureLabel('code')"
          helpExpression = "Clé de l'erreur, qui doit être unique dans son domaine de définition."
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
        controls += TextDescription.create[
          name = "AbstractError_domain_Txt"
          labelExpression = "aql:self.getFeatureLabel('domain')"
          helpExpression = "Domaine de définition de l'erreur."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:domain"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('domain',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
        controls += TextDescription.create[
          name = "AbstractError_qualifiedName_Txt"
          labelExpression = "aql:self.getFeatureLabel('qualifiedName')"
          helpExpression = ""
          isEnabledExpression = "aql:false"
          valueExpression = "feature:qualifiedName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('qualifiedName',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractErrorRaisingMethod_Conception_Group"
        domainClass = "equinoxeCore.AbstractErrorRaisingMethod"
        controls += ListDescription.create[
          name = "AbstractErrorRaisingMethod_possibleErrors_Ref"
          labelExpression = "aql:self.getFeatureLabel('possibleErrors')"
          helpExpression = ""
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
        name = "AbstractExtendedReturningMethod_Conception_Group"
        domainClass = "equinoxeCore.AbstractExtendedReturningMethod"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractExtendedReturningMethod_returnType_Ref"
          labelExpression = "aql:self.getFeatureLabel('returnType')"
          helpExpression = "Type de retour de la méthode."
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
      ]
      groups += GroupDescription.create[
        name = "AbstractExtendedReturningMethod_Documentation_Group"
        domainClass = "equinoxeCore.AbstractExtendedReturningMethod"
        controls += TextAreaDescription.create[
          name = "AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('returnTypeDocumentation')"
          helpExpression = "Documentation du type de retour de la méthode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:returnTypeDocumentation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('returnTypeDocumentation',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractReturningMethod_Conception_Group"
        domainClass = "equinoxeCore.AbstractReturningMethod"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractReturningMethod_returnType_Ref"
          labelExpression = "aql:self.getFeatureLabel('returnType')"
          helpExpression = "Type de retour de la méthode."
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
      ]
      groups += GroupDescription.create[
        name = "AbstractReturningMethod_Documentation_Group"
        domainClass = "equinoxeCore.AbstractReturningMethod"
        controls += TextAreaDescription.create[
          name = "AbstractReturningMethod_returnTypeDocumentation_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('returnTypeDocumentation')"
          helpExpression = "Documentation du type de retour de la méthode"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:returnTypeDocumentation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('returnTypeDocumentation',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractRootElement_Conception_Group"
        domainClass = "equinoxeCore.AbstractRootElement"
        controls += TextDescription.create[
          name = "AbstractRootElement_quartier_Txt"
          labelExpression = "aql:self.getFeatureLabel('quartier')"
          helpExpression = "Nom du quartier auquel appartient ce GTC (à remplir selon les informations fournies par le Cabinet d'Urbanisme)."
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
        controls += TextDescription.create[
          name = "AbstractRootElement_lgaName_Txt"
          labelExpression = "aql:self.getFeatureLabel('lgaName')"
          helpExpression = "Nom du LGA auquel appartient ce GTC (à remplir selon les informations fournies par le Cabinet d'Urbanisme)."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:lgaName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('lgaName',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "AbstractRootElement_dependencies_Ref"
          labelExpression = "aql:self.getFeatureLabel('dependencies')"
          helpExpression = "Dépendances vers les composants utilisés par ce composant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dependencies"
          displayExpression = "aql:value.getComponentLabel()"
          onClickOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectInEqxExplorerViewDoubleClick(onClickEventKind)"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Ajouter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxAddDependency()"
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
      ]
      groups += GroupDescription.create[
        name = "AbstractRootElement_Generation_Group"
        domainClass = "equinoxeCore.AbstractRootElement"
        controls += CheckboxDescription.create[
          name = "AbstractRootElement_standardGeneration_Check"
          labelExpression = "aql:self.getFeatureLabel('standardGeneration')"
          helpExpression = "Génération standard, incluant l'accès aux données modélisées"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:standardGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('standardGeneration',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractRootElement_errorGeneration_Check"
          labelExpression = "aql:self.getFeatureLabel('errorGeneration')"
          helpExpression = "Activer cette option pour générer une classe 'Errors.java'"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:errorGeneration"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('errorGeneration',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicType_Conception_Group"
        domainClass = "equinoxeCore.BasicType"
        controls += EqxHyperlinkDescription.create[
          name = "BasicType_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage du type"
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
        controls += CheckboxDescription.create[
          name = "BasicType_wsCompatible_Check"
          labelExpression = "aql:self.getFeatureLabel('wsCompatible')"
          helpExpression = "Indique si ce type est publiable sur un WebService."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isWsCompatibleOnBaicTypeActive()"
          valueExpression = "feature:wsCompatible"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('wsCompatible',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicType_Generation_Group"
        domainClass = "equinoxeCore.BasicType"
        controls += CheckboxDescription.create[
          name = "BasicType_cloneable_Check"
          labelExpression = "aql:self.getFeatureLabel('cloneable')"
          helpExpression = "Indique si la méthode Java \"clone()\" est disponible sur le type."
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
          labelExpression = "aql:self.getFeatureLabel('javaClassName')"
          helpExpression = "Nom long de la classe Java correspondant au type.\nExemple : java.lang.Boolean"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:javaClassName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('javaClassName',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicType_momTypeArguments_Txt"
          labelExpression = "aql:self.getFeatureLabel('momTypeArguments')"
          helpExpression = "Dimension du type MOM par défaut pour les éléments de ce type de base."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momTypeArguments"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momTypeArguments',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicType_momTypeClass_Txt"
          labelExpression = "aql:self.getFeatureLabel('momTypeClass')"
          helpExpression = "Type de sérialisation par défaut des éléments de ce type de base. (Le type de sérialisation est utilisé pour la communication avec le Mainframe).\nIndiquer le nom long de la classe Java qui implémente le type MOM.\nExemple : ibp.ate.common.cbo.logicalvalue.mom.MomDate"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momTypeClass"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momTypeClass',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicTypeFAttribute_Conception_Group"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeFAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Type de l'attribut :\n BasicType\n Enumeration\n Objet de base (CBO)"
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
        controls += CheckboxDescription.create[
          name = "BasicTypeFAttribute_calcule_Check"
          labelExpression = "aql:self.getFeatureLabel('calcule')"
          helpExpression = "Indique qu'il s'agit d'un attribut calculé (\"derived\")."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:calcule"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('calcule',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_table_Txt"
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
          name = "BasicTypeFAttribute_colonne_Txt"
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
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_referenceDma_Txt"
          labelExpression = "aql:self.getFeatureLabel('referenceDma')"
          helpExpression = "Référence à la documentation métier d'un attribut. C'est le code de la rubrique PAC dans le dictionnaire de données PAC."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDma"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDma',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "Cbo_Conception_Group"
        domainClass = "equinoxeCore.Cbo"
        controls += EqxHyperlinkDescription.create[
          name = "Cbo_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage"
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
        controls += TextDescription.create[
          name = "Cbo_referenceDmc_Txt"
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
          name = "Cbo_typeMomParDefaut_Ref"
          labelExpression = "aql:self.getFeatureLabel('typeMomParDefaut')"
          helpExpression = "Type MOM par défaut pour le CBO."
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
                browseExpression = "aql:self.eqxSetFromListView('typeMomParDefaut')"
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
      ]
      groups += GroupDescription.create[
        name = "Cbo_Generation_Group"
        domainClass = "equinoxeCore.Cbo"
        controls += CheckboxDescription.create[
          name = "Cbo_cloneable_Check"
          labelExpression = "aql:self.getFeatureLabel('cloneable')"
          helpExpression = "Indique si la méthode Java \"clone()\" est disponible sur le CBO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cloneable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cloneable',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "Cbo_javaClassName_Txt"
          labelExpression = "aql:self.getFeatureLabel('javaClassName')"
          helpExpression = "Nom long de la classe Java du CBO. \nExemple : \"ibp.ate.common.cbo.code.Currency\""
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
          labelExpression = "aql:self.getFeatureLabel('useCboFactory')"
          helpExpression = "Indique si le CBO est instancié par une fabrique (design pattern Factory)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:useCboFactory"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useCboFactory',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "CboAttribute_Conception_Group"
        domainClass = "equinoxeCore.CboAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "CboAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Type de l'attribut :\n BasicType\n Enumeration\n Objet de base (CBO)"
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
          labelExpression = "aql:self.getFeatureLabel('referenceDma')"
          helpExpression = "Référence à la Documentation Métier d'un Attribut. C'est le code de la rubrique PAC dans le dictionnaire de données PAC."
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
          name = "CboAttribute_colonne_Txt"
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
      ]
      groups += GroupDescription.create[
        name = "CbomomType_Conception_Group"
        domainClass = "equinoxeCore.CbomomType"
        controls += TextDescription.create[
          name = "CbomomType_arguments_Txt"
          labelExpression = "aql:self.getFeatureLabel('arguments')"
          helpExpression = "Laisser ce champ vide."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:arguments"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('arguments',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "ComplexType_Conception_Group"
        domainClass = "equinoxeCore.ComplexType"
        controls += EqxHyperlinkDescription.create[
          name = "ComplexType_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage du type"
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
        name = "Converter_Conception_Group"
        domainClass = "equinoxeCore.Converter"
        controls += CheckboxDescription.create[
          name = "Converter_complexConverter_Check"
          labelExpression = "aql:self.getFeatureLabel('complexConverter')"
          helpExpression = "Indique que le convertisseur est complexe : il produit et consomme plusieurs chaînes de caractères.\nIl renvoie une Map de String."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:complexConverter"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('complexConverter',newValue)"
            ]
          ]
        ]
        controls += TextAreaDescription.create[
          name = "Converter_constants_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('constants')"
          helpExpression = "Champ technique permettant d'ajouter des attributs supplémentaires à la génération du \"ScreenFormat\" pour utilisation par le convertisseur.\nDéfinir un attribut par ligne (utiliser Ctrl+Enter pour aller à la ligne)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.complexConverter"
          valueExpression = "feature:constants"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('constants',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Converter_patronParDefaut_Ref"
          labelExpression = "aql:self.getFeatureLabel('patronParDefaut')"
          helpExpression = "Patron de conversion par défaut pour ce convertisseur."
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
                browseExpression = "aql:self.eqxSetFromListView('patronParDefaut')"
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
      ]
      groups += GroupDescription.create[
        name = "CtAttribute_Conception_Group"
        domainClass = "equinoxeCore.CtAttribute"
        controls += CheckboxDescription.create[
          name = "CtAttribute_derive_Check"
          labelExpression = "aql:self.getFeatureLabel('derive')"
          helpExpression = "Indique si l'attribut est calculé (derived)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:derive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('derive',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_final_Check"
          labelExpression = "aql:self.getFeatureLabel('final')"
          helpExpression = "Indique si l'attribut est final : une valeur ne peut lui être affectée qu'une unique fois."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:final"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('final',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_statique_Check"
          labelExpression = "aql:self.getFeatureLabel('statique')"
          helpExpression = "Indique si l'attribut est statique : dans ce cas, il n'y a qu'une seule instance de l'attribut partagée par toutes les instances de la classe de conception."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:statique"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('statique',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Type de l'attribut."
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
        controls += SelectDescription.create[
          name = "CtAttribute_visibility_Enum"
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
        name = "CtClass_Conception_Group"
        domainClass = "equinoxeCore.CtClass"
        controls += EqxHyperlinkDescription.create[
          name = "CtClass_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage du type"
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
        controls += CheckboxDescription.create[
          name = "CtClass_abstraite_Check"
          labelExpression = "aql:self.getFeatureLabel('abstraite')"
          helpExpression = "Indique si cette classe de conception est abstraite (abstract)."
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
          labelExpression = "aql:self.getFeatureLabel('final')"
          helpExpression = "Indique si cette classe de conception est finale : dans ce cas, aucune autre classe ne peut hériter de cette classe de conception."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:final"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('final',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "CtClass_generable_Check"
          labelExpression = "aql:self.getFeatureLabel('generable')"
          helpExpression = "Indique si cet élément doit être généré."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:generable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('generable',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "CtClass_implementeLesInterfaces_Ref"
          labelExpression = "aql:self.getFeatureLabel('implementeLesInterfaces')"
          helpExpression = "Interfaces de Conception implémentées par la classe."
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
      ]
      groups += GroupDescription.create[
        name = "CtInterface_Conception_Group"
        domainClass = "equinoxeCore.CtInterface"
        controls += CheckboxDescription.create[
          name = "CtInterface_generable_Check"
          labelExpression = "aql:self.getFeatureLabel('generable')"
          helpExpression = "Indique si cet élément doit être généré."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:generable"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('generable',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtInterface_superType_Ref"
          labelExpression = "aql:self.getFeatureLabel('superType')"
          helpExpression = "Lien d'héritage de cette interface"
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
                browseExpression = "aql:self.eqxSetFromListView('superType')"
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
        name = "CtOperation_Conception_Group"
        domainClass = "equinoxeCore.CtOperation"
        controls += CheckboxDescription.create[
          name = "CtOperation_abstraite_Check"
          labelExpression = "aql:self.getFeatureLabel('abstraite')"
          helpExpression = "Indique que la méthode est abstraite : seule sa signature est définie, son implémentation est déléguée à une sous-classe.\nUne méthode peut être définie comme abstraite uniquement sur une classe abstraite.\nUne opération (définie donc sur une interface de conception) est toujours abstraite."
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
          labelExpression = "aql:self.getFeatureLabel('static')"
          helpExpression = "Indique si l'opération ou la méthode est statique : dans ce cas, elle n'est pas rattachée à une instance particulière de la classe et elle peut être appelée même si la classe n'est pas instanciée."
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
          labelExpression = "aql:self.getFeatureLabel('synchronized')"
          helpExpression = "Indique que l'opération ou la méthode est synchronisée (synchronized)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:synchronized"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('synchronized',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "CtOperation_visibility_Enum"
          labelExpression = "aql:self.getFeatureLabel('visibility')"
          helpExpression = "Visibilité de l'opération ou de la méthode :"
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
        name = "DirectAccessMethod_Conception_Group"
        domainClass = "equinoxeCore.DirectAccessMethod"
        controls += SelectDescription.create[
          name = "DirectAccessMethod_callType_Enum"
          labelExpression = "aql:self.getFeatureLabel('callType')"
          helpExpression = "Type d'accès aux données (uniquement documentaire) :"
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
          labelExpression = "aql:self.getFeatureLabel('conversionMode')"
          helpExpression = "Les caractères composant le message à destination du mainframe peuvent être convertis :"
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
        name = "DocumentableElement_Documentation_Group"
        domainClass = "equinoxeCore.DocumentableElement"
        controls += TextAreaDescription.create[
          name = "DocumentableElement_documentation_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('documentation')"
          helpExpression = "Documentation de l'élément."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:documentation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('documentation',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DynamicAttribute_Conception_Group"
        domainClass = "equinoxeCore.DynamicAttribute"
        controls += SelectDescription.create[
          name = "DynamicAttribute_attributeType_Enum"
          labelExpression = "aql:self.getFeatureLabel('attributeType')"
          helpExpression = "Type de la donnée attendue par le convertisseur"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:attributeType"
          candidatesExpression = "aql:equinoxeCore::EDynamicAttributeType.eLiterals.instance"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('attributeType',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DynamicAttribute_staticValueType_Enum"
          labelExpression = "aql:self.getFeatureLabel('staticValueType')"
          helpExpression = "Type de la valeur qu'il faut fournir, uniquement pour un type d'attribut Valeur statique.\nType de base (classe Wrapper) :"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.attributeType = equinoxeCore::EDynamicAttributeType::valeurStatique"
          valueExpression = "feature:staticValueType"
          candidatesExpression = "aql:equinoxeCore::EDynamicAttributeValueType.eLiterals.instance"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('staticValueType',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "Enumeration_Conception_Group"
        domainClass = "equinoxeCore.Enumeration"
        controls += CheckboxDescription.create[
          name = "Enumeration_extensible_Check"
          labelExpression = "aql:self.getFeatureLabel('extensible')"
          helpExpression = "Ne pas utiliser."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:extensible"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('extensible',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "EnumerationValue_Conception_Group"
        domainClass = "equinoxeCore.EnumerationValue"
        controls += TextDescription.create[
          name = "EnumerationValue_value_Txt"
          labelExpression = "aql:self.getFeatureLabel('value')"
          helpExpression = "Chaîne de caractères correspondant à la valeur."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:value"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('value',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "EnumerationValue_Documentation_Group"
        domainClass = "equinoxeCore.EnumerationValue"
        controls += TextAreaDescription.create[
          name = "EnumerationValue_description_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('description')"
          helpExpression = "Documentation associée à la valeur."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:description"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('description',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "FeClass_Conception_Group"
        domainClass = "equinoxeCore.FeClass"
        controls += CheckboxDescription.create[
          name = "FeClass_withPropagation_Check"
          labelExpression = "aql:self.getFeatureLabel('withPropagation')"
          helpExpression = "Indique que les erreurs redéfinies se fait sans redéfinition du message : le message de l'erreur source est utilisé.\nDans le cas contraire, on définit un nouveau message d'erreur statique."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:withPropagation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withPropagation',newValue)"
            ]
          ]
        ]
        controls += ListDescription.create[
          name = "FeClass_convertedError_Ref"
          labelExpression = "aql:self.getFeatureLabel('convertedError')"
          helpExpression = "Erreurs fonctionnelles redéfinies automatiquement en l'erreur fonctionnelle courante."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('convertedError',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('convertedError',selection)"
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "Format_Conception_Group"
        domainClass = "equinoxeCore.Format"
        controls += ListDescription.create[
          name = "Format_implementeLesInterfaces_Ref"
          labelExpression = "aql:self.getFeatureLabel('implementeLesInterfaces')"
          helpExpression = "Interfaces de Conception implémentées par le format."
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
          name = "Format_isBdt_Check"
          labelExpression = "aql:self.getFeatureLabel('isBdt')"
          helpExpression = "Indique que le format est un Business Data Types (ou Format Métier Commun).\nLes BDT permettent d\\'avoir une représentation unique d\\'un objet métier qui est partagée par toutes les couches (CMR, CMT, CP, voire CD) afin de faciliter le travail de développement et de maintenance. Les BDT sont externalisés par rapport aux CMR, et regroupés au sein de GTC."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isBdt"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isBdt',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "Format_referenceDmc_Txt"
          labelExpression = "aql:self.getFeatureLabel('referenceDmc')"
          helpExpression = "Référence à la documentation métier d'une Classe. C'est le nom de la classe de donnée dans le MCD MEGA."
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
        name = "FormatFAttribute_Conception_Group"
        domainClass = "equinoxeCore.FormatFAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "FormatFAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Collection de Format : format simple qui type chaque item de la collection.\n Sous-Format Réutilisé : format simple réutilisé (c'est-à-dire référencé)."
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
          name = "FormatFAttribute_colonne_Txt"
          labelExpression = "aql:self.getFeatureLabel('colonne')"
          helpExpression = "Pour Collection de Format et Sous-Format Réutilisé de type BDT : identification de la colonne à laquelle est rattachée la donnée (persistance physique)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:colonne"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('colonne',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "FormatFAttribute_table_Txt"
          labelExpression = "aql:self.getFeatureLabel('table')"
          helpExpression = "Pour Collection de Format et Sous-Format Réutilisé de type BDT : identification de la table à laquelle est rattachée la donnée (persistance physique).\n"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:table"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('table',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "FormatFAttribute_referenceDmr_Txt"
          labelExpression = "aql:self.getFeatureLabel('referenceDmr')"
          helpExpression = "Pour Collection de Format et Sous-Format Réutilisé : référence à la Documentation Métier d'un Rôle. C'est le nom du rôle correspondant dans le MCD MEGA."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:referenceDmr"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('referenceDmr',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "HelpChannel_Conception_Group"
        domainClass = "equinoxeCore.HelpChannel"
        controls += TextDescription.create[
          name = "HelpChannel_name_Txt"
          labelExpression = "aql:self.getFeatureLabel('name')"
          helpExpression = "Nom du canal d'aide en ligne générique."
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
      ]
      groups += GroupDescription.create[
        name = "HostCall_Conception_Group"
        domainClass = "equinoxeCore.HostCall"
        controls += TextDescription.create[
          name = "HostCall_transactionId_Txt"
          labelExpression = "aql:self.getFeatureLabel('transactionId')"
          helpExpression = "Identifiant du programme Host appelé."
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
          labelExpression = "aql:self.getFeatureLabel('calltype')"
          helpExpression = "Type d'appel :"
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
          labelExpression = "aql:self.getFeatureLabel('conversionMode')"
          helpExpression = "Les caractères composant le message à destination du mainframe peuvent être convertis :"
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
        name = "HwFormat_Conception_Group"
        domainClass = "equinoxeCore.HwFormat"
        controls += SelectDescription.create[
          name = "HwFormat_conversionMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('conversionMode')"
          helpExpression = "Les caractères composant le message à destination du mainframe peuvent être convertis :"
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
        controls += SelectDescription.create[
          name = "HwFormat_direction_Enum"
          labelExpression = "aql:self.getFeatureLabel('direction')"
          helpExpression = "Direction :"
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
          labelExpression = "aql:self.getFeatureLabel('fepi')"
          helpExpression = "Indique que l'appel s'effectue en mode FEPI (Utilisation du moniteur FEPI)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:fepi"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('fepi',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormat_fepiSubProgId_Txt"
          labelExpression = "aql:self.getFeatureLabel('fepiSubProgId')"
          helpExpression = "Si le programme Host appelé sert à assurer la communication avec un sous-programme en mode FEPI : identifiant de ce sous-programme en mode FEPI.\nExemple : WXTI assure la communication vers EXTI."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:fepiSubProgId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('fepiSubProgId',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormat_version_Txt"
          labelExpression = "aql:self.getFeatureLabel('version')"
          helpExpression = "Version du programme Host."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:version"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('version',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "HwFormatAttribute_Conception_Group"
        domainClass = "equinoxeCore.HwFormatAttribute"
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostName_Txt"
          labelExpression = "aql:self.getFeatureLabel('hostName')"
          helpExpression = "Nom du champ côté Host."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:hostName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostName',newValue)"
            ]
          ]
          style = TextWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
          ]
        ]
        controls += SelectDescription.create[
          name = "HwFormatAttribute_hostType_Enum"
          labelExpression = "aql:self.getFeatureLabel('hostType')"
          helpExpression = "Typage du champ côté Host :"
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
          labelExpression = "aql:self.getFeatureLabel('libellePacbase')"
          helpExpression = "Libellé Pacbase associé au champ côté Host."
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
          labelExpression = "aql:self.getFeatureLabel('hostLength')"
          helpExpression = "Pour les types Host String, Integer et Float : longueur (length) du champ côté Host."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and (self.hostType = equinoxeCore::EnumHostFieldType::string or self.hostType = equinoxeCore::EnumHostFieldType::integer or self.hostType = equinoxeCore::EnumHostFieldType::float)"
          valueExpression = "feature:hostLength"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostLength',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostFloatLength_Txt"
          labelExpression = "aql:self.getFeatureLabel('hostFloatLength')"
          helpExpression = "Pour le type Host Float uniquement : longueur flottante (floatLength) du champ côté Host."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.hostType = equinoxeCore::EnumHostFieldType::float"
          valueExpression = "feature:hostFloatLength"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostFloatLength',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostSign_Txt"
          labelExpression = "aql:self.getFeatureLabel('hostSign')"
          helpExpression = "Pour les types Host Integer et Float : signe (sign) du champ côté Host."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and (self.hostType = equinoxeCore::EnumHostFieldType::integer or self.hostType = equinoxeCore::EnumHostFieldType::float)"
          valueExpression = "feature:hostSign"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostSign',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_hostFormat_Txt"
          labelExpression = "aql:self.getFeatureLabel('hostFormat')"
          helpExpression = "Pour les types Host Date et Timestamp : Format de date du champ côté Host."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and (self.hostType = equinoxeCore::EnumHostFieldType::date or self.hostType = equinoxeCore::EnumHostFieldType::timestamp)"
          valueExpression = "feature:hostFormat"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('hostFormat',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "HwFormatAttribute_technical_Check"
          labelExpression = "aql:self.getFeatureLabel('technical')"
          helpExpression = "Indique que le champ côté Host est un champ technique : il n'a pas d'existence côté Equinoxe. \nPar exemple, ce champ ne peut pas être sélectionné en tant que donnée d'une propriété de composant graphique (dans un écran).\nNote : les champs de l'entête technique d'un message sont des champs techniques."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:technical"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('technical',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "HwFormatAttribute_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Typage côté Equinoxe du champ, peut être :\n BasicType\n Enumeration\n Objet de base (CBO)\nPar défaut, le typage est une chaîne de caractères.\nNote : typage non nécessaire si le champ est technique."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.technical"
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
        name = "IbpNamedElementDeprecable_Conception_Group"
        domainClass = "equinoxeCore.IbpNamedElementDeprecable"
        controls += CheckboxDescription.create[
          name = "IbpNamedElementDeprecable_deprecated_Check"
          labelExpression = "aql:self.getFeatureLabel('deprecated')"
          helpExpression = "Indique que cet objet est obsolète et ne doit plus être référencé dans les modèles."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:deprecated"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('deprecated',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "IbpNamedElementDeprecable_Documentation_Group"
        domainClass = "equinoxeCore.IbpNamedElementDeprecable"
        controls += TextAreaDescription.create[
          name = "IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('commentsDeprecated')"
          helpExpression = "Indications à renseigner lorsqu'un élément est marqué obsolète. Typiquement, indiquer quel autre élément doit être utilisé."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.deprecated"
          valueExpression = "feature:commentsDeprecated"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('commentsDeprecated',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "MethodParameter_Conception_Group"
        domainClass = "equinoxeCore.MethodParameter"
        controls += EqxHyperlinkDescription.create[
          name = "MethodParameter_type_Ref"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Type du paramètre."
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
        name = "MomAttribute_Conception_Group"
        domainClass = "equinoxeCore.MomAttribute"
        controls += TextDescription.create[
          name = "MomAttribute_cobolFormat_Txt"
          labelExpression = "aql:self.getFeatureLabel('cobolFormat')"
          helpExpression = "Format (type) Cobol"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cobolFormat"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolFormat',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "MomAttribute_cobolName_Txt"
          labelExpression = "aql:self.getFeatureLabel('cobolName')"
          helpExpression = "Nom de variable Cobol"
          isEnabledExpression = "aql:false"
          valueExpression = "feature:cobolName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolName',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "MomTypedElement_Generation_Group"
        domainClass = "equinoxeCore.MomTypedElement"
        controls += TextAreaDescription.create[
          name = "MomTypedElement_cobolFormats_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('cobolFormats')"
          helpExpression = "Format COBOL des champs de l'attribut. \nPlacer un format par ligne."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isMomTypedElementUseDefaultUnusedEnabled() and not self.useDefaultsUnused"
          valueExpression = "feature:cobolFormats"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolFormats',newValue)"
            ]
          ]
        ]
        controls += TextAreaDescription.create[
          name = "MomTypedElement_cobolNames_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('cobolNames')"
          helpExpression = "Nom de variable COBOL des champs de l'attribut. \nPlacer un nom de variable par ligne.\n"
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isMomTypedElementUseDefaultUnusedEnabled() and not self.useDefaultsUnused"
          valueExpression = "feature:cobolNames"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cobolNames',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "MomTypedElement_conversionMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('conversionMode')"
          helpExpression = "Mode de conversion à l'encodage des données MOM. Lorsqu'on laisse la valeur par défaut, la valeur positionnée sur le composant est utilisée."
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
        controls += TextDescription.create[
          name = "MomTypedElement_momTypeLg_Txt"
          labelExpression = "aql:self.getFeatureLabel('momTypeLg')"
          helpExpression = "Arguments du type MOM : \n pour un type de base : taille MOM. La taille par défaut vaut 10.\n pour un type CBO : arguments du constructeur du type MOM CBO."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:momTypeLg"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('momTypeLg',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "MomTypedElement_typeMom_Ref"
          labelExpression = "aql:self.getFeatureLabel('typeMom')"
          helpExpression = "Type de sérialisation de l'attribut (utilisé pour la communication avec le Mainframe). \nCe type est à renseigner uniquement pour les attributs de type CBO."
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
                browseExpression = "aql:self.eqxSetFromListView('typeMom')"
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
        controls += CheckboxDescription.create[
          name = "MomTypedElement_useDefaultsUnused_Check"
          labelExpression = "aql:self.getFeatureLabel('useDefaultsUnused')"
          helpExpression = "Utiliser les noms de variables et les formats COBOL par défaut définis sur le type MOM sélectionné."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isMomTypedElementUseDefaultUnusedEnabled()"
          valueExpression = "feature:useDefaultsUnused"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useDefaultsUnused',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "MultiplicityElement_Conception_Group"
        domainClass = "equinoxeCore.MultiplicityElement"
        controls += SelectDescription.create[
          name = "MultiplicityElement_multiplicite_Enum"
          labelExpression = "aql:self.getFeatureLabel('multiplicite')"
          helpExpression = "Format simple : 1 uniquement.\n Collection de Format : multiplicité de la collection : forcément supérieure à 1.\n Sous-Format Réutilisé : multiplicité de la référence au Format réutilisé.\nValeurs possibles :"
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
      ]
      groups += GroupDescription.create[
        name = "NamedElement_Conception_Group"
        domainClass = "equinoxeCore.NamedElement"
        controls += TextDescription.create[
          name = "NamedElement_name_Txt"
          labelExpression = "aql:self.getFeatureLabel('name')"
          helpExpression = "Nom de l'élément."
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
      ]
      groups += GroupDescription.create[
        name = "ParameterElement_Conception_Group"
        domainClass = "equinoxeCore.ParameterElement"
        controls += TextDescription.create[
          name = "ParameterElement_javaInterface_Txt"
          labelExpression = "aql:self.getFeatureLabel('javaInterface')"
          helpExpression = "Nom de l'Interface Java dans lequel est défini cet élément."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:javaInterface"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('javaInterface',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "TableHwFormat_Conception_Group"
        domainClass = "equinoxeCore.TableHwFormat"
        controls += CustomDescription.create[
          name = "TableHwFormat_multiplicite_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('multiplicite')"
          helpExpression = "Multiplicité de la table. Doit être un entier positif."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:multiplicite"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('multiplicite',newValue)"
          ]
          customExpressions += CustomExpression.create[
            name = "minValue"
            customExpression = "aql:0"
          ]
          customExpressions += CustomExpression.create[
            name = "maxValue"
            customExpression = "aql:99999"
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "TypeCollection_Conception_Group"
        domainClass = "equinoxeCore.TypeCollection"
        controls += EqxHyperlinkDescription.create[
          name = "TypeCollection_type_Ref"
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
      ]
      groups += GroupDescription.create[
        name = "TypeCollection_Generation_Group"
        domainClass = "equinoxeCore.TypeCollection"
        controls += CustomDescription.create[
          name = "TypeCollection_multiplicityMomMax_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('multiplicityMomMax')"
          helpExpression = "Multiplicité MOM maximum pour la collection de vues."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          customExpressions += CustomExpression.create[
            name = "valueExpression"
            customExpression = "feature:multiplicityMomMax"
          ]
          customExpressions += CustomExpression.create[
            name = "valueSetter"
            customExpression = "aql:self.eqxPut('multiplicityMomMax',newValue)"
          ]
          customExpressions += CustomExpression.create[
            name = "minValue"
            customExpression = "aql:0"
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "TypesGroup_Generation_Group"
        domainClass = "equinoxeCore.TypesGroup"
        controls += TextDescription.create[
          name = "TypesGroup_javaPackageName_Txt"
          labelExpression = "aql:self.getFeatureLabel('javaPackageName')"
          helpExpression = "Nom du package Java dans lequel se trouvent les types définis dans le groupe. Par défaut, il s'agit de \"ibp.common\"."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:javaPackageName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('javaPackageName',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "WsError_Conception_Group"
        domainClass = "equinoxeCore.WsError"
        controls += ListDescription.create[
          name = "WsError_erreursInterceptees_Ref"
          labelExpression = "aql:self.getFeatureLabel('erreursInterceptees')"
          helpExpression = "Erreurs redéfinies automatiquement en l'erreur fonctionnelle courante."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('erreursInterceptees',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('erreursInterceptees',selection)"
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "WsOperation_Conception_Group"
        domainClass = "equinoxeCore.WsOperation"
        controls += ListDescription.create[
          name = "WsOperation_possibleErrors_Ref"
          labelExpression = "aql:self.getFeatureLabel('possibleErrors')"
          helpExpression = "Erreurs qui peuvent être renvoyées par le service. Les erreurs disponibles sont les erreurs modélisées directement sur l'interface."
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
                browseExpression = "aql:self.eqxAddFromListView('possibleErrors',true)"
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
        name = "WsOperation_Generation_Group"
        domainClass = "equinoxeCore.WsOperation"
        controls += SelectDescription.create[
          name = "WsOperation_transactionalMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('transactionalMode')"
          helpExpression = ""
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
    ])
  }
  
  def getExtras() {
    context.extras
  }

  def <T extends org.eclipse.sirius.viewpoint.description.IdentifiedElement> at(Iterable<T> values, Object key) {
    context.at(values, key) as T // Xtend inference fails?
  }

}
