package fr.ibp.odv.xad2.rcp.gen

import java.util.Map
import java.util.concurrent.Callable
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.PageDescription
import org.mypsycho.emf.modit.EModIt

class EquinoxeProcedure_Reference implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeProcedure_Reference".alias(Category.create[
      name = "equinoxeProcedure_Reference"
      pages += PageDescription.create[
        name = "EditicState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.EditicState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::EditicState)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("EditicState_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "MessageState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.MessageState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::MessageState)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("MessageState_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "PafAdapter_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.PafAdapter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PafAdapter)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("PafAdapter_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.PopixAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixAttribute)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("PopixAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.PopixState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixState)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("PopixState_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "PopixTransaction_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.PopixTransaction"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PopixTransaction)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("PopixTransaction_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "PresentationState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.PresentationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::PresentationState)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("PresentationState_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessComponent_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.ProcessComponent"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessComponent)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("ProcessComponent_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessInterface_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.ProcessInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessInterface)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("ProcessInterface_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessOperationState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.ProcessOperationState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessOperationState)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("ProcessOperationState_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessScreenState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.ProcessScreenState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessScreenState)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("ProcessScreenState_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ProcessTransition_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.ProcessTransition"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::ProcessTransition)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("ProcessTransition_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "SubProcessState_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeProcedure.SubProcessState"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeProcedure::SubProcessState)"
        groups += GroupDescription.ref("EquinoxeProcedure_Definition")[ (it as Category).groups.at("SubProcessState_conception_Group") ]
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
