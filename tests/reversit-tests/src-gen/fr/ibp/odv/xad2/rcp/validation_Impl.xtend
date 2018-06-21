package fr.ibp.odv.xad2.rcp

import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.TextAreaDescription
import org.mypsycho.emf.modit.EModIt

class validation_Impl {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "validation_Impl".alias(Category.create[
      name = "validation_Impl"
      pages += PageDescription.create[
        name = "IbpElement_Validation_Custom_Page"
        labelExpression = "Validation"
        domainClass = "equinoxeCore.IbpElement"
        preconditionExpression = "aql:self.hasErrorAttached()"
        groups += GroupDescription.ref("validation_Impl")[ (it as Category).groups.head ]
      ]
      groups += GroupDescription.create[
        name = "IbpElement_Validation_Custom_Group"
        domainClass = "equinoxeCore.IbpElement"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "IbpElement_Validation_Txt"
          labelExpression = "Validation messages"
          isEnabledExpression = "aql:false"
          lineCount = 10
          valueExpression = "aql:self.getValidationMessages()"
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
