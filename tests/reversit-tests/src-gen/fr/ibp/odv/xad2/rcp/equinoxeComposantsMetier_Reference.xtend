package fr.ibp.odv.xad2.rcp

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.util.Map
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.DynamicMappingForDescription
import org.eclipse.sirius.properties.DynamicMappingIfDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.mypsycho.emf.modit.EModIt

class equinoxeComposantsMetier_Reference {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "equinoxeComposantsMetier_Reference".alias(Category.create[
      name = "equinoxeComposantsMetier_Reference"
      pages += PageDescription.create[
        name = "BasicTypeBAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BasicTypeBAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BasicTypeBAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicTypeBAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BasicTypeBAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BasicTypeBAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicTypeBAttribute_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BasicTypeBAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BasicTypeBAttribute_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BcRequiredInterface_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BcRequiredInterface)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BcRequiredInterface_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BcRequiredInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BcRequiredInterface)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BcRequiredInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BcRequiredInterfaceGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BcRequiredInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BcRequiredInterfaceGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BcRequiredInterfaceGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BcRequiredInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BcRequiredInterfaceGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoAttribute_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoAttribute_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoBoAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoBoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoBoAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoBoAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoBoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoBoAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoBoAttribute_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoBoAttribute) and self.isBoBoAttributeGenerationPageDisplayed() and self.associatedBO != null and self.associatedBO.oclIsTypeOf(equinoxeComposantsMetier::BusinessObject)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoBoAttribute_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoMethod_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoMethod_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoView_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoView"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoView)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoView_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoView_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BoView"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoView)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoView_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoViewAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoViewAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewAttribute_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoViewAttribute_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewBAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewBAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoViewBAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewBAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewBAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoViewBAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewFAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewFAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoViewFAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BoViewFAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BoViewFAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BoViewFAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Bsp_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.Bsp"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::Bsp)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("Bsp_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Bsp_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.Bsp"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::Bsp)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("Bsp_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Bsp_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.Bsp"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::Bsp)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("Bsp_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessInterface_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BusinessInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessInterface)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessInterface_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BusinessInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessInterface)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessInterfaceGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessInterfaceGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessInterfaceMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessInterfaceMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessInterfaceMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessInterfaceMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessInterfaceMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessInterfaceMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessInterfaceMethod_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessInterfaceMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessInterfaceMethod_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessObject_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessObject)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessObject_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessObject_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessObject)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessObject_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessObject_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessObject)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessObject_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessRealization_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BusinessRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessRealization)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessRealization_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessServiceProviderMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessServiceProviderMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessServiceProviderMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessServiceProviderMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessServiceProviderMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessServiceProviderMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessServiceProviderMethod_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessServiceProviderMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessServiceProviderMethod_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessTransformerMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.BusinessTransformerMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessTransformerMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessTransformerMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BusinessTransformerMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.BusinessTransformerMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::BusinessTransformerMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("BusinessTransformerMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CA_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CA"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CA)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CA_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CA_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CA"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CA)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CA_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CA_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.CA"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CA)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CA_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMR_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CMR"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMR)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMR_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMR_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CMR"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMR)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMR_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMR_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.CMR"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMR)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMR_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMT_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CMT"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMT)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMT_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMT_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CMT"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMT)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMT_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMT_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.CMT"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMT)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMT_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMTE_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CMTE"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMTE)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMTE_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMTE_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CMTE"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMTE)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMTE_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMTE_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.CMTE"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMTE)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMTE_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMTEInterfaceGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CMTEInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMTEInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMTEInterfaceGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CMTERealization_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CMTERealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CMTERealization)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CMTERealization_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CaBusinessTransformer_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CaBusinessTransformer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CaBusinessTransformer)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CaBusinessTransformer_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CaBusinessTransformer_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CaBusinessTransformer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CaBusinessTransformer)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CaBusinessTransformer_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CaConnector_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CaConnector)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CaConnector_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CaConnector_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CaConnector)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CaConnector_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CaConnector_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CaConnector)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CaConnector_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ClassGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.ClassGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ClassGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ClassGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ClassGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.ClassGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ClassGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ClassGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorClass_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CmteCollectorClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorClass)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteCollectorClass_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorClass_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteCollectorClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorClass)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteCollectorClass_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CmteCollectorMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteCollectorMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteCollectorMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteCollectorMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorPackage_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteCollectorPackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorPackage)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteCollectorPackage_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorRef_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CmteCollectorRef"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorRef)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteCollectorRef_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteCollectorRef_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteCollectorRef"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteCollectorRef)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteCollectorRef_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteDocTypeGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteDocTypeGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteDocTypeGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteDocTypeGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteDocTypeGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteDocTypeGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteDocTypeTech_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeTech"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteDocTypeTech)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteDocTypeTech_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteDocTypeTech_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeTech"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteDocTypeTech)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteDocTypeTech_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteFacadePackage_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CmteFacadePackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteFacadePackage)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteFacadePackage_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteFacadePackage_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteFacadePackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteFacadePackage)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteFacadePackage_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteInterface)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteInterfaceOperation_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.CmteInterfaceOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteInterfaceOperation)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteInterfaceOperation_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteInterfaceOperation_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteInterfaceOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteInterfaceOperation)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteInterfaceOperation_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteInterfacePackage_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.CmteInterfacePackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteInterfacePackage)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteInterfacePackage_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CmteInterfacePackage_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.CmteInterfacePackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::CmteInterfacePackage)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("CmteInterfacePackage_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ComponentFormats_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.ComponentFormats"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ComponentFormats)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ComponentFormats_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ComputedBoAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ComputedBoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ComputedBoAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ComputedBoAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ComputedBoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ComputedBoAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ComputedBoAttribute_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ComputedBoAttribute)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ComputedBoAttribute_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ConnectorMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ConnectorMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ConnectorMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ConnectorMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ConnectorMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ConnectorMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ConnectorMethod_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ConnectorMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ConnectorMethod_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ContextFormat_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.ContextFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ContextFormat)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ContextFormat_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ContextFormat_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.ContextFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::ContextFormat)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("ContextFormat_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FacadeMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FacadeMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeMethod_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FacadeMethod_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeRealization_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeRealization)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FacadeRealization_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeRealization_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeRealization)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FacadeRealization_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeRealization_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeRealization)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FacadeRealization_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FacadeRealizationGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.FacadeRealizationGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FacadeRealizationGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FacadeRealizationGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FormatsGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.FormatsGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FormatsGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FormatsGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FormatsGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.FormatsGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::FormatsGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("FormatsGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "InterfaceClassGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.InterfaceClassGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::InterfaceClassGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("InterfaceClassGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "InterfaceClassGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.InterfaceClassGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::InterfaceClassGroup)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("InterfaceClassGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "InterfaceCm_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::InterfaceCm)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("InterfaceCm_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "InterfaceCm_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::InterfaceCm)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("InterfaceCm_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "InterfaceCm_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::InterfaceCm)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("InterfaceCm_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Mapper_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.Mapper"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::Mapper)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("Mapper_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Mapper_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.Mapper"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::Mapper)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("Mapper_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Mapper_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeComposantsMetier.Mapper"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::Mapper)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("Mapper_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MultipleLoader_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.MultipleLoader"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::MultipleLoader)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("MultipleLoader_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MultipleLoader_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.MultipleLoader"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::MultipleLoader)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("MultipleLoader_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MultipleLoaderMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.MultipleLoaderMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::MultipleLoaderMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("MultipleLoaderMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MultipleLoaderMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.MultipleLoaderMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::MultipleLoaderMethod)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("MultipleLoaderMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "RelatedBO_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeComposantsMetier.RelatedBO"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::RelatedBO)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("RelatedBO_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "RelatedBO_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeComposantsMetier.RelatedBO"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeComposantsMetier::RelatedBO)"
        groups += GroupDescription.ref("equinoxeComposantsMetier_Reference")[ (it as Category).groups.at("RelatedBO_Documentation_Reference_Group") ]
      ]
      groups += GroupDescription.create[
        name = "BasicTypeBAttribute_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_BasicTypeBAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BasicTypeBAttribute_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_AbstractBoViewAttribute_documentationReference_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoViewAttribute_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicTypeBAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicTypeBAttribute_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BasicTypeBAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_MomTypedElement_cobolFormats_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolFormats_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_MomTypedElement_cobolNames_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolNames_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_MomTypedElement_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_MomTypedElement_momTypeLg_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_momTypeLg_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_MomTypedElement_typeMom_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_typeMom_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicTypeBAttribute_ReferenceTo_MomTypedElement_useDefaultsUnused_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_useDefaultsUnused_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BcRequiredInterface_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "BcRequiredInterface_ReferenceTo_AbstractBusinessComponentInterface_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponentInterface_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BcRequiredInterface_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BcRequiredInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BcRequiredInterfaceGroup_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BcRequiredInterfaceGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BcRequiredInterfaceGroup_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BcRequiredInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BcRequiredInterfaceGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoAttribute_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoAttribute_ReferenceTo_AbstractBoAttribute_colonne_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_colonne_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoAttribute_ReferenceTo_AbstractBoAttribute_referenceDma_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_referenceDma_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoAttribute_ReferenceTo_AbstractBoAttribute_table_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_table_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoAttribute_ReferenceTo_AbstractBoAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoAttribute_ReferenceTo_AbstractBoAttribute_visibility_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_visibility_Enum") as SelectDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoAttribute_ReferenceTo_BoAttribute_identifier_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoAttribute_Conception_Group").controls.at("BoAttribute_identifier_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoAttribute_ReferenceTo_BoAttribute_modifiable_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoAttribute_Conception_Group").controls.at("BoAttribute_modifiable_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoAttribute_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoAttribute_ReferenceTo_MomTypedElement_cobolFormats_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolFormats_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoAttribute_ReferenceTo_MomTypedElement_cobolNames_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolNames_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoAttribute_ReferenceTo_MomTypedElement_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoAttribute_ReferenceTo_MomTypedElement_momTypeLg_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_momTypeLg_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoAttribute_ReferenceTo_MomTypedElement_typeMom_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_typeMom_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoAttribute_ReferenceTo_MomTypedElement_useDefaultsUnused_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_useDefaultsUnused_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoAttribute_ReferenceTo_AbstractBoAttribute_jdbcRowName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoBoAttribute_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoBoAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoBoAttribute_ReferenceTo_MultiplicityElement_multiplicite_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MultiplicityElement_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_associatedBO_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Conception_Group").controls.at("BoBoAttribute_associatedBO_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_opposite_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Conception_Group").controls.at("BoBoAttribute_opposite_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_modifiable_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Conception_Group").controls.at("BoBoAttribute_modifiable_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_referenceDMR_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Conception_Group").controls.at("BoBoAttribute_referenceDMR_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_table_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Conception_Group").controls.at("BoBoAttribute_table_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_colonne_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Conception_Group").controls.at("BoBoAttribute_colonne_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoBoAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoBoAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoBoAttribute_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoBoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_generate_multiple_finder_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Generation_Group").controls.at("BoBoAttribute_generate_multiple_finder_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_service_id_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Generation_Group").controls.at("BoBoAttribute_service_id_Txt") as TextDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BoBoAttribute_ReferenceTo_BoBoAttribute_queue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Generation_Group").controls.at("BoBoAttribute_queue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BoBoAttribute_ReferenceTo_BoBoAttribute_SendQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Generation_Group").controls.at("BoBoAttribute_SendQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BoBoAttribute_ReferenceTo_BoBoAttribute_ReplyQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Generation_Group").controls.at("BoBoAttribute_ReplyQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_version_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Generation_Group").controls.at("BoBoAttribute_version_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoBoAttribute_ReferenceTo_BoBoAttribute_priority_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoBoAttribute_Generation_Group").controls.at("BoBoAttribute_priority_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoGroup_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoGroup_ReferenceTo_BoGroup_codeObjetMetier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoGroup_Conception_Group").controls.at("BoGroup_codeObjetMetier_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoGroup_ReferenceTo_BoGroup_isAccessor_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoGroup_Conception_Group").controls.at("BoGroup_isAccessor_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoGroup_ReferenceTo_BoGroup_serverCacheStrategy_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoGroup_Conception_Group").controls.at("BoGroup_serverCacheStrategy_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoMethod_ReferenceTo_AbstractExtendedReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Conception_Group").controls.at("AbstractExtendedReturningMethod_returnType_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_type_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Conception_Group").controls.at("BoMethod_type_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_visibility_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Conception_Group").controls.at("BoMethod_visibility_Enum") as SelectDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_isAccessor_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Conception_Group").controls.at("BoMethod_isAccessor_Check") as CheckboxDescription) ]
        ]
        controls += ListDescription.create[
          name = "BoMethod_ReferenceTo_AbstractErrorRaisingMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Conception_Group").controls.at("AbstractErrorRaisingMethod_possibleErrors_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoMethod_ReferenceTo_AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoMethod_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_multiplicity_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_multiplicity_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_pagedInput_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_pagedInput_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_pagedInputSize_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_pagedInputSize_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_pagedOutput_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_pagedOutput_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_paginationKeyName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_paginationKeyName_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_paginationKeySize_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_paginationKeySize_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_parametrePagineEnEntree_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_parametrePagineEnEntree_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_priority_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_priority_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_programid_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_programid_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_queueName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_queueName_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_replyQueue_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_replyQueue_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_sendQueue_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_sendQueue_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoMethod_ReferenceTo_BoMethod_version_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoMethod_Generation_Group").controls.at("BoMethod_version_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoView_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoView"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoView_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoView_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoView_ReferenceTo_ComplexType_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ComplexType_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoView_ReferenceTo_BoView_businessObject_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoView_Conception_Group").controls.at("BoView_businessObject_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "BoView_ReferenceTo_BoView_implementeLesInterfaces_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoView_Conception_Group").controls.at("BoView_implementeLesInterfaces_Ref") as ListDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoView_ReferenceTo_BoView_isBdt_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoView_Conception_Group").controls.at("BoView_isBdt_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoView_ReferenceTo_BoView_referenceDmc_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoView_Conception_Group").controls.at("BoView_referenceDmc_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoView_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoView"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoView_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoView_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewAttribute_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoViewAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoViewAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoViewAttribute_ReferenceTo_BoViewAttribute_table_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewAttribute_Conception_Group").controls.at("BoViewAttribute_table_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoViewAttribute_ReferenceTo_BoViewAttribute_colonne_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewAttribute_Conception_Group").controls.at("BoViewAttribute_colonne_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoViewAttribute_ReferenceTo_BoViewAttribute_referencedAttribute_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewAttribute_Conception_Group").controls.at("BoViewAttribute_referencedAttribute_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoViewAttribute_ReferenceTo_BoViewAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewAttribute_Conception_Group").controls.at("BoViewAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoViewAttribute_ReferenceTo_BoViewAttribute_derived_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewAttribute_Conception_Group").controls.at("BoViewAttribute_derived_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoViewAttribute_ReferenceTo_AbstractBoViewAttribute_documentationReference_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoViewAttribute_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoViewAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoViewAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewAttribute_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoViewAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoViewAttribute_ReferenceTo_MomTypedElement_cobolFormats_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolFormats_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoViewAttribute_ReferenceTo_MomTypedElement_cobolNames_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolNames_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoViewAttribute_ReferenceTo_MomTypedElement_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoViewAttribute_ReferenceTo_MomTypedElement_momTypeLg_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_momTypeLg_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoViewAttribute_ReferenceTo_MomTypedElement_typeMom_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_typeMom_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoViewAttribute_ReferenceTo_MomTypedElement_useDefaultsUnused_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_useDefaultsUnused_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewBAttribute_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoViewBAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoViewBAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoViewBAttribute_ReferenceTo_MultiplicityElement_multiplicite_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MultiplicityElement_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoViewBAttribute_ReferenceTo_BoViewBAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewBAttribute_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "BoViewBAttribute_ReferenceTo_AbstractBoViewAttribute_documentationReference_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoViewAttribute_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewBAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoViewBAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoViewBAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoViewBAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewFAttribute_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BoViewFAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BoViewFAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BoViewFAttribute_ReferenceTo_MultiplicityElement_multiplicite_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MultiplicityElement_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoViewFAttribute_ReferenceTo_BoViewFAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewFAttribute_Conception_Group").controls.at("BoViewFAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BoViewFAttribute_ReferenceTo_BoViewFAttribute_businessObject_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BoViewFAttribute_Conception_Group").controls.at("BoViewFAttribute_businessObject_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BoViewFAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BoViewFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BoViewFAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BoViewFAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Bsp_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.Bsp"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Bsp_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Bsp_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += ListDescription.create[
          name = "Bsp_ReferenceTo_AbstractBusinessComponentRealization_implementedInterfaces_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponentRealization_Conception_Group").controls.head as ListDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Bsp_ReferenceTo_Bsp_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("Bsp_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Bsp_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.Bsp"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Bsp_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "Bsp_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Bsp_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.Bsp"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Bsp_ReferenceTo_Bsp_dsName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("Bsp_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessInterface_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "BusinessInterface_ReferenceTo_AbstractBusinessComponentInterface_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponentInterface_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessInterface_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BusinessInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessInterfaceGroup_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BusinessInterfaceGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessInterfaceMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_AbstractReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_BusinessInterfaceMethod_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessInterfaceMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_AbstractErrorRaisingMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractErrorRaisingMethod_Conception_Group").controls.head as ListDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_AbstractConstrainedMethod_precondition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractConstrainedMethod_Conception_Group").controls.at("AbstractConstrainedMethod_precondition_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_AbstractConstrainedMethod_postcondition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractConstrainedMethod_Conception_Group").controls.at("AbstractConstrainedMethod_postcondition_TxtArea") as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessInterfaceMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_AbstractReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessInterfaceMethod_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessInterfaceMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "BusinessInterfaceMethod_ReferenceTo_BusinessInterfaceMethod_transactionalMode_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessInterfaceMethod_Generation_Group").controls.at("BusinessInterfaceMethod_transactionalMode_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessObject_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_ReferenceTo_AbstractBusinessObject_abstraite_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_abstraite_Check") as CheckboxDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessObject_ReferenceTo_AbstractBusinessObject_checkValidity_TxtArea"
          extends = TextAreaDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_checkValidity_TxtArea") as TextAreaDescription) ]
        ]
        controls += ListDescription.create[
          name = "BusinessObject_ReferenceTo_AbstractBusinessObject_erreursLeveesParLInvariant_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_erreursLeveesParLInvariant_Ref") as ListDescription) ]
        ]
        controls += ListDescription.create[
          name = "BusinessObject_ReferenceTo_AbstractBusinessObject_implementeLesInterfaces_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_implementeLesInterfaces_Ref") as ListDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_AbstractBusinessObject_referenceDmc_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_referenceDmc_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessObject_ReferenceTo_AbstractBusinessObject_defaultView_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_defaultView_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "BusinessObject_ReferenceTo_AbstractBusinessObject_referencedViews_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_referencedViews_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessObject_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BusinessObject_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessObject_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessObject"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_daoDataAccess_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_daoDataAccess_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_queryDataAccess_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_queryDataAccess_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_createProgramId_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_createProgramId_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_createVersion_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_createVersion_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_createPriority_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_createPriority_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_readProgramid_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_readProgramid_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_readVersion_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_readVersion_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_readPriority_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_readPriority_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_updateProgramid_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_updateProgramid_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_updateVersion_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_updateVersion_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_updatePriority_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_updatePriority_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_programidDelete_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_programidDelete_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_deleteVersion_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_deleteVersion_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_deletePriority_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_deletePriority_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_sqljPriority_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_sqljPriority_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_dsName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_dsName_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_ownSequence_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_ownSequence_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_oldBoRef_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_oldBoRef_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessObject_ReferenceTo_BusinessObject_alternativeBoInheritance_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_alternativeBoInheritance_Check") as CheckboxDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:it.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BusinessObject_ReferenceTo_BusinessObject_sendQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_sendQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:it.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BusinessObject_ReferenceTo_BusinessObject_luwSendQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_luwSendQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:it.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BusinessObject_ReferenceTo_BusinessObject_replyQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_replyQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:not it.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BusinessObject_ReferenceTo_BusinessObject_createQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_createQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:not it.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BusinessObject_ReferenceTo_BusinessObject_deleteQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_deleteQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:not it.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BusinessObject_ReferenceTo_BusinessObject_readQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_readQueue_Txt") as TextDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:not it.componentUseJmsConfiguration()"
            widget = TextDescription.create[
              name = "BusinessObject_ReferenceTo_BusinessObject_updateQueue_Txt"
              extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessObject_Generation_Group").controls.at("BusinessObject_updateQueue_Txt") as TextDescription) ]
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
        name = "BusinessRealization_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessRealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BusinessRealization_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessServiceProviderMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_AbstractExtendedReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_BusinessServiceProviderMethod_visibility_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessServiceProviderMethod_Conception_Group").controls.at("BusinessServiceProviderMethod_visibility_Enum") as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_BusinessServiceProviderMethod_initMethod_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessServiceProviderMethod_Conception_Group").controls.at("BusinessServiceProviderMethod_initMethod_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_AbstractErrorRaisingMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractErrorRaisingMethod_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessServiceProviderMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessServiceProviderMethod_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessServiceProviderMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BusinessServiceProviderMethod_ReferenceTo_BusinessServiceProviderMethod_exceptions_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("BusinessServiceProviderMethod_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessTransformerMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessTransformerMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BusinessTransformerMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BusinessTransformerMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BusinessTransformerMethod_ReferenceTo_AbstractExtendedReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "BusinessTransformerMethod_ReferenceTo_AbstractErrorRaisingMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractErrorRaisingMethod_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BusinessTransformerMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.BusinessTransformerMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BusinessTransformerMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessTransformerMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BusinessTransformerMethod_ReferenceTo_AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CA_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CA"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CA_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CA_ReferenceTo_AbstractComponent_codeObjetMetier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractComponent_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CA_ReferenceTo_AbstractRootElement_quartier_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_quartier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CA_ReferenceTo_AbstractRootElement_lgaName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_lgaName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "CA_ReferenceTo_AbstractRootElement_dependencies_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_dependencies_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CA_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CA"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CA_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CA_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CA"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "CA_ReferenceTo_AbstractRootElement_standardGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_standardGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CA_ReferenceTo_AbstractRootElement_errorGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_errorGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CA_ReferenceTo_AbstractBusinessComponent_jdbcGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_jdbcGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CA_ReferenceTo_AbstractBusinessComponent_momGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_momGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CA_ReferenceTo_AbstractBusinessComponent_sqljGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_sqljGeneration_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMR_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMR"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CMR_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMR_ReferenceTo_AbstractComponent_codeObjetMetier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractComponent_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMR_ReferenceTo_AbstractRootElement_quartier_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_quartier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMR_ReferenceTo_AbstractRootElement_lgaName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_lgaName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "CMR_ReferenceTo_AbstractRootElement_dependencies_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_dependencies_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMR_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMR"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CMR_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMR_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMR"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "CMR_ReferenceTo_AbstractRootElement_standardGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_standardGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMR_ReferenceTo_AbstractRootElement_errorGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_errorGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMR_ReferenceTo_AbstractBusinessComponent_jdbcGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_jdbcGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMR_ReferenceTo_AbstractBusinessComponent_momGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_momGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMR_ReferenceTo_AbstractBusinessComponent_sqljGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_sqljGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMR_ReferenceTo_CMR_useJmsConfiguration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CMR_Generation_Group").controls.at("CMR_useJmsConfiguration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMR_ReferenceTo_AbstractBusinessComponent_legacyEjb_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_legacyEjb_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMR_ReferenceTo_CMR_sendQueue_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CMR_Generation_Group").controls.at("CMR_sendQueue_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMR_ReferenceTo_CMR_luwSendQueue_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CMR_Generation_Group").controls.at("CMR_luwSendQueue_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMR_ReferenceTo_CMR_replyQueue_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CMR_Generation_Group").controls.at("CMR_replyQueue_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "CMR_ReferenceTo_CMR_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CMR_Generation_Group").controls.at("CMR_conversionMode_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMT_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMT"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CMT_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "CMT_ReferenceTo_CMT_level_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CMT_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMT_ReferenceTo_AbstractComponent_codeObjetMetier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractComponent_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMT_ReferenceTo_AbstractRootElement_quartier_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_quartier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMT_ReferenceTo_AbstractRootElement_lgaName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_lgaName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "CMT_ReferenceTo_AbstractRootElement_dependencies_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_dependencies_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMT_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMT"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CMT_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMT_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMT"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "CMT_ReferenceTo_AbstractRootElement_standardGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_standardGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMT_ReferenceTo_AbstractRootElement_errorGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_errorGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMT_ReferenceTo_AbstractBusinessComponent_jdbcGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_jdbcGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMT_ReferenceTo_AbstractBusinessComponent_momGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_momGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMT_ReferenceTo_AbstractBusinessComponent_sqljGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_sqljGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMT_ReferenceTo_AbstractBusinessComponent_legacyEjb_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_legacyEjb_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMTE_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMTE"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CMTE_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMTE_ReferenceTo_AbstractComponent_codeObjetMetier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractComponent_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMTE_ReferenceTo_AbstractRootElement_quartier_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_quartier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CMTE_ReferenceTo_AbstractRootElement_lgaName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_lgaName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "CMTE_ReferenceTo_AbstractRootElement_dependencies_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_dependencies_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMTE_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMTE"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CMTE_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMTE_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMTE"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "CMTE_ReferenceTo_AbstractRootElement_standardGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_standardGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMTE_ReferenceTo_AbstractRootElement_errorGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_errorGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMTE_ReferenceTo_AbstractBusinessComponent_jdbcGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_jdbcGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMTE_ReferenceTo_AbstractBusinessComponent_momGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_momGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMTE_ReferenceTo_AbstractBusinessComponent_sqljGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_sqljGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CMTE_ReferenceTo_AbstractBusinessComponent_legacyEjb_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponent_Generation_Group").controls.at("AbstractBusinessComponent_legacyEjb_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMTEInterfaceGroup_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMTEInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CMTEInterfaceGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CMTERealization_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CMTERealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CMTERealization_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CaBusinessTransformer_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CaBusinessTransformer"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CaBusinessTransformer_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CaBusinessTransformer_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CaBusinessTransformer_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CaBusinessTransformer"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CaBusinessTransformer_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CaBusinessTransformer_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CaConnector_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CaConnector_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CaConnector_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CaConnector_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CaConnector_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CaConnector_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CaConnector_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CaConnector"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CaConnector_ReferenceTo_CaConnector_connectorId_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CaConnector_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ClassGroup_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ClassGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ClassGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ClassGroup_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ClassGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ClassGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorClass_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorClass"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CmteCollectorClass_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "CmteCollectorClass_ReferenceTo_CmteCollectorClass_implementeLesInterfaces_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteCollectorClass_Conception_Group").controls.at("CmteCollectorClass_implementeLesInterfaces_Ref") as ListDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorClass_ReferenceTo_CmteCollectorClass_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteCollectorClass_Conception_Group").controls.at("CmteCollectorClass_superType_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorClass_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorClass"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteCollectorClass_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_NamedElement_name_Txt"
          isEnabledExpression = "aql:false"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_AbstractExtendedReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_CmteCollectorMethod_collectedFormat_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteCollectorMethod_Conception_Group").controls.at("CmteCollectorMethod_collectedFormat_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_CmteCollectorMethod_dataIdentifier_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteCollectorMethod_Conception_Group").controls.at("CmteCollectorMethod_dataIdentifier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_CmteCollectorMethod_dataName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteCollectorMethod_Conception_Group").controls.at("CmteCollectorMethod_dataName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_AbstractErrorRaisingMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractErrorRaisingMethod_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CmteCollectorMethod_ReferenceTo_AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorPackage_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorPackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteCollectorPackage_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorRef_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorRef"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "CmteCollectorRef_ReferenceTo_CmteCollectorRef_collecteurUtilise_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteCollectorRef_Conception_Group").controls.at("CmteCollectorRef_collecteurUtilise_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CustomDescription.create[
          name = "CmteCollectorRef_ReferenceTo_CmteCollectorRef_rang_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteCollectorRef_Conception_Group").controls.at("CmteCollectorRef_rang_Eqx_Spinner") as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteCollectorRef_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteCollectorRef"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteCollectorRef_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteDocTypeGroup_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CmteDocTypeGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteDocTypeGroup_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteDocTypeGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteDocTypeTech_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeTech"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CmteDocTypeTech_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CmteDocTypeTech_ReferenceTo_CmteDocTypeTech_intitule_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteDocTypeTech_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteDocTypeTech_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteDocTypeTech"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteDocTypeTech_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteFacadePackage_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteFacadePackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += EqxHyperlinkDescription.create[
          name = "CmteFacadePackage_ReferenceTo_CmteFacadePackage_realisationDe_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteFacadePackage_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteFacadePackage_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteFacadePackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteFacadePackage_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteInterface_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteInterfaceOperation_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteInterfaceOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CmteInterfaceOperation_ReferenceTo_NamedElement_name_Txt"
          isEnabledExpression = "aql:false"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CmteInterfaceOperation_ReferenceTo_AbstractConstrainedMethod_precondition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractConstrainedMethod_Conception_Group").controls.at("AbstractConstrainedMethod_precondition_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CmteInterfaceOperation_ReferenceTo_AbstractConstrainedMethod_postcondition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractConstrainedMethod_Conception_Group").controls.at("AbstractConstrainedMethod_postcondition_TxtArea") as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteInterfaceOperation_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteInterfaceOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteInterfaceOperation_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteInterfacePackage_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteInterfacePackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CmteInterfacePackage_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CmteInterfacePackage_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.CmteInterfacePackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "CmteInterfacePackage_ReferenceTo_CmteInterfacePackage_proxyImplementationStrategy_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("CmteInterfacePackage_Generation_Group").controls.head as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ComponentFormats_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ComponentFormats"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ComponentFormats_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ComputedBoAttribute_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_AbstractBoAttribute_colonne_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_colonne_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_AbstractBoAttribute_referenceDma_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_referenceDma_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_AbstractBoAttribute_table_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_table_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_AbstractBoAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_AbstractBoAttribute_visibility_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Conception_Group").controls.at("AbstractBoAttribute_visibility_Enum") as SelectDescription) ]
        ]
        controls += ListDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_ComputedBoAttribute_attributsIntervenants_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("ComputedBoAttribute_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ComputedBoAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ComputedBoAttribute_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ComputedBoAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_MomTypedElement_cobolFormats_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolFormats_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_MomTypedElement_cobolNames_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolNames_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_MomTypedElement_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_MomTypedElement_momTypeLg_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_momTypeLg_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_MomTypedElement_typeMom_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_typeMom_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_MomTypedElement_useDefaultsUnused_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_useDefaultsUnused_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ComputedBoAttribute_ReferenceTo_AbstractBoAttribute_jdbcRowName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBoAttribute_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ConnectorMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ConnectorMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ConnectorMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ConnectorMethod_ReferenceTo_AbstractReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "ConnectorMethod_ReferenceTo_ConnectorMethod_emissionMode_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("ConnectorMethod_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += ListDescription.create[
          name = "ConnectorMethod_ReferenceTo_AbstractErrorRaisingMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractErrorRaisingMethod_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ConnectorMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ConnectorMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ConnectorMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ConnectorMethod_ReferenceTo_AbstractReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ConnectorMethod_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ConnectorMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ConnectorMethod_ReferenceTo_ConnectorMethod_remoteServiceName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("ConnectorMethod_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ContextFormat_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ContextFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "ContextFormat_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ContextFormat_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.ContextFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ContextFormat_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ContextFormat_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "FacadeMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "FacadeMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "FacadeMethod_ReferenceTo_AbstractExtendedReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "FacadeMethod_ReferenceTo_FacadeMethod_visibility_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("FacadeMethod_Conception_Group").controls.at("FacadeMethod_visibility_Enum") as SelectDescription) ]
        ]
        controls += ListDescription.create[
          name = "FacadeMethod_ReferenceTo_FacadeMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("FacadeMethod_Conception_Group").controls.at("FacadeMethod_possibleErrors_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FacadeMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "FacadeMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "FacadeMethod_ReferenceTo_AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeMethod_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FacadeMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "FacadeMethod_ReferenceTo_FacadeMethod_throwsExceptions_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("FacadeMethod_Generation_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeRealization_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "FacadeRealization_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "FacadeRealization_ReferenceTo_AbstractBusinessComponentRealization_implementedInterfaces_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponentRealization_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeRealization_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FacadeRealization_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeRealization_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealization"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "FacadeRealization_ReferenceTo_FacadeRealization_dsName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("FacadeRealization_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FacadeRealizationGroup_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FacadeRealizationGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += ListDescription.create[
          name = "FacadeRealizationGroup_ReferenceTo_FacadeRealizationGroup_realizationOf_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("FacadeRealizationGroup_Conception_Group").controls.at("FacadeRealizationGroup_realizationOf_Ref") as ListDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "FacadeRealizationGroup_ReferenceTo_FacadeRealizationGroup_remoteAccess_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("FacadeRealizationGroup_Conception_Group").controls.at("FacadeRealizationGroup_remoteAccess_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FormatsGroup_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FormatsGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "FormatsGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FormatsGroup_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.FormatsGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FormatsGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "InterfaceClassGroup_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.InterfaceClassGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "InterfaceClassGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "InterfaceClassGroup_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.InterfaceClassGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "InterfaceClassGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "InterfaceCm_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "InterfaceCm_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "InterfaceCm_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "InterfaceCm_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "InterfaceCm_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "InterfaceCm_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "InterfaceCm_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.InterfaceCm"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "InterfaceCm_ReferenceTo_InterfaceCm_proxyImplementationStrategy_Enum"
          extends = SelectDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("InterfaceCm_Generation_Group").controls.head as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Mapper_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.Mapper"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Mapper_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "Mapper_ReferenceTo_AbstractBusinessComponentRealization_implementedInterfaces_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessComponentRealization_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Mapper_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.Mapper"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Mapper_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Mapper_Generation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.Mapper"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Mapper_ReferenceTo_FacadeRealization_dsName_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("FacadeRealization_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MultipleLoader_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.MultipleLoader"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "MultipleLoader_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "MultipleLoader_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MultipleLoader_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.MultipleLoader"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MultipleLoader_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "MultipleLoader_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MultipleLoaderMethod_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.MultipleLoaderMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "MultipleLoaderMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "MultipleLoaderMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MultipleLoaderMethod_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.MultipleLoaderMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MultipleLoaderMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "MultipleLoaderMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "RelatedBO_Conception_Reference_Group"
        domainClass = "equinoxeComposantsMetier.RelatedBO"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "RelatedBO_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "RelatedBO_ReferenceTo_RelatedBO_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("RelatedBO_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "RelatedBO_ReferenceTo_AbstractBusinessObject_abstraite_Check"
          extends = CheckboxDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_abstraite_Check") as CheckboxDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "RelatedBO_ReferenceTo_AbstractBusinessObject_checkValidity_TxtArea"
          extends = TextAreaDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_checkValidity_TxtArea") as TextAreaDescription) ]
        ]
        controls += ListDescription.create[
          name = "RelatedBO_ReferenceTo_AbstractBusinessObject_erreursLeveesParLInvariant_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_erreursLeveesParLInvariant_Ref") as ListDescription) ]
        ]
        controls += ListDescription.create[
          name = "RelatedBO_ReferenceTo_AbstractBusinessObject_implementeLesInterfaces_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_implementeLesInterfaces_Ref") as ListDescription) ]
        ]
        controls += TextDescription.create[
          name = "RelatedBO_ReferenceTo_AbstractBusinessObject_referenceDmc_Txt"
          extends = TextDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_referenceDmc_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "RelatedBO_ReferenceTo_AbstractBusinessObject_defaultView_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_defaultView_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "RelatedBO_ReferenceTo_AbstractBusinessObject_referencedViews_Ref"
          extends = ListDescription.ref("equinoxeComposantsMetier_Definition")[ ((it as Category).groups.at("AbstractBusinessObject_Conception_Group").controls.at("AbstractBusinessObject_referencedViews_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "RelatedBO_Documentation_Reference_Group"
        domainClass = "equinoxeComposantsMetier.RelatedBO"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "RelatedBO_ReferenceTo_DocumentableElement_documentation_TxtArea"
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
