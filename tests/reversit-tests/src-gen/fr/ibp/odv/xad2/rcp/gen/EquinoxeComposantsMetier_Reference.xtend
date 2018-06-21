package fr.ibp.odv.xad2.rcp.gen

import java.util.Map
import java.util.concurrent.Callable
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.PageDescription
import org.mypsycho.emf.modit.EModIt

class EquinoxeComposantsMetier_Reference implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeComposantsMetier_Reference".alias(Category.create[
      name = "equinoxeComposantsMetier_Reference"
      pages += PageDescription.create[
        name = "BasicTypeBAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BasicTypeBAttribute)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BasicTypeBAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoAttribute)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoBoAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoBoAttribute)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoBoAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoGroup_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoGroup)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoGroup_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoMethod_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoMethod)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoMethod_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoView_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoView"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoView)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoView_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewAttribute)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoViewAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewBAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewBAttribute)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoViewBAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewFAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewFAttribute)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BoViewFAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "Bsp_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.Bsp"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::Bsp)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("Bsp_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessInterfaceMethod_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessInterfaceMethod)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BusinessInterfaceMethod_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessObject_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessObject)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BusinessObject_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessServiceProviderMethod_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessServiceProviderMethod)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("BusinessServiceProviderMethod_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMR_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CMR"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMR)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CMR_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMT_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CMT"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMT)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CMT_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CaConnector_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CaConnector)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CaConnector_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorClass_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CmteCollectorClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorClass)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CmteCollectorClass_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorMethod_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CmteCollectorMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorMethod)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CmteCollectorMethod_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorRef_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CmteCollectorRef"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorRef)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CmteCollectorRef_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteDocTypeTech_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeTech"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteDocTypeTech)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CmteDocTypeTech_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteInterfacePackage_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.CmteInterfacePackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteInterfacePackage)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("CmteInterfacePackage_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ComputedBoAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ComputedBoAttribute)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("ComputedBoAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "ConnectorMethod_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ConnectorMethod)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("ConnectorMethod_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeMethod_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeMethod)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("FacadeMethod_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeRealization_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeRealization)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("FacadeRealization_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeRealizationGroup_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.FacadeRealizationGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeRealizationGroup)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("FacadeRealizationGroup_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "InterfaceCm_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::InterfaceCm)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("InterfaceCm_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "RelatedBO_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeComposantsMetier.RelatedBO"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::RelatedBO)"
        groups += GroupDescription.ref("EquinoxeComposantsMetier_Definition")[ (it as Category).groups.at("RelatedBO_conception_Group") ]
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
