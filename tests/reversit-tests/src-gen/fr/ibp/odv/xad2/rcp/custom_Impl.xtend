package fr.ibp.odv.xad2.rcp

import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.CustomExpression
import org.eclipse.sirius.properties.DynamicMappingForDescription
import org.eclipse.sirius.properties.DynamicMappingIfDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.mypsycho.emf.modit.EModIt

class custom_Impl {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "custom_Impl".alias(Category.create[
      name = "custom_Impl"
      pages += PageDescription.create[
        name = "BoBoAttribute_BoRBoAttribute_Generation_Custom_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoBoAttribute) and self.associatedBO != null and self.associatedBO.oclIsTypeOf(equinoxeComposantsMetier::RelatedBO)"
        groups += GroupDescription.ref("custom_Impl")[ (it as Category).groups.at("BoBoAttribute_BoRBoAttribute_Generation_Custom_Group") ]
      ]
      pages += PageDescription.create[
        name = "LegacyElement_Anomalies_Custom_Page"
        labelExpression = "Anomalies"
        domainClass = "equinoxeLegacy.LegacyElement"
        preconditionExpression = "aql:not self.features->isEmpty()"
        groups += GroupDescription.ref("custom_Impl")[ (it as Category).groups.at("LegacyElement_Anomalies_Custom_Group") ]
      ]
      groups += GroupDescription.create[
        name = "BoBoAttribute_BoRBoAttribute_Generation_Custom_Group"
        labelExpression = ""
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "BoBoAttribute_momMax_Eqx_Spinner"
          labelExpression = "Multiplicité Mom Max"
          helpExpression = ""
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
        name = "LegacyElement_Anomalies_Custom_Group"
        domainClass = "equinoxeLegacy.LegacyElement"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.features->filter(equinoxeLegacy::LegacyAttribute)->size() > 0"
            widget = ListDescription.create[
              name = "LegacyElement_features_attributes_Ref"
              labelExpression = "Propriétés inconnues"
              helpExpression = "Liste de tous les propriétés inconnues aprés la migration"
              isEnabledExpression = "aql:self.isNotReadOnlyElement()"
              valueExpression = "aql:self.features->filter(equinoxeLegacy::LegacyAttribute)"
              displayExpression = "aql:value.getEqxLabel()"
              actions += WidgetAction.create[
                labelExpression = "Supprimer"
                initialOperation = InitialOperation.create[
                  firstModelOperations = ChangeContext.create[
                    browseExpression = "aql:self.performLegacyElementContainmentDeleteCommand(selection)"
                  ]
                ]
              ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.features->filter(equinoxeLegacy::LegacyReference)->size() > 0"
            widget = ListDescription.create[
              name = "LegacyElement_features_references_Ref"
              labelExpression = "Références inconnues"
              helpExpression = "Liste de toutes les références inconnues aprés la migration"
              isEnabledExpression = "aql:self.isNotReadOnlyElement()"
              valueExpression = "aql:self.features->filter(equinoxeLegacy::LegacyReference)"
              displayExpression = "aql:value.getEqxLabel()"
              actions += WidgetAction.create[
                labelExpression = "Supprimer"
                initialOperation = InitialOperation.create[
                  firstModelOperations = ChangeContext.create[
                    browseExpression = "aql:self.performLegacyElementContainmentDeleteCommand(selection)"
                  ]
                ]
              ]
              actions += WidgetAction.create[
                labelExpression = "Sélectionner cibles"
                initialOperation = InitialOperation.create[
                  firstModelOperations = ChangeContext.create[
                    browseExpression = "aql:self.selectLegacyReferenceTargets(selection)"
                  ]
                ]
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
