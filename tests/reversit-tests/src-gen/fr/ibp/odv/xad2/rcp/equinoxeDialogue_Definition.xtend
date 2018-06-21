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
import org.eclipse.sirius.properties.SelectWidgetConditionalStyle
import org.eclipse.sirius.properties.SelectWidgetStyle
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

class equinoxeDialogue_Definition {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "equinoxeDialogue_Definition".alias(Category.create[
      name = "equinoxeDialogue_Definition"
      groups += GroupDescription.create[
        name = "AWADialogFormats_Conception_Group"
        domainClass = "equinoxeDialogue.AWADialogFormats"
        controls += EqxHyperlinkDescription.create[
          name = "AWADialogFormats_inputFormat_Ref"
          labelExpression = "aql:self.getFeatureLabel('inputFormat')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('inputFormat')"
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
          name = "AWADialogFormats_outputFormat_Ref"
          labelExpression = "aql:self.getFeatureLabel('outputFormat')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('outputFormat')"
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
      ]
      groups += GroupDescription.create[
        name = "AbstractCboDisplayer_Conception_Group"
        domainClass = "equinoxeDialogue.AbstractCboDisplayer"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractCboDisplayer_cboCode_Ref"
          labelExpression = "aql:self.getFeatureLabel('cboCode')"
          helpExpression = "Code object (CBO code) dont la liste de codes affiche les valeurs."
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
        controls += TextDescription.create[
          name = "AbstractCboDisplayer_specificLabel_Txt"
          labelExpression = "aql:self.getFeatureLabel('specificLabel')"
          helpExpression = "Propriété spécifique du CBO utilisée pour afficher un élément de la liste."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:specificLabel"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('specificLabel',newValue)"
            ]
          ]
          conditionalStyles += TextWidgetConditionalStyle.create[
            preconditionExpression = "aql:self.standardLabel = equinoxeDialogue::EnumCboLabel::_Undefined"
            style = TextWidgetStyle.create[
              labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractCboDisplayer_standardLabel_Enum"
          labelExpression = "aql:self.getFeatureLabel('standardLabel')"
          helpExpression = "Propriété standard du CBO utilisée pour afficher un élément de la liste."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and (self.specificLabel = '' or self.specificLabel = null)"
          valueExpression = "feature:standardLabel"
          candidatesExpression = "aql:equinoxeDialogue::EnumCboLabel.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('standardLabel',newValue)"
            ]
          ]
          conditionalStyles += SelectWidgetConditionalStyle.create[
            preconditionExpression = "aql:self.specificLabel = '' or self.specificLabel = null"
            style = SelectWidgetStyle.create[
              labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("bold")
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractDocList_Conception_Group"
        domainClass = "equinoxeDialogue.AbstractDocList"
        controls += SelectDescription.create[
          name = "AbstractDocList_realisation_Enum"
          labelExpression = "aql:self.getFeatureLabel('realisation')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:realisation"
          candidatesExpression = "aql:equinoxeDialogue::EnumListRealisation.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('realisation',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractDocList_selectionMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('selectionMode')"
          helpExpression = "Mode de sélection dans la liste.\nMULTIPLE_SELECTION est disponible uniquement quand la réalisation est \"listBox\" et que l'écran se situe sur le canal INTERNET.\nNO_SELECTION est disponible uniquement si le nombre de lignes visibles est supérieur à 1.\nValeurs possibles :"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:selectionMode"
          candidatesExpression = "aql:self.getAbstractDocListSelectionModeCandidate()"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('selectionMode',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "AbstractDocList_targetedWidget_Ref"
          labelExpression = "aql:self.getFeatureLabel('targetedWidget')"
          helpExpression = "Pour un filtre de bloc uniquement : tableau graphique contenu dans le bloc sur lequel s'applique le filtre de bloc. La modélisation de la colonne de tableau sur laquelle s'applique le filtre n'est pas nécessaire."
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
      ]
      groups += GroupDescription.create[
        name = "AbstractDocList_Affichage_Group"
        domainClass = "equinoxeDialogue.AbstractDocList"
        controls += SelectDescription.create[
          name = "AbstractDocList_orientation_Enum"
          labelExpression = "aql:self.getFeatureLabel('orientation')"
          helpExpression = "Orientation des boutons radios (vertical par défaut ou horizontal). Editable seulement pour une réalisation de type 'radios'."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.realisation = equinoxeDialogue::EnumListRealisation::radios"
          valueExpression = "feature:orientation"
          candidatesExpression = "aql:equinoxeDialogue::EnumOrientation.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('orientation',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractStateMachine_Conception_Group"
        domainClass = "equinoxeDialogue.AbstractStateMachine"
        controls += TextAreaDescription.create[
          name = "AbstractStateMachine_initialization_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('initialization')"
          helpExpression = "Description des initialisations avant le déroulement de la procédure. Notamment les traitements d'initialisation du contexte."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:initialization"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('initialization',newValue)"
            ]
          ]
        ]
        controls += TextAreaDescription.create[
          name = "AbstractStateMachine_finalization_TxtArea"
          labelExpression = "aql:self.getFeatureLabel('finalization')"
          helpExpression = "Décrire les finalisations avant de quitter la procédure."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:finalization"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('finalization',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractTransition_Conception_Group"
        domainClass = "equinoxeDialogue.AbstractTransition"
        controls += EqxHyperlinkDescription.create[
          name = "AbstractTransition_target_Ref"
          labelExpression = "Etat cible"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('target')"
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
        controls += TextAreaDescription.create[
          name = "AbstractTransition_condition_TxtArea"
          labelExpression = "Condition"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:condition"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('condition',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractUIComponent_Conception_Group"
        domainClass = "equinoxeDialogue.AbstractUIComponent"
        controls += TextDescription.create[
          name = "AbstractUIComponent_codeAction_Txt"
          labelExpression = "aql:self.getFeatureLabel('codeAction')"
          helpExpression = "Elément du nom du composant.
          Le nom du CP/CD est construit sur le modèle [Code Objet Bancaire][Code action]_[Numéro]"
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
          labelExpression = "aql:self.getFeatureLabel('numeroSequentiel')"
          helpExpression = "Elément du nom du composant (facultatif).\nLe nom du CD est construit sur le modèle [Code Objet Bancaire][Code action]_[Numéro]"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:numeroSequentiel"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('numeroSequentiel',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "AbstractUIComponent_isDynamic_Check"
          labelExpression = "aql:self.getFeatureLabel('isDynamic')"
          helpExpression = "Indique que le composant est dynamique : il s'interface entre une procédure appelante et les sous-procédures (composants concrets) que celle-ci doit appeler, déléguant les appels de la procédure appelante à l'un ou l'autre des composants concrets."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isDynamic"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isDynamic',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AbstractUIRealization_Conception_Group"
        domainClass = "equinoxeDialogue.AbstractUIRealization"
        controls += SelectDescription.create[
          name = "AbstractUIRealization_media_Enum"
          labelExpression = "aql:self.getFeatureLabel('media')"
          helpExpression = "Champ obligatoire, le media utilisé :"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:media"
          candidatesExpression = "aql:equinoxeDialogue::EnumMedia.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('media',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "AbstractUIRealization_canal_Enum"
          labelExpression = "aql:self.getFeatureLabel('canal')"
          helpExpression = "Le canal associé à la réalisation.\nLe canal sélectionné influe sur les composants graphiques qui peuvent être modélisés dans les écrans de la réalisation.\nValeurs possibles :"
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
          labelExpression = "aql:self.getFeatureLabel('bank')"
          helpExpression = "Le nom de la banque qui introduit une particularité, à l'origine de cette réalisation. Dans la plupart des cas, aucune spécificité en terme de rendu des écrans n'est introduite par la banque. En général, il ne sera donc pas utile de renseigner ce paramètre.\nExemples :"
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
          labelExpression = "aql:self.getFeatureLabel('lang')"
          helpExpression = "Code de la langue qui introduit une particularité, à l'origine de cette réalisation. Par défaut, la langue implémentée est le français. Avant que des développements n'aient lieu dans une langue différente, il n'est pas nécessaire de remplir ce sélecteur."
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
          labelExpression = "aql:self.getFeatureLabel('country')"
          helpExpression = "Code du pays qui introduit une particularité, à l'origine de cette réalisation. Par défaut le pays implémenté est la France. Avant que des développements n'aient lieu pour un pays différent, il n'est pas nécessaire de remplir ce sélecteur."
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
          labelExpression = "aql:self.getFeatureLabel('moreSelectors')"
          helpExpression = "Critères supplémentaires permettant de créer une Réalisation pour un Canal de diffusion très ciblé.\nSéparer les critères par un caractère \"_\"."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:moreSelectors"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('moreSelectors',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "AwaDialogComponent_Conception_Group"
        domainClass = "equinoxeDialogue.AwaDialogComponent"
        controls += TextDescription.create[
          name = "AwaDialogComponent_webAppId_Txt"
          labelExpression = "aql:self.getFeatureLabel('webAppId')"
          helpExpression = "Identifiant de l'application à appeler."
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
          labelExpression = "aql:self.getFeatureLabel('webAppTaskId')"
          helpExpression = "Identifiant de la tâche associée."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:webAppTaskId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('webAppTaskId',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DataPath_Conception_Group"
        domainClass = "equinoxeDialogue.DataPath"
        controls += EqxHyperlinkDescription.create[
          name = "DataPath_segments_Ref"
          labelExpression = "aql:self.getFeatureLabel('segments')"
          helpExpression = "Source of the data.\n This can either be an AbstractFormat (for example the ContextFormat or the ESFormat) or another SourceDataPath. In this case this SourceDataPath is relative to the source DataPath"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "aql:self"
          displayExpression = "aql:value.getDataPathLabel()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:selection.selectDataInEqxExplorerView()"
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "..."
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.setDataPathSegments()"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Vider"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.clearDataPath()"
                subModelOperations += ChangeContext.create[
                  browseExpression = "aql:self.eqxUnset('source')"
                ]
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogComponent_Generation_Group"
        domainClass = "equinoxeDialogue.DialogComponent"
        controls += CheckboxDescription.create[
          name = "DialogComponent_generateLabels_Check"
          labelExpression = "aql:self.getFeatureLabel('generateLabels')"
          helpExpression = "Génération standard (dont accès aux données modélisées)"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:generateLabels"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('generateLabels',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogInterface_Conception_Group"
        domainClass = "equinoxeDialogue.DialogInterface"
        controls += EqxHyperlinkDescription.create[
          name = "DialogInterface_formatEs_Ref"
          labelExpression = "aql:self.getFeatureLabel('formatEs')"
          helpExpression = "Format d'entrée/sortie."
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
                browseExpression = "aql:self.eqxSetFromListView('formatEs')"
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogScreen_Conception_Group"
        domainClass = "equinoxeDialogue.DialogScreen"
        controls += EqxHyperlinkDescription.create[
          name = "DialogScreen_fieldToFocus_Ref"
          labelExpression = "aql:self.getFeatureLabel('fieldToFocus')"
          helpExpression = "Zone de donnée de l'écran qui reçoit le focus à l'initialisation de la page."
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
        controls += TextDescription.create[
          name = "DialogScreen_script_Txt"
          labelExpression = "aql:self.getFeatureLabel('script')"
          helpExpression = "Liste de fichiers Javascript inclus dans cet écran. Les noms de fichiers (avec chemin relatif si nécessaire) sont séparés par des \";\". Exemple : /ibp/js/fichier1.js;/ibp/js/fichier2.js\nCette liste est référencée dans la JSP associée à l'écran."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.isInInternetContext()"
          valueExpression = "feature:script"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('script',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DialogScreen_screenFocusStrategy_Check"
          labelExpression = "aql:self.getFeatureLabel('screenFocusStrategy')"
          helpExpression = "Indique qu'il n'y a pas de gestion de focus à l'initialisation de la page. Sinon, le premier champ sélectionnable de l'écran reçoit le focus."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:screenFocusStrategy"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('screenFocusStrategy',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DialogScreen_Affichage_Group"
        domainClass = "equinoxeDialogue.DialogScreen"
        controls += TextDescription.create[
          name = "DialogScreen_defaultActionWidth_Txt"
          labelExpression = "aql:self.getFeatureLabel('defaultActionWidth')"
          helpExpression = "La largeur par défaut appliquée à tous les boutons de l'écran s'ils ne définissent pas leur largeur respective."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:defaultActionWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('defaultActionWidth',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DialogScreen_headerHeight_Txt"
          labelExpression = "aql:self.getFeatureLabel('headerHeight')"
          helpExpression = "La hauteur du bandeau d'entête en pixel ou en pourcentage."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.headerType <> equinoxeDialogue::EnumHeaderType::sansBandeau"
          valueExpression = "feature:headerHeight"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('headerHeight',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DialogScreen_headerType_Enum"
          labelExpression = "aql:self.getFeatureLabel('headerType')"
          helpExpression = "Type de bandeau d'entête utilisé"
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractButton_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractButton"
        controls += CustomDescription.create[
          name = "DocAbstractButton_tabIndex_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('tabIndex')"
          helpExpression = "Ordre de tabulation du composant interactif dans l'écran. Cet ordre offre un accès par touche clavier au champ."
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractClassifiable_Conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractClassifiable"
        controls += CheckboxDescription.create[
          name = "DocAbstractClassifiable_classified_Check"
          labelExpression = "aql:self.getFeatureLabel('classified')"
          helpExpression = "Indique si la colonne est confidentielle. Si tel est le cas, l'élément sera caché lors de l'activation du mode discret. Disponible sur le canal AGENCE uniquement."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.isInInternetContext()"
          valueExpression = "feature:classified"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('classified',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractDisableable_Conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractDisableable"
        controls += CheckboxDescription.create[
          name = "DocAbstractDisableable_disabled_Check"
          labelExpression = "aql:self.getFeatureLabel('disabled')"
          helpExpression = "Flag indiquant si le composant interactif est inactif (\" grisé \") ou non. Un élément rendu inactif interrompt toute interactivité avec l'utilisateur.Un élément d'écran peut être rendu de nouveau actif par script client, une fois l'écran présenté à l'utilisateur.Cette capacité ne doit pas être confondue avec celle qui permet d'afficher le champ sous la forme d'un label (mode d'accès lecture seule) ou d'un compsoant interactif selon le mode d'accès à l'écran. Un champ rendu inactif doit pouvoir redevenir actif suite à une manipulation particulière de la part de l'utilisateur."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:disabled"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('disabled',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractField_Conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractField"
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractField_blocCibleDeLaLegende_Ref"
          labelExpression = "aql:self.getFeatureLabel('blocCibleDeLaLegende')"
          helpExpression = "Bloc cible, dans lequel s'affiche la légende associée à ce champ. Laisser vide pour utiliser le bloc par défaut : en bas du bloc de niveau 0 de l'écran.\nDisponible uniquement sur le canal INTERNET."
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
        controls += CustomDescription.create[
          name = "DocAbstractField_visibleLines_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('visibleLines')"
          helpExpression = "nombre de lignes visibles (textBox)"
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
          labelExpression = "aql:self.getFeatureLabel('visibleCharacters')"
          helpExpression = "Largeur du champ de donnée en nombre de caractères"
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
          labelExpression = "aql:self.getFeatureLabel('modifOnClient')"
          helpExpression = "Permet d'indiquer au serveur que ce champ peut être modifier sur le client"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:modifOnClient"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('modifOnClient',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractField_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractField"
        controls += CustomDescription.create[
          name = "DocAbstractField_tabIndex_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('tabIndex')"
          helpExpression = "Ordre de tabulation du composant interactif dans l'écran. Cet ordre offre un accès par touche clavier au champ."
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractHideable_Conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractHideable"
        controls += CheckboxDescription.create[
          name = "DocAbstractHideable_visible_Check"
          labelExpression = "aql:self.getFeatureLabel('visible')"
          helpExpression = "Indique si la colonne est visible ou non lors de la présentation de l'écran à l'utilisateur."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:visible"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('visible',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractHigh_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractHigh"
        controls += TextDescription.create[
          name = "DocAbstractHigh_height_Txt"
          labelExpression = "aql:self.getFeatureLabel('height')"
          helpExpression = "Hauteur allouée à la zone d'assistance."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:height"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('height',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractLabeled_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractLabeled"
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractLabeled_labelAlign_Ref"
          labelExpression = "aql:self.getFeatureLabel('labelAlign')"
          helpExpression = "Politique d'alignement des étiquettes des champs de la colonne"
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
                browseExpression = "aql:self.eqxSetFromListView('labelAlign')"
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
        controls += TextDescription.create[
          name = "DocAbstractLabeled_labelWidth_Txt"
          labelExpression = "aql:self.getFeatureLabel('labelWidth')"
          helpExpression = "Largeur occupée par les étiquettes de champs dans les cellules de cet élément de présentation"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:labelWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('labelWidth',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractLabeled_seContentAlign_Ref"
          labelExpression = "aql:self.getFeatureLabel('seContentAlign')"
          helpExpression = "Alignement à appliquer par défaut à tous les widgets"
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
                browseExpression = "aql:self.eqxSetFromListView('seContentAlign')"
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractMessage_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractMessage"
        controls += TextDescription.create[
          name = "DocAbstractMessage_nbVisibleChars_Txt"
          labelExpression = "aql:self.getFeatureLabel('nbVisibleChars')"
          helpExpression = "Longueur maximum du message à afficher. Si le message est plus long que width, il sera tronqué et des points de suspension permettront d'indiquer que la valeur complète sera visible en info-bulle\n"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:nbVisibleChars"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('nbVisibleChars',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocAbstractMessage_style_Enum"
          labelExpression = "aql:self.getFeatureLabel('style')"
          helpExpression = "Style du texte affiché"
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractTable_Conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractTable"
        controls += CheckboxDescription.create[
          name = "DocAbstractTable_disableSelectionPredicate_Check"
          labelExpression = "aql:self.getFeatureLabel('disableSelectionPredicate')"
          helpExpression = "Indique la prise en compte d'un prédicat permettant la désactivation de la sélection de certaines lignes de tableau. Le prédicat doit renvoyer true si l'on désire désactiver la sélection d'une ligne donnée.\nLe code du prédicat sera écrit en Java entre balises utilisateur dans une méthode dédiée au prédicat."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:disableSelectionPredicate"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('disableSelectionPredicate',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocAbstractTable_selectionMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('selectionMode')"
          helpExpression = "Mode de sélection des lignes du tableau :"
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractTable_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractTable"
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractTable_verticalAlign_Ref"
          labelExpression = "aql:self.getFeatureLabel('verticalAlign')"
          helpExpression = "Alignement vertical des cellules du tableau :"
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
                browseExpression = "aql:self.eqxSetFromListView('verticalAlign')"
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractTableColumn_Conception_Group"
        domainClass = "equinoxeDialogue.DocAbstractTableColumn"
        controls += CheckboxDescription.create[
          name = "DocAbstractTableColumn_isMonoUnit_Check"
          labelExpression = "aql:self.getFeatureLabel('isMonoUnit')"
          helpExpression = "Indique si les valeurs affichées dans la colonne du tableau sont mono unités :\n Si true affichage entre parenthèse de l'unité (dans le titre du tableau)\n Si non spécifié (ou false) pas de traitement particulier de l'entête de colonne.\n"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isMonoUnit"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isMonoUnit',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAbstractTableColumn_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractTableColumn"
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractTableColumn_contentAlign_Ref"
          labelExpression = "aql:self.getFeatureLabel('contentAlign')"
          helpExpression = "L'alignement du titre de l'élément colonne."
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
                browseExpression = "aql:self.eqxSetFromListView('contentAlign')"
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
          name = "DocAbstractTableColumn_titleAlign_Ref"
          labelExpression = "aql:self.getFeatureLabel('titleAlign')"
          helpExpression = "L'alignement du titre de la colonne :"
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
                browseExpression = "aql:self.eqxSetFromListView('titleAlign')"
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractTableFooterCell_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractTableFooterCell"
        controls += EqxHyperlinkDescription.create[
          name = "DocAbstractTableFooterCell_align_Ref"
          labelExpression = "aql:self.getFeatureLabel('align')"
          helpExpression = "Alignement du pied de colonne :"
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
                browseExpression = "aql:self.eqxSetFromListView('align')"
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
        controls += SelectDescription.create[
          name = "DocAbstractTableFooterCell_style_Enum"
          labelExpression = "aql:self.getFeatureLabel('style')"
          helpExpression = "Style du pied de colonne :"
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
      ]
      groups += GroupDescription.create[
        name = "DocAbstractWide_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAbstractWide"
        controls += TextDescription.create[
          name = "DocAbstractWide_width_Txt"
          labelExpression = "aql:self.getFeatureLabel('width')"
          helpExpression = "La largeur de la colonne en pixel ou en pourcentage par rapport à la largeur du tableau (ex : 80% : dans ce cas, la somme totale des colonnes d'un tableau doit être égale à 100%)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:width"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('width',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAction_Conception_Group"
        domainClass = "equinoxeDialogue.DocAction"
        controls += CheckboxDescription.create[
          name = "DocAction_checkAlerts_Check"
          labelExpression = "aql:self.getFeatureLabel('checkAlerts')"
          helpExpression = "Indique si l'action déclenche les contrôles et l'affichage des messages d'alerte de fin de PF."
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
          labelExpression = "aql:self.getFeatureLabel('refreshAjaxSc')"
          helpExpression = "Indique que lors de son déclenchement, le bouton d'action exécute les éventuelles screen commands définies dans le modèle d'écran sans pour autant rafraîchir l'ensemble des composants de la page."
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
          labelExpression = "aql:self.getFeatureLabel('default')"
          helpExpression = "Flag indiquant si la touche return active ce composant d'action"
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
          labelExpression = "aql:self.getFeatureLabel('validationStrategy')"
          helpExpression = "Indique la stratégie de validation des données capturées dans l'écran, sur le déclenchement de l'action."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and not self.isCancelAction()"
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
          name = "DocAction_dialogAction_Ref"
          labelExpression = "aql:self.getFeatureLabel('dialogAction')"
          helpExpression = "Le nom de l'événement PAF permettant de déclencher une transition de carte de Dialogue/Procédure.\nSont disponibles les actions standard de l'écran, les actions de dialogue et les actions de fin de dialogue.\nA laisser vide pour que le bouton d'action fasse office d'événement (en conservant le même rendu)."
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
                browseExpression = "aql:self.eqxSetFromListView('dialogAction')"
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
        controls += TextDescription.create[
          name = "DocAction_confirmFunction_Txt"
          labelExpression = "aql:self.getFeatureLabel('confirmFunction')"
          helpExpression = "Si ce bouton déclenche un message de confirmation, nom de la fonction qui conditionne l'affichage du message de confirmation."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.confirmation != null"
          valueExpression = "feature:confirmFunction"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('confirmFunction',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocAction_type_Enum"
          labelExpression = "aql:self.getFeatureLabel('type')"
          helpExpression = "Sur le canal INTERNET uniquement : type de bouton, qui permet de modifier sa représentation graphique :"
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
        controls += ListDescription.create[
          name = "DocAction_widgetsARafraichirIntranet_Ref"
          labelExpression = "aql:self.getFeatureLabel('widgetsARafraichirIntranet')"
          helpExpression = "Liste des éléments d'écran à rafraîchir lors du déclenchement de l'action.\nCette capacité n'a de sens que lorsque l'événement PAF associé retourne le même écran.\nDisponible uniquement sur le canal AGENCE."
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
          actions += WidgetAction.create[
            labelExpression = "Monter"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandUp('widgetsARafraichirIntranet',selection)"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Descendre"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.performMoveCommandDown('widgetsARafraichirIntranet',selection)"
              ]
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_withConfirmation_Check"
          labelExpression = "aql:self.getFeatureLabel('withConfirmation')"
          helpExpression = "Indique si ce bouton déclenche un message de confirmation, dans ce cas il faut renseigner le sous-objet MessageKey \"confirmation\" avec le message de confirmation que l'on veut afficher."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:withConfirmation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withConfirmation',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocAction_withImage_Check"
          labelExpression = "aql:self.getFeatureLabel('withImage')"
          helpExpression = "Indique si une image est associée à ce bouton d'action. Dans ce cas, il faut renseigner le sous-objet MessageKey \"image\" avec la clé d'internationalisation de l'URI spécifiant la source de l'image insérée."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:withImage"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withImage',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocAction_Affichage_Group"
        domainClass = "equinoxeDialogue.DocAction"
        controls += TextDescription.create[
          name = "DocAction_buttonWidth_Txt"
          labelExpression = "aql:self.getFeatureLabel('buttonWidth')"
          helpExpression = "Largeur du bouton en pixel (si non précisée la taille utilisée est celle précisée au niveau de l'écran \"Largeur par défaut des boutons\")"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:buttonWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('buttonWidth',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocBannerModel_Affichage_Group"
        domainClass = "equinoxeDialogue.DocBannerModel"
        controls += EqxHyperlinkDescription.create[
          name = "DocBannerModel_position_Ref"
          labelExpression = "aql:self.getFeatureLabel('position')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('position')"
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
      ]
      groups += GroupDescription.create[
        name = "DocBloc_Affichage_Group"
        domainClass = "equinoxeDialogue.DocBloc"
        controls += SelectDescription.create[
          name = "DocBloc_style_Enum"
          labelExpression = "aql:self.getFeatureLabel('style')"
          helpExpression = "Le style graphique du bloc de donnée."
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
        controls += TextDescription.create[
          name = "DocAbstractHigh_height_DocBloc_Txt"
          labelExpression = "aql:self.getFeatureLabel('height')"
          helpExpression = "Hauteur allouée à la zone d'assistance."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isInInternetContext() and (self.style = equinoxeDialogue::EnumStyleBloc::blocLevel1 or self.style =equinoxeDialogue::EnumStyleBloc::blocLevel2)"
          valueExpression = "feature:height"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('height',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocButtonGroup_Affichage_Group"
        domainClass = "equinoxeDialogue.DocButtonGroup"
        controls += TextDescription.create[
          name = "DocButtonGroup_buttonWidth_Txt"
          labelExpression = "aql:self.getFeatureLabel('buttonWidth')"
          helpExpression = "Largeur du bouton en pixel (si non précisée la taille utilisée est celle précisée au niveau de l'écran \"Largeur par défaut des boutons\")."
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
          labelExpression = "aql:self.getFeatureLabel('groupWidth')"
          helpExpression = "Largeur du groupe d'actions en pixel (c'est-à-dire de la layer portant la liste des actions)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:groupWidth"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('groupWidth',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCodeFilter_Conception_Group"
        domainClass = "equinoxeDialogue.DocCodeFilter"
        controls += EqxHyperlinkDescription.create[
          name = "DocCodeFilter_cboAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('cboAttribute')"
          helpExpression = "L'attribut du CBO sur lequel le filtre s'applique."
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
                browseExpression = "aql:self.eqxSetFromListView('cboAttribute')"
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
          name = "DocCodeFilter_filterCriteria_Ref"
          labelExpression = "aql:self.getFeatureLabel('filterCriteria')"
          helpExpression = "Le critère utilisé par ce filtre, sélectionné parmi les critères définis sur l'Objet Filtre."
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
      ]
      groups += GroupDescription.create[
        name = "DocColumn_Affichage_Group"
        domainClass = "equinoxeDialogue.DocColumn"
        controls += CheckboxDescription.create[
          name = "DocColumn_forceDefaultHeight_Check"
          labelExpression = "aql:self.getFeatureLabel('forceDefaultHeight')"
          helpExpression = "Spécifie si les widget doivent respecter une hauteur standard (pour des question d'alignement).\n"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:forceDefaultHeight"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('forceDefaultHeight',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCompositeField_Conception_Group"
        domainClass = "equinoxeDialogue.DocCompositeField"
        controls += CheckboxDescription.create[
          name = "DocCompositeField_withAutoTab_Check"
          labelExpression = "aql:self.getFeatureLabel('withAutoTab')"
          helpExpression = "Indique l'activation de la tabulation automatique : lorsque la taille maximale de la saisie est atteinte, tabule automatiquement sur le champ suivant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:withAutoTab"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withAutoTab',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocConfirmationModel_Conception_Group"
        domainClass = "equinoxeDialogue.DocConfirmationModel"
        controls += EqxHyperlinkDescription.create[
          name = "DocConfirmationModel_noAction_Ref"
          labelExpression = "aql:self.getFeatureLabel('noAction')"
          helpExpression = "Evénement PAF déclenché sur l'activation du bouton NON de la popup de confirmation. Utiliser 'Aucune action' pour ne déclencher aucun événement pour ce bouton."
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
                browseExpression = "aql:self.eqxSetFromListView('noAction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Aucune action"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('noAction')"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocConfirmationModel_yesAction_Ref"
          labelExpression = "aql:self.getFeatureLabel('yesAction')"
          helpExpression = "Evénement PAF déclenché sur l'activation du bouton OUI de la popup de confirmation. Utiliser 'Aucune action' pour ne déclencher aucun événement pour ce bouton."
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
                browseExpression = "aql:self.eqxSetFromListView('yesAction')"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Aucune action"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.eqxUnset('yesAction')"
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocConversionRule_Conception_Group"
        domainClass = "equinoxeDialogue.DocConversionRule"
        controls += EqxHyperlinkDescription.create[
          name = "DocConversionRule_rule_Ref"
          labelExpression = "aql:self.getFeatureLabel('rule')"
          helpExpression = "Nom du convertisseur à appliquer (défini sur le type de la donnée ciblée). "
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
                browseExpression = "aql:self.eqxSetFromListView('rule')"
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
          name = "DocConversionRule_patternKey_Ref"
          labelExpression = "aql:self.getFeatureLabel('patternKey')"
          helpExpression = "Nom du patron de formatage à appliquer (patternKey). Il est défini sur le type de la donnée ciblée. "
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
                browseExpression = "aql:self.eqxSetFromListView('patternKey')"
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
      ]
      groups += GroupDescription.create[
        name = "DocCrAttribute_Conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "DocCrAttribute_dynamicAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('dynamicAttribute')"
          helpExpression = "L'attribut dynamique du convertisseur référence par l'attribut."
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
                browseExpression = "aql:self.eqxSetFromListView('dynamicAttribute')"
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
      ]
      groups += GroupDescription.create[
        name = "DocCrAttributeProperty_Conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeProperty"
        controls += TextDescription.create[
          name = "DocCrAttributeProperty_propertyName_Txt"
          labelExpression = "aql:self.getFeatureLabel('propertyName')"
          helpExpression = "Nom de la propriété de CBO.\n \n <nomAttribut> : si Utilisation d'une constante est False\n <nom interface>.<nom de constante> : si Utilisation d'une constante est True\n"
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
        controls += CheckboxDescription.create[
          name = "DocCrAttributeProperty_valueIsConstant_Check"
          labelExpression = "aql:self.getFeatureLabel('valueIsConstant')"
          helpExpression = "Précise si le nom de la propriété est directement saisie dans l'assistant ou si la saisie correspond à une constante (<nom interface>.<nom de constante>) définissant le nom de cette propriété."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:valueIsConstant"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('valueIsConstant',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocCrAttributeRule_Conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeRule"
        controls += TextDescription.create[
          name = "DocCrAttributeRule_conversionPattern_Txt"
          labelExpression = "aql:self.getFeatureLabel('conversionPattern')"
          helpExpression = "Le nom du patron de conversion : utiliser la syntaxe <nom interface>.<nom de constante>.\nEx : DefaultPattern.LOWERCASE"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:conversionPattern"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('conversionPattern',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocCrAttributeRule_conversionRule_Txt"
          labelExpression = "aql:self.getFeatureLabel('conversionRule')"
          helpExpression = "Le nom du convertisseur : utiliser la syntaxe <nom interface>.<nom de constante>.\nEx : DefaultConverter.STRING"
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
      ]
      groups += GroupDescription.create[
        name = "DocCrAttributeStatic_Conception_Group"
        domainClass = "equinoxeDialogue.DocCrAttributeStatic"
        controls += TextDescription.create[
          name = "DocCrAttributeStatic_staticValue_Txt"
          labelExpression = "aql:self.getFeatureLabel('staticValue')"
          helpExpression = "Valeur statique de l'attribut."
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
      ]
      groups += GroupDescription.create[
        name = "DocDisplayModeC_Conception_Group"
        domainClass = "equinoxeDialogue.DocDisplayModeC"
        controls += EqxHyperlinkDescription.create[
          name = "DocDisplayModeC_screenDisplayMode_Ref"
          labelExpression = "aql:self.getFeatureLabel('screenDisplayMode')"
          helpExpression = "3 modes d'affichage disponibles: CREATE pour une création de nouvelles données, UPDATE pour une de mise à jour, et INSPECT pour la consultation de données existantes"
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
                browseExpression = "aql:self.eqxSetFromListView('screenDisplayMode')"
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
          name = "DocDisplayModeC_widgetDisplayMode_Internet_Ref"
          labelExpression = "aql:self.getFeatureLabel('widgetDisplayMode')"
          helpExpression = "Le mode d'affichage du widget peut être l'un des modes prédéfinis: EDIT, INSPECT, INVISIBLE ou HIDDEN, ou bien être un mode contextuel. Dans ce dernier cas le mode est porté par la donnée définie sur le mode d'affichage contextuel."
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
                browseExpression = "aql:self.setWidgetDisplayModeInInternetContext()"
              ]
            ]
          ]
          actions += WidgetAction.create[
            labelExpression = "Mode Contextuel"
            initialOperation = InitialOperation.create[
              firstModelOperations = ChangeContext.create[
                browseExpression = "aql:self.useDisplayModeContextualValue()"
              ]
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocDisplayModeC_widgetDisplayMode_Agence_Ref"
          labelExpression = "aql:self.getFeatureLabel('widgetDisplayMode')"
          helpExpression = "Le mode d'affichage du widget peut être l'un des modes prédéfinis: EDIT, INSPECT, INVISIBLE ou HIDDEN"
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
                browseExpression = "aql:self.eqxSetFromListView('widgetDisplayMode')"
              ]
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocDocViewer_Conception_Group"
        domainClass = "equinoxeDialogue.DocDocViewer"
        controls += EqxHyperlinkDescription.create[
          name = "DocDocViewer_docType_Ref"
          labelExpression = "aql:self.getFeatureLabel('docType')"
          helpExpression = "Type de document affiché :"
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
                browseExpression = "aql:self.eqxSetFromListView('docType')"
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
          name = "DocDocViewer_source_Ref"
          labelExpression = "aql:self.getFeatureLabel('source')"
          helpExpression = "Origine du document à afficher :"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:source"
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
                browseExpression = "aql:self.eqxSetFromListView('source')"
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
      ]
      groups += GroupDescription.create[
        name = "DocElement_Conception_Group"
        domainClass = "equinoxeDialogue.DocElement"
        controls += TextDescription.create[
          name = "DocElement_shortId_Txt"
          labelExpression = "aql:self.getFeatureLabel('shortId')"
          helpExpression = "Identifiant du widget. Unique au sein de la page du composant graphique."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:shortId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('shortId',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocElement_Documentation_Group"
        domainClass = "equinoxeDialogue.DocElement"
        controls += TextDescription.create[
          name = "DocElement_dmxId_Txt"
          labelExpression = "aql:self.getFeatureLabel('dmxId')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:dmxId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('dmxId',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocEvent_Conception_Group"
        domainClass = "equinoxeDialogue.DocEvent"
        controls += EqxHyperlinkDescription.create[
          name = "DocEvent_event_Ref"
          labelExpression = "aql:self.getFeatureLabel('event')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('event')"
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
        controls += TextDescription.create[
          name = "DocEvent_functionCall_Txt"
          labelExpression = "aql:self.getFeatureLabel('functionCall')"
          helpExpression = "Le nom de la fonction Javascript déclenchée par cet événement."
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
          labelExpression = "aql:self.getFeatureLabel('process')"
          helpExpression = "Permet de spécifier si la fonction Javascript déclenchée par cet événement doit être exécutée :\n"
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
      ]
      groups += GroupDescription.create[
        name = "DocField_Conception_Group"
        domainClass = "equinoxeDialogue.DocField"
        controls += CheckboxDescription.create[
          name = "DocField_isPassword_Check"
          labelExpression = "aql:self.getFeatureLabel('isPassword')"
          helpExpression = "Indique que la saisie est masquée (comme dans le cas d'une mot de passe)."
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
          labelExpression = "aql:self.getFeatureLabel('withAutoTab')"
          helpExpression = "Indique l'activation de la tabulation automatique : lorsque la taille maximale de la saisie est atteinte, tabule automatiquement sur le champ suivant."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:withAutoTab"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withAutoTab',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocField_withInputWizard_Check"
          labelExpression = "aql:self.getFeatureLabel('withInputWizard')"
          helpExpression = "Pour le canal Agence uniquement : indique qu'un assistant permet de saisir la donnée à afficher/capturer sur la zone de donnée."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:withInputWizard"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withInputWizard',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
        controls += TextDescription.create[
          name = "DocField_pivot_Txt"
          labelExpression = "aql:self.getFeatureLabel('pivot')"
          helpExpression = "Si le label correspond à un champ de saisie de date et que \"Couleur en fonction de la valeur\" est coché, permet d'indiquer si la date doit être affichée avec une couleur spécifique selon qu'elle est antérieure ou postérieure à la date pivot précisée (uniquement en mode INSPECT).\nSi la valeur est laissée vide, la date pivot est la date courante."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:pivot"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('pivot',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocGrid_Conception_Group"
        domainClass = "equinoxeDialogue.DocGrid"
        controls += CustomDescription.create[
          name = "DocGrid_cols_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('cols')"
          helpExpression = "Nombre de colonnes de la grille"
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
      ]
      groups += GroupDescription.create[
        name = "DocGrid_Affichage_Group"
        domainClass = "equinoxeDialogue.DocGrid"
        controls += CheckboxDescription.create[
          name = "DocGrid_forceDefaultHeight_Check"
          labelExpression = "aql:self.getFeatureLabel('forceDefaultHeight')"
          helpExpression = "Spécifie si les widget doivent respecter une hauteur standard (pour des question d'alignement).\n"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:forceDefaultHeight"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('forceDefaultHeight',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInfoBloc_Conception_Group"
        domainClass = "equinoxeDialogue.DocInfoBloc"
        controls += CheckboxDescription.create[
          name = "DocInfoBloc_specificJsp_Check"
          labelExpression = "aql:self.getFeatureLabel('specificJsp')"
          helpExpression = "Indique si le bloc correspond à une unité de découpage JSP : le bloc est alors défini au sein d'une JSP séparée."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:specificJsp"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('specificJsp',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocInputWizard_Conception_Group"
        domainClass = "equinoxeDialogue.DocInputWizard"
        controls += TextDescription.create[
          name = "DocInputWizard_taskOid_Txt"
          labelExpression = "aql:self.getFeatureLabel('taskOid')"
          helpExpression = "Identifiant de la tâche(procédure) gérant l'assistance à la saisie."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:taskOid"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('taskOid',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocLabel_Conception_Group"
        domainClass = "equinoxeDialogue.DocLabel"
        controls += SelectDescription.create[
          name = "DocLabel_realisation_Enum"
          labelExpression = "aql:self.getFeatureLabel('realisation')"
          helpExpression = ""
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:realisation"
          candidatesExpression = "aql:equinoxeDialogue::EnumFieldRealisation.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('realisation',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocLabel_cboAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('cboAttribute')"
          helpExpression = "L'attribut de CBO qui sera utilisé par ce widget. Utilisable uniquement si la donnée est de type CBO."
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
                browseExpression = "aql:self.eqxSetFromListView('cboAttribute')"
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
        controls += CustomDescription.create[
          name = "DocLabel_cols_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('cols')"
          helpExpression = "Nombre de colonnes visibles (réalisation textBox uniquement)"
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
          labelExpression = "aql:self.getFeatureLabel('useColorRange')"
          helpExpression = "Applique une couleur en fonction de la valeur affichée. Les couleurs sont spécifiées dans le paramétrage pour des plages de valeurs."
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
          labelExpression = "aql:self.getFeatureLabel('unitDisplayMode')"
          helpExpression = "Si le label correspond à un champ de saisie de nombre, permet de spécifier le mode d'accès à la zone dynamique représentant l'unité associée au nombre, lorsque le champ est en mode d'accès EDIT.\nLe mode d'accès est par défaut INSPECT (label par défaut).\nSi l'unité est modifiable, elle le sera au travers d'une liste déroulante contenant toutes les valeurs du CodeObject spécifié dans l'unité du CBO. \n"
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
      ]
      groups += GroupDescription.create[
        name = "DocList_Conception_Group"
        domainClass = "equinoxeDialogue.DocList"
        controls += CheckboxDescription.create[
          name = "DocList_areRadioButtonsDynamicallyDeactivated_Check"
          labelExpression = "aql:self.getFeatureLabel('areRadioButtonsDynamicallyDeactivated')"
          helpExpression = "Si une représentation graphique sous forme de boutons radio est spécifiée pour la liste, indique l'activation de la capacité de désactiver les radios boutons dynamiquement au chargement de l'écran."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.realisation = equinoxeDialogue::EnumListRealisation::radios"
          valueExpression = "feature:areRadioButtonsDynamicallyDeactivated"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('areRadioButtonsDynamicallyDeactivated',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocList_conversionRulePerimeter_Enum"
          labelExpression = "aql:self.getFeatureLabel('conversionRulePerimeter')"
          helpExpression = "Périmètre de la règle de conversion :"
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
          labelExpression = "aql:self.getFeatureLabel('isActionList')"
          helpExpression = "Indique que la liste représente une liste d'actions : quand une valeur est sélectionnée, exécute l'action correspondant à la sélection.\nDans ce cas :\nSous donnée, indiquer un ActionFormat Réutilisé de multiplicité 0..n : liste des identifiants des actions de la liste.\nSous sélection - donnée, indiquer un ActionFormat Réutilisé de multiplicité 0..1 : identifiant de l'action sélectionnée.\nidentifiant - donnée et label - donnée sont inutilisés.\nLa réalisation est forcément listBox.\nLe nombre de lignes visibles vaut 1.\nLe mode de sélection est ACTIVE_SELECTION.\nAvec action de sélection n'est pas disponible.\nLa règle de conversion n'est pas nécessaire.\nLes modes d'affichage disponibles sont uniquement EDIT et INVISIBLE."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:isActionList"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('isActionList',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocListAction_Conception_Group"
        domainClass = "equinoxeDialogue.DocListAction"
        controls += EqxHyperlinkDescription.create[
          name = "DocListAction_dialogAction_Ref"
          labelExpression = "aql:self.getFeatureLabel('dialogAction')"
          helpExpression = "Le nom de l'événement PAF permettant de déclencher une transition de carte de Dialogue/Procédure.\nSont disponibles les actions standard de l'écran, les actions de dialogue et les actions de fin de dialogue."
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
                browseExpression = "aql:self.eqxSetFromListView('dialogAction')"
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
        controls += SelectDescription.create[
          name = "DocListAction_validationStrategy_Enum"
          labelExpression = "aql:self.getFeatureLabel('validationStrategy')"
          helpExpression = "Indique la stratégie de validation des données capturées dans l'écran, sur le déclenchement de l'action."
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
        controls += CheckboxDescription.create[
          name = "DocListAction_withConfirmation_Check"
          labelExpression = "aql:self.getFeatureLabel('withConfirmation')"
          helpExpression = "Indique si ce bouton déclenche un message de confirmation, dans ce cas il faut renseigner le sous-objet MessageKey \"confirmation\" avec le message de confirmation que l'on veut afficher."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:withConfirmation"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('withConfirmation',newValue)"
            ]
          ]
          style = CheckboxWidgetStyle.create[
            labelFontFormat += org.eclipse.sirius.viewpoint.FontFormat.getByName("italic")
            labelForegroundColor = (extras.get("Color#gray") as SystemColor)
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocMailto_Affichage_Group"
        domainClass = "equinoxeDialogue.DocMailto"
        controls += SelectDescription.create[
          name = "DocMailto_style_Enum"
          labelExpression = "aql:self.getFeatureLabel('style')"
          helpExpression = "Style du texte affiché"
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
      ]
      groups += GroupDescription.create[
        name = "DocMessage_Conception_Group"
        domainClass = "equinoxeDialogue.DocMessage"
        controls += EqxHyperlinkDescription.create[
          name = "DocMessage_targetedDocBloc_Ref"
          labelExpression = "aql:self.getFeatureLabel('targetedDocBloc')"
          helpExpression = "Bloc cible, dans lequel s'affiche la légende associée à ce champ. Laisser vide pour utiliser le bloc par défaut : en bas du bloc de niveau 0 de l'écran.\nDisponible uniquement sur le canal INTERNET."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()  and self.isInInternetContext()"
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
      ]
      groups += GroupDescription.create[
        name = "DocMsgKey_Conception_Group"
        domainClass = "equinoxeDialogue.DocMsgKey"
        controls += TextDescription.create[
          name = "DocMsgKey_domaine_Txt"
          labelExpression = "aql:self.getFeatureLabel('domaine')"
          helpExpression = "Domaine dans lequel chercher le message en fonction de la clef."
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
          labelExpression = "aql:self.getFeatureLabel('key')"
          helpExpression = "clef utilisée dans le fichier de propriétés"
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
          labelExpression = "aql:self.getFeatureLabel('value')"
          helpExpression = "champ permettant de stocker la valeur à associer à la clef."
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
        name = "DocParameter_Conception_Group"
        domainClass = "equinoxeDialogue.DocParameter"
        controls += CheckboxDescription.create[
          name = "DocParameter_useInterface_Check"
          labelExpression = "aql:self.getFeatureLabel('useInterface')"
          helpExpression = "Utilise l'interface du bouton d'action de tâche pour définir le paramètre."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:useInterface"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('useInterface',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocRuleEnumAttribute_Conception_Group"
        domainClass = "equinoxeDialogue.DocRuleEnumAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleEnumAttribute_validatorAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('validatorAttribute')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('validatorAttribute')"
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
          name = "DocRuleEnumAttribute_value_Ref"
          labelExpression = "aql:self.getFeatureLabel('value')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('value')"
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
      ]
      groups += GroupDescription.create[
        name = "DocRuleIntegerAttribute_Conception_Group"
        domainClass = "equinoxeDialogue.DocRuleIntegerAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleIntegerAttribute_validatorAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('validatorAttribute')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('validatorAttribute')"
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
        controls += CustomDescription.create[
          name = "DocRuleIntegerAttribute_value_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('value')"
          helpExpression = "Valeur de type Entier du paramètre."
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
      ]
      groups += GroupDescription.create[
        name = "DocRuleRegexpAttribute_Conception_Group"
        domainClass = "equinoxeDialogue.DocRuleRegexpAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleRegexpAttribute_validatorAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('validatorAttribute')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('validatorAttribute')"
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
        controls += TextDescription.create[
          name = "DocRuleRegexpAttribute_value_Txt"
          labelExpression = "aql:self.getFeatureLabel('value')"
          helpExpression = "Valeur de type expression régulière du paramètre."
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
      ]
      groups += GroupDescription.create[
        name = "DocRuleStringAttribute_Conception_Group"
        domainClass = "equinoxeDialogue.DocRuleStringAttribute"
        controls += EqxHyperlinkDescription.create[
          name = "DocRuleStringAttribute_validatorAttribute_Ref"
          labelExpression = "aql:self.getFeatureLabel('validatorAttribute')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('validatorAttribute')"
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
        controls += TextDescription.create[
          name = "DocRuleStringAttribute_value_Txt"
          labelExpression = "aql:self.getFeatureLabel('value')"
          helpExpression = "Valeur de type chaîne de caractères du paramètre."
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
        name = "DocScreenItem_Affichage_Group"
        domainClass = "equinoxeDialogue.DocScreenItem"
        controls += CustomDescription.create[
          name = "DocScreenItem_colSpan_Eqx_Spinner"
          labelExpression = "aql:self.getFeatureLabel('colSpan')"
          helpExpression = "Nombre de colonnes occupées par le widget lorsque celui-ci fait partie d'une grille ou d'une ligne de présentation. Ce nombre ne doit pas être supérieur au nombre de colonnes de son parent."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isColSpanEditable()"
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
          name = "DocScreenItem_seContentAlign_Ref"
          labelExpression = "aql:self.getFeatureLabel('seContentAlign')"
          helpExpression = "Alignement à appliquer au widget lorsque celui-ci fait partie d'une grille ou d'une ligne de présentation et qu'il occupe plusieurs colonnes (Nombre de colonnes occupées)."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.isColSpanEditable() and self.colSpan > 1"
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
                browseExpression = "aql:self.eqxSetFromListView('seContentAlign')"
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
      ]
      groups += GroupDescription.create[
        name = "DocSigningBloc_Affichage_Group"
        domainClass = "equinoxeDialogue.DocSigningBloc"
        controls += SelectDescription.create[
          name = "DocBloc_style_Enum"
          labelExpression = "aql:self.getFeatureLabel('style')"
          helpExpression = "Le style graphique du bloc de donnée."
          isEnabledExpression = "aql:false"
          valueExpression = "feature:style"
          candidatesExpression = "aql:equinoxeDialogue::EnumStyleBloc.eLiterals->collect(e|e.instance)"
          candidateDisplayExpression = "aql:candidate.toString()"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('style',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocSimpleItem_Affichage_Group"
        domainClass = "equinoxeDialogue.DocSimpleItem"
        controls += EqxHyperlinkDescription.create[
          name = "DocSimpleItem_labelPosition_Ref"
          labelExpression = "aql:self.getFeatureLabel('labelPosition')"
          helpExpression = "Alignement de l'étiquette :"
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
                browseExpression = "aql:self.eqxSetFromListView('labelPosition')"
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
      ]
      groups += GroupDescription.create[
        name = "DocSortingRule_Conception_Group"
        domainClass = "equinoxeDialogue.DocSortingRule"
        controls += CheckboxDescription.create[
          name = "DocSortingRule_caseSensitive_Check"
          labelExpression = "aql:self.getFeatureLabel('caseSensitive')"
          helpExpression = "Indique si la casse est prise en compte dans la relation d'ordre."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:caseSensitive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('caseSensitive',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_diacriticsSensitive_Check"
          labelExpression = "aql:self.getFeatureLabel('diacriticsSensitive')"
          helpExpression = "Indique si les accents doivent êtres pris en compte dans la relation d'ordre."
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
          labelExpression = "aql:self.getFeatureLabel('simpleQuoteSensitive')"
          helpExpression = "Indique si les apostrophes doivent êtres prises en compte dans la relation d'ordre."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:simpleQuoteSensitive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('simpleQuoteSensitive',newValue)"
            ]
          ]
        ]
        controls += CheckboxDescription.create[
          name = "DocSortingRule_spacesSensitive_Check"
          labelExpression = "aql:self.getFeatureLabel('spacesSensitive')"
          helpExpression = "Indique si les espaces de début et de fin sont pris en compte dans la relation d'ordre."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:spacesSensitive"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('spacesSensitive',newValue)"
            ]
          ]
        ]
        controls += SelectDescription.create[
          name = "DocSortingRule_sortOrder_Enum"
          labelExpression = "aql:self.getFeatureLabel('sortOrder')"
          helpExpression = "Pour un critère de tri uniquement."
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
        controls += EqxHyperlinkDescription.create[
          name = "DocSortingRule_sAppliqueSurLaDonnee_Ref"
          labelExpression = "aql:self.getFeatureLabel('sAppliqueSurLaDonnee')"
          helpExpression = "Donnée sur laquelle s'applique la relation d'ordre. Pour un critère de tri uniquement."
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
      ]
      groups += GroupDescription.create[
        name = "DocStartTaskAction_Conception_Group"
        domainClass = "equinoxeDialogue.DocStartTaskAction"
        controls += EqxHyperlinkDescription.create[
          name = "DocStartTaskAction_actionTarget_Ref"
          labelExpression = "aql:self.getFeatureLabel('actionTarget')"
          helpExpression = "Identifiant de la fenêtre cible chargée d'afficher le résultat de la requête.\n ActionTarget.NEW pour afficher le résultat dans une nouvelle fenêtre sans nom. [Identifiant de fenêtre] pour afficher le résultat dans une fenêtre ayant un identifiant commençant par un caractère alphabétique (a-zA-Z) et ne comportant aucun espace. L'identification d'une fenêtre permet d'afficher systématiquement le résultat dans la même fenêtre contrairement à l'action ActionTarget.NEW qui déclenchera, à chaque clic, l'ouverture d'une nouvelle fenêtre."
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
                browseExpression = "aql:self.eqxSetFromListView('actionTarget')"
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
      ]
      groups += GroupDescription.create[
        name = "DocStaticValue_Conception_Group"
        domainClass = "equinoxeDialogue.DocStaticValue"
        controls += TextDescription.create[
          name = "DocStaticValue_value_Txt"
          labelExpression = "aql:self.getFeatureLabel('value')"
          helpExpression = ""
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
      ]
      groups += GroupDescription.create[
        name = "DocStructElement_Conception_Group"
        domainClass = "equinoxeDialogue.DocStructElement"
        controls += CheckboxDescription.create[
          name = "DocStructElement_separator_Check"
          labelExpression = "aql:self.getFeatureLabel('separator')"
          helpExpression = "Spécifie la présence d'un séparateur (ligne verticale) de colonne"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:separator"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('separator',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocStructElement_Affichage_Group"
        domainClass = "equinoxeDialogue.DocStructElement"
        controls += CheckboxDescription.create[
          name = "DocStructElement_justified_Check"
          labelExpression = "aql:self.getFeatureLabel('justified')"
          helpExpression = "Permet de spécifier si les widgets doivent être espacés en occupant un maximum de place ou non. Les widgets seront espacés si cet attribut est valué à \"true\". Il peut être utilisé et valué à \"false\" pour placer un bouton à côté d'un champ de saisie"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:justified"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('justified',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTab_Conception_Group"
        domainClass = "equinoxeDialogue.DocTab"
        controls += CheckboxDescription.create[
          name = "DocTab_default_Check"
          labelExpression = "aql:self.getFeatureLabel('default')"
          helpExpression = "Flag indiquant si la page d'onglet est celle affichée par défaut pour un bloc à onglets."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:default"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('default',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocTab_zoneDeDonneeRecevantLeFocus_Ref"
          labelExpression = "aql:self.getFeatureLabel('zoneDeDonneeRecevantLeFocus')"
          helpExpression = "Permet de spécifier sur quel élément doit se placer le focus sur la sélection de la page d'onglet."
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
      ]
      groups += GroupDescription.create[
        name = "DocTabbedBloc_Conception_Group"
        domainClass = "equinoxeDialogue.DocTabbedBloc"
        controls += EqxHyperlinkDescription.create[
          name = "DocTabbedBloc_tabbingMode_Ref"
          labelExpression = "aql:self.getFeatureLabel('tabbingMode')"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('tabbingMode')"
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
      ]
      groups += GroupDescription.create[
        name = "DocTable_Conception_Group"
        domainClass = "equinoxeDialogue.DocTable"
        controls += CheckboxDescription.create[
          name = "DocTable_forceBottomEmptyLines_Check"
          labelExpression = "aql:self.getFeatureLabel('forceBottomEmptyLines')"
          helpExpression = "Permet d'indiquer si le tableau doit comporter des \" lignes vides \" après les lignes de données de manière à occuper au maximum la hauteur spécifiée par l'attribut \" height \".(forceBottomEmptyLines)"
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
          labelExpression = "aql:self.getFeatureLabel('pagerMode')"
          helpExpression = "Indique si le tableau doit paginer les données qu'il présente."
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
          labelExpression = "aql:self.getFeatureLabel('pagerSize')"
          helpExpression = "si la Pagination est activée, taille des pages."
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
          labelExpression = "aql:self.getFeatureLabel('pagerValidationStrategy')"
          helpExpression = "Indique la stratégie de validation des données capturées dans l'écran, sur la pagination."
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
      ]
      groups += GroupDescription.create[
        name = "DocTableColumn_Conception_Group"
        domainClass = "equinoxeDialogue.DocTableColumn"
        controls += SelectDescription.create[
          name = "DocTableColumn_contentOrientation_Enum"
          labelExpression = "aql:self.getFeatureLabel('contentOrientation')"
          helpExpression = "Orientation du contenu des cellules de la colonne :"
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
        controls += SelectDescription.create[
          name = "DocTableColumn_contentStyle_Enum"
          labelExpression = "aql:self.getFeatureLabel('contentStyle')"
          helpExpression = "Permet de spécifier un style de titre pour la premiere cellule d'une ligne (disponible uniquement sur le canal AGENCE) :"
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
        controls += CheckboxDescription.create[
          name = "DocTableColumn_repeatable_Check"
          labelExpression = "aql:self.getFeatureLabel('repeatable')"
          helpExpression = "Flag indiquant si une même donnée présente dans plusieurs lignes qui se suivent sera répétée ou non. \nSi la colonne utilise la répétition des lignes identiques (valeur true), toutes les données de la colonne sont affichées.\nSinon, la donnée est affichée pour la première ligne puis cachée (cellule vide) pour les lignes qui suivent jusqu'à la prochaine ligne présentant une donnée différente."
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
          labelExpression = "aql:self.getFeatureLabel('sortingMode')"
          helpExpression = "Modalité de tri de la collection du tableau. Permet de spécifier sur quelles colonnes (i.e property) la collection du tableau est triable mais également de marquer la colonne ainsi que l'ordre de tri (ascendant/descendant) sur laquelle est triée la collection du tableau au départ (premier affichage)."
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
          labelExpression = "aql:self.getFeatureLabel('sortingModeInitial')"
          helpExpression = "Quand le mode de tri n'est pas UNSORTABLE, indique le sens initial du tri de la colonne."
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
      ]
      groups += GroupDescription.create[
        name = "DocTableTree_Affichage_Group"
        domainClass = "equinoxeDialogue.DocTableTree"
        controls += CheckboxDescription.create[
          name = "DocTableTree_expandable_Check"
          labelExpression = "aql:self.getFeatureLabel('expandable')"
          helpExpression = "Indique si la réprésentation de l'arbre doit être escamotable."
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
          labelExpression = "aql:self.getFeatureLabel('initiallyExpanded')"
          helpExpression = "Indique si le tableau-arbre est déplié au premier affichage."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:initiallyExpanded"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('initiallyExpanded',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTableTreeLevel_Conception_Group"
        domainClass = "equinoxeDialogue.DocTableTreeLevel"
        controls += SelectDescription.create[
          name = "DocTableTreeLevel_deferredExpandMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('deferredExpandMode')"
          helpExpression = "Indique si le mode de chargement du noeud au dépliage (ouverture) est activé (\"DeferredExpandMode\").\nDisponible uniquement sur le niveau 2."
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
      ]
      groups += GroupDescription.create[
        name = "DocTopic_Conception_Group"
        domainClass = "equinoxeDialogue.DocTopic"
        controls += EqxHyperlinkDescription.create[
          name = "DocTopic_canal_Ref"
          labelExpression = "aql:self.getFeatureLabel('canal')"
          helpExpression = "Type d'aide en ligne.\nDans un GTC : nom du canal d'aide en ligne générique.\nSur un écran : les types disponibles sont l'ensemble des canaux génériques modélisés dans les GTC dont dépend le composant hébergeant l'écran, ainsi que les canaux standards suivants :"
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
                browseExpression = "aql:self.eqxSetFromListView('canal')"
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
        controls += TextDescription.create[
          name = "DocTopic_taskId_Txt"
          labelExpression = "aql:self.getFeatureLabel('taskId')"
          helpExpression = "Sur un écran uniquement : identifiant de la tâche qui sera exécutée lors de l'utilisation du canal d'aide dans la page applicative du bouton d'aide."
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
      ]
      groups += GroupDescription.create[
        name = "DocTopic_Affichage_Group"
        domainClass = "equinoxeDialogue.DocTopic"
        controls += TextDescription.create[
          name = "DocTopic_height_Txt"
          labelExpression = "aql:self.getFeatureLabel('height')"
          helpExpression = "Sur un écran uniquement : Hauteur de la fenêtre cliente ouverte lors de l'invocation d'un bouton d'aide."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:height"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('height',newValue)"
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "DocTopic_width_Txt"
          labelExpression = "aql:self.getFeatureLabel('width')"
          helpExpression = "Sur un écran uniquement : Largeur de la fenêtre cliente ouverte lors de l'invocation d'un bouton d'aide."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:width"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('width',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocTopicAction_Conception_Group"
        domainClass = "equinoxeDialogue.DocTopicAction"
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicAction_canal_Ref"
          labelExpression = "aql:self.getFeatureLabel('canal')"
          helpExpression = "Type d'aide associée au bouton (correspond à un canal d'aide)."
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
                browseExpression = "aql:self.eqxSetFromListView('canal')"
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
      ]
      groups += GroupDescription.create[
        name = "DocTopicMapping_Conception_Group"
        domainClass = "equinoxeDialogue.DocTopicMapping"
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicMapping_dataId_Ref"
          labelExpression = "aql:self.getFeatureLabel('dataId')"
          helpExpression = "Type d'identifiant de la donnée."
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
                browseExpression = "aql:self.eqxSetFromListView('dataId')"
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
        controls += EqxHyperlinkDescription.create[
          name = "DocTopicMapping_champFournissantLaDonnee_Ref"
          labelExpression = "aql:self.getFeatureLabel('champFournissantLaDonnee')"
          helpExpression = "Widget de l'écran fournissant la donnée à publier sur le canal d'aide."
          isEnabledExpression = "aql:self.isNotReadOnlyElement() and self.donneeContextuelle = null"
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
      ]
      groups += GroupDescription.create[
        name = "DocValidationRule_Conception_Group"
        domainClass = "equinoxeDialogue.DocValidationRule"
        controls += TextDescription.create[
          name = "DocValidationRule_cboPropertyName_Txt"
          labelExpression = "aql:self.getFeatureLabel('cboPropertyName')"
          helpExpression = "Le nom de l'attribut du CBO sur lequel appliquer la règle de validation.\nA préciser dans le cas d'une utilisation avec un CBO.\nDans ce champ il est possible de spécifier le nom de l'attribut :\n \n une constante : saisir .\n directement le nom : saisir le nom entre double-quote\n"
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:cboPropertyName"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('cboPropertyName',newValue)"
            ]
          ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DocValidationRule_rule_Ref"
          labelExpression = "aql:self.getFeatureLabel('rule')"
          helpExpression = "Nom du validateur à appeler."
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
      ]
      groups += GroupDescription.create[
        name = "DocWebAppPanel_Conception_Group"
        domainClass = "equinoxeDialogue.DocWebAppPanel"
        controls += SelectDescription.create[
          name = "DocWebAppPanel_defaultDisplayMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('defaultDisplayMode')"
          helpExpression = "Indique le mode d'affichage par défaut de ce composant pour chacun des modes d'affichage de l'écran."
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
        controls += TextDescription.create[
          name = "DocWebAppPanel_webAppId_Txt"
          labelExpression = "aql:self.getFeatureLabel('webAppId')"
          helpExpression = "Identifiant de l'application à intégrer au sein du composant graphique."
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
          labelExpression = "aql:self.getFeatureLabel('webAppTaskId')"
          helpExpression = "Identifiant de la tâche associée."
          isEnabledExpression = "aql:self.isNotReadOnlyElement()"
          valueExpression = "feature:webAppTaskId"
          initialOperation = InitialOperation.create[
            firstModelOperations = ChangeContext.create[
              browseExpression = "aql:self.eqxPut('webAppTaskId',newValue)"
            ]
          ]
        ]
      ]
      groups += GroupDescription.create[
        name = "DocWidgetRef_Conception_Group"
        domainClass = "equinoxeDialogue.DocWidgetRef"
        controls += EqxHyperlinkDescription.create[
          name = "DocWidgetRef_widgetReference_Ref"
          labelExpression = "aql:self.getFeatureLabel('widgetReference')"
          helpExpression = "Widget qui porte la valeur pour le paramètre de message."
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
      ]
      groups += GroupDescription.create[
        name = "EventTransition_Conception_Group"
        domainClass = "equinoxeDialogue.EventTransition"
        controls += EqxHyperlinkDescription.create[
          name = "EventTransition_event_Ref"
          labelExpression = "Evénement"
          helpExpression = ""
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
                browseExpression = "aql:self.eqxSetFromListView('event')"
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
      ]
      groups += GroupDescription.create[
        name = "ScreenMapState_Conception_Group"
        domainClass = "equinoxeDialogue.ScreenMapState"
        controls += SelectDescription.create[
          name = "ScreenMapState_accessMode_Enum"
          labelExpression = "aql:self.getFeatureLabel('accessMode')"
          helpExpression = "Mode d'accès à l'écran :"
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
          name = "ScreenMapState_screen_Ref"
          labelExpression = "aql:self.getFeatureLabel('screen')"
          helpExpression = "Ecran affiché par cette étape."
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
