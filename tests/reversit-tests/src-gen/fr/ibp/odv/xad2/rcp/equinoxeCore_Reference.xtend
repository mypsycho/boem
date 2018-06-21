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

class equinoxeCore_Reference {
  val EqxModelDesign context
  val extension EModIt factory

  new(EqxModelDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  def content() {
    "equinoxeCore_Reference".alias(Category.create[
      name = "equinoxeCore_Reference"
      pages += PageDescription.create[
        name = "BasicType_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.BasicType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicType)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("BasicType_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicType_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.BasicType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicType)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("BasicType_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicType_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.BasicType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicType)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("BasicType_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicTypeFAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicTypeFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("BasicTypeFAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicTypeFAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicTypeFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("BasicTypeFAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicTypeFAttribute_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicTypeFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("BasicTypeFAttribute_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Cbo_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.Cbo"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Cbo)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Cbo_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Cbo_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Cbo"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Cbo)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Cbo_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Cbo_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.Cbo"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Cbo)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Cbo_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CboAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CboAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboFilter_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CboFilter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboFilter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboFilter_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboFilter_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CboFilter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboFilter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboFilter_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboFilterCriteria_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CboFilterCriteria"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboFilterCriteria)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboFilterCriteria_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboFilterCriteria_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CboFilterCriteria"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboFilterCriteria)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboFilterCriteria_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CboMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboMethod)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CboMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboMethod)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CboMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CbomomType_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CbomomType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CbomomType)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CbomomType_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CbomomType_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CbomomType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CbomomType)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CbomomType_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ComplexType_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ComplexType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ComplexType)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ComplexType_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ComplexType_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ComplexType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ComplexType)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ComplexType_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Converter_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.Converter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Converter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Converter_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Converter_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Converter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Converter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Converter_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ConverterPattern_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ConverterPattern"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ConverterPattern)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ConverterPattern_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ConverterPattern_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ConverterPattern"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ConverterPattern)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ConverterPattern_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Converters_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Converters"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Converters)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Converters_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CtAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CtAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtClass_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CtClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtClass)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtClass_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtClass_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CtClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtClass)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtClass_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtInterface_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CtInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtInterface)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtInterface_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CtInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtInterface)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtOperation_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CtOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtOperation)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtOperation_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtOperation_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CtOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtOperation)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtOperation_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtPackage_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.CtPackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtPackage)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtPackage_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtPackage_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.CtPackage"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtPackage)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("CtPackage_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DirectAccessMethod_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.DirectAccessMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::DirectAccessMethod)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("DirectAccessMethod_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DirectAccessMethod_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.DirectAccessMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::DirectAccessMethod)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("DirectAccessMethod_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DynamicAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.DynamicAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::DynamicAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("DynamicAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DynamicAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.DynamicAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::DynamicAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("DynamicAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "DynamicAttributeGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.DynamicAttributeGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::DynamicAttributeGroup)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("DynamicAttributeGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Enumeration_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.Enumeration"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Enumeration)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Enumeration_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Enumeration_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Enumeration"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Enumeration)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Enumeration_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "EnumerationValue_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.EnumerationValue"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::EnumerationValue)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("EnumerationValue_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "EnumerationValue_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.EnumerationValue"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::EnumerationValue)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("EnumerationValue_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ErrorsContainer_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ErrorsContainer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ErrorsContainer)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ErrorsContainer_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ErrorsContainer_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ErrorsContainer"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ErrorsContainer)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ErrorsContainer_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FeClass_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.FeClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FeClass)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("FeClass_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FeClass_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.FeClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FeClass)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("FeClass_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FeErrorGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.FeErrorGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FeErrorGroup)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("FeErrorGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FeParam_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.FeParam"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FeParam)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("FeParam_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FeParam_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.FeParam"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FeParam)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("FeParam_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Format_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.Format"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Format)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Format_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Format_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Format"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Format)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Format_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FormatFAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.FormatFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FormatFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("FormatFAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "FormatFAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.FormatFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FormatFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("FormatFAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Gtc_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.Gtc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Gtc)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Gtc_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Gtc_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Gtc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Gtc)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Gtc_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Gtc_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.Gtc"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Gtc)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Gtc_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HelpChannel_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.HelpChannel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HelpChannel)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HelpChannel_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HelpChannel_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.HelpChannel"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HelpChannel)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HelpChannel_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HelpDataId_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.HelpDataId"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HelpDataId)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HelpDataId_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HelpDataId_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.HelpDataId"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HelpDataId)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HelpDataId_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HostCall_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.HostCall"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HostCall)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HostCall_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HostCall_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.HostCall"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HostCall)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HostCall_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HwFormat_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.HwFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HwFormat)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HwFormat_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HwFormat_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.HwFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HwFormat)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HwFormat_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HwFormatAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.HwFormatAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HwFormatAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HwFormatAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "HwFormatAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.HwFormatAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HwFormatAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("HwFormatAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MethodParameter_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.MethodParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MethodParameter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("MethodParameter_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MethodParameter_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.MethodParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MethodParameter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("MethodParameter_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MomAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.MomAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MomAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("MomAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MomAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.MomAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MomAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("MomAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MomMethodParameter_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.MomMethodParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MomMethodParameter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("MomMethodParameter_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MomMethodParameter_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.MomMethodParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MomMethodParameter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("MomMethodParameter_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "MomMethodParameter_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.MomMethodParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MomMethodParameter)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("MomMethodParameter_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "SelfDescribingFormatFAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.SelfDescribingFormatFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::SelfDescribingFormatFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("SelfDescribingFormatFAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "SelfDescribingFormatFAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.SelfDescribingFormatFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::SelfDescribingFormatFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("SelfDescribingFormatFAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "SelfDescribingWSFormatFAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.SelfDescribingWSFormatFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::SelfDescribingWSFormatFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("SelfDescribingWSFormatFAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "SelfDescribingWSFormatFAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.SelfDescribingWSFormatFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::SelfDescribingWSFormatFAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("SelfDescribingWSFormatFAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TableHwFormat_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.TableHwFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TableHwFormat)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TableHwFormat_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TableHwFormat_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.TableHwFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TableHwFormat)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TableHwFormat_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypeCollection_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.TypeCollection"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypeCollection)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TypeCollection_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypeCollection_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.TypeCollection"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypeCollection)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TypeCollection_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypeCollection_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.TypeCollection"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypeCollection)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TypeCollection_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypesGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.TypesGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypesGroup)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TypesGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypesGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.TypesGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypesGroup)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TypesGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypesGroup_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.TypesGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypesGroup)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("TypesGroup_Generation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Validator_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.Validator"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Validator)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Validator_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Validator_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Validator"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Validator)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Validator_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorEnumAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ValidatorEnumAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorEnumAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorEnumAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorEnumAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ValidatorEnumAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorEnumAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorEnumAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorEnumValueAtt_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ValidatorEnumValueAtt"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorEnumValueAtt)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorEnumValueAtt_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorEnumValueAtt_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ValidatorEnumValueAtt"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorEnumValueAtt)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorEnumValueAtt_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorIntegerAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ValidatorIntegerAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorIntegerAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorIntegerAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorIntegerAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ValidatorIntegerAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorIntegerAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorIntegerAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorRegexpAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ValidatorRegexpAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorRegexpAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorRegexpAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorRegexpAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ValidatorRegexpAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorRegexpAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorRegexpAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorStringAttribute_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.ValidatorStringAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorStringAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorStringAttribute_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "ValidatorStringAttribute_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.ValidatorStringAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::ValidatorStringAttribute)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("ValidatorStringAttribute_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "Validators_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.Validators"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Validators)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("Validators_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WSFormat_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.WSFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WSFormat)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WSFormat_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WSFormat_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.WSFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WSFormat)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WSFormat_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WSTypeCollection_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.WSTypeCollection"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WSTypeCollection)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WSTypeCollection_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WSTypeCollection_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.WSTypeCollection"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WSTypeCollection)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WSTypeCollection_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsError_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.WsError"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsError)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsError_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsError_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.WsError"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsError)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsError_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsInterface_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.WsInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsInterface)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsInterface_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsInterfaceGroup_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.WsInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsInterfaceGroup_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsInterfaceGroup_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.WsInterfaceGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsInterfaceGroup)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsInterfaceGroup_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsOperation_Conception_Page"
        labelExpression = "Conception"
        domainClass = "equinoxeCore.WsOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsOperation)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsOperation_Conception_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsOperation_Documentation_Page"
        labelExpression = "Documentation"
        domainClass = "equinoxeCore.WsOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsOperation)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsOperation_Documentation_Reference_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsOperation_Generation_Page"
        labelExpression = "Generation"
        domainClass = "equinoxeCore.WsOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsOperation)"
        groups += GroupDescription.ref("equinoxeCore_Reference")[ (it as Category).groups.at("WsOperation_Generation_Reference_Group") ]
      ]
      groups += GroupDescription.create[
        name = "BasicType_Conception_Reference_Group"
        domainClass = "equinoxeCore.BasicType"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BasicType_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicType_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BasicType_ReferenceTo_BasicType_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicType_Conception_Group").controls.at("BasicType_superType_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicType_ReferenceTo_BasicType_wsCompatible_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicType_Conception_Group").controls.at("BasicType_wsCompatible_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicType_Documentation_Reference_Group"
        domainClass = "equinoxeCore.BasicType"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BasicType_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BasicType_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicType_Generation_Reference_Group"
        domainClass = "equinoxeCore.BasicType"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "BasicType_ReferenceTo_BasicType_cloneable_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicType_Generation_Group").controls.at("BasicType_cloneable_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicType_ReferenceTo_BasicType_javaClassName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicType_Generation_Group").controls.at("BasicType_javaClassName_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicType_ReferenceTo_BasicType_momTypeArguments_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicType_Generation_Group").controls.at("BasicType_momTypeArguments_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicType_ReferenceTo_BasicType_momTypeClass_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicType_Generation_Group").controls.at("BasicType_momTypeClass_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicTypeFAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_MultiplicityElement_multiplicite_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MultiplicityElement_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_BasicTypeFAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicTypeFAttribute_Conception_Group").controls.at("BasicTypeFAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_BasicTypeFAttribute_calcule_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicTypeFAttribute_Conception_Group").controls.at("BasicTypeFAttribute_calcule_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_BasicTypeFAttribute_table_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicTypeFAttribute_Conception_Group").controls.at("BasicTypeFAttribute_table_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_BasicTypeFAttribute_colonne_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicTypeFAttribute_Conception_Group").controls.at("BasicTypeFAttribute_colonne_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_BasicTypeFAttribute_referenceDma_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("BasicTypeFAttribute_Conception_Group").controls.at("BasicTypeFAttribute_referenceDma_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicTypeFAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "BasicTypeFAttribute_Generation_Reference_Group"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_MomTypedElement_cobolFormats_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolFormats_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_MomTypedElement_cobolNames_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolNames_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_MomTypedElement_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_MomTypedElement_momTypeLg_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_momTypeLg_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_MomTypedElement_typeMom_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_typeMom_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "BasicTypeFAttribute_ReferenceTo_MomTypedElement_useDefaultsUnused_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_useDefaultsUnused_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Cbo_Conception_Reference_Group"
        domainClass = "equinoxeCore.Cbo"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Cbo_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Cbo_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Cbo_ReferenceTo_Cbo_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Cbo_Conception_Group").controls.at("Cbo_superType_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "Cbo_ReferenceTo_Cbo_referenceDmc_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Cbo_Conception_Group").controls.at("Cbo_referenceDmc_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Cbo_ReferenceTo_Cbo_typeMomParDefaut_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Cbo_Conception_Group").controls.at("Cbo_typeMomParDefaut_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Cbo_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Cbo"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Cbo_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "Cbo_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Cbo_Generation_Reference_Group"
        domainClass = "equinoxeCore.Cbo"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "Cbo_ReferenceTo_Cbo_cloneable_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Cbo_Generation_Group").controls.at("Cbo_cloneable_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "Cbo_ReferenceTo_Cbo_javaClassName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Cbo_Generation_Group").controls.at("Cbo_javaClassName_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Cbo_ReferenceTo_Cbo_useCboFactory_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Cbo_Generation_Group").controls.at("Cbo_useCboFactory_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.CboAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CboAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CboAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CboAttribute_ReferenceTo_CboAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CboAttribute_Conception_Group").controls.at("CboAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "CboAttribute_ReferenceTo_CboAttribute_referenceDma_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CboAttribute_Conception_Group").controls.at("CboAttribute_referenceDma_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CboAttribute_ReferenceTo_CboAttribute_table_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CboAttribute_Conception_Group").controls.at("CboAttribute_table_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CboAttribute_ReferenceTo_CboAttribute_colonne_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CboAttribute_Conception_Group").controls.at("CboAttribute_colonne_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CboAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CboAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CboAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboFilter_Conception_Reference_Group"
        domainClass = "equinoxeCore.CboFilter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CboFilter_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CboFilter_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboFilter_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CboFilter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CboFilter_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CboFilter_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboFilterCriteria_Conception_Reference_Group"
        domainClass = "equinoxeCore.CboFilterCriteria"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CboFilterCriteria_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CboFilterCriteria_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "CboFilterCriteria_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboFilterCriteria_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CboFilterCriteria"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CboFilterCriteria_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CboFilterCriteria_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboMethod_Conception_Reference_Group"
        domainClass = "equinoxeCore.CboMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CboMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CboMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CboMethod_ReferenceTo_AbstractReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CboMethod_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CboMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CboMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CboMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CboMethod_ReferenceTo_AbstractReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CbomomType_Conception_Reference_Group"
        domainClass = "equinoxeCore.CbomomType"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CbomomType_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "CbomomType_ReferenceTo_CbomomType_arguments_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CbomomType_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CbomomType_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CbomomType"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CbomomType_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ComplexType_Conception_Reference_Group"
        domainClass = "equinoxeCore.ComplexType"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ComplexType_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ComplexType_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "ComplexType_ReferenceTo_ComplexType_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ComplexType_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ComplexType_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ComplexType"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ComplexType_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ComplexType_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Converter_Conception_Reference_Group"
        domainClass = "equinoxeCore.Converter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Converter_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Converter_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "Converter_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Converter_ReferenceTo_Converter_complexConverter_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Converter_Conception_Group").controls.at("Converter_complexConverter_Check") as CheckboxDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "Converter_ReferenceTo_Converter_constants_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Converter_Conception_Group").controls.at("Converter_constants_TxtArea") as TextAreaDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Converter_ReferenceTo_Converter_patronParDefaut_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Converter_Conception_Group").controls.at("Converter_patronParDefaut_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Converter_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Converter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Converter_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "Converter_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ConverterPattern_Conception_Reference_Group"
        domainClass = "equinoxeCore.ConverterPattern"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ConverterPattern_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ConverterPattern_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ConverterPattern_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ConverterPattern_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ConverterPattern"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ConverterPattern_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ConverterPattern_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Converters_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Converters"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Converters_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.CtAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CtAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_ReferenceTo_CtAttribute_derive_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtAttribute_Conception_Group").controls.at("CtAttribute_derive_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_ReferenceTo_CtAttribute_final_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtAttribute_Conception_Group").controls.at("CtAttribute_final_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtAttribute_ReferenceTo_CtAttribute_statique_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtAttribute_Conception_Group").controls.at("CtAttribute_statique_Check") as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtAttribute_ReferenceTo_CtAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtAttribute_Conception_Group").controls.at("CtAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "CtAttribute_ReferenceTo_CtAttribute_visibility_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtAttribute_Conception_Group").controls.at("CtAttribute_visibility_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CtAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CtAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtClass_Conception_Reference_Group"
        domainClass = "equinoxeCore.CtClass"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CtClass_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtClass_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtClass_ReferenceTo_CtClass_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtClass_Conception_Group").controls.at("CtClass_superType_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtClass_ReferenceTo_CtClass_abstraite_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtClass_Conception_Group").controls.at("CtClass_abstraite_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtClass_ReferenceTo_CtClass_final_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtClass_Conception_Group").controls.at("CtClass_final_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtClass_ReferenceTo_CtClass_generable_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtClass_Conception_Group").controls.at("CtClass_generable_Check") as CheckboxDescription) ]
        ]
        controls += ListDescription.create[
          name = "CtClass_ReferenceTo_CtClass_implementeLesInterfaces_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtClass_Conception_Group").controls.at("CtClass_implementeLesInterfaces_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtClass_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CtClass"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CtClass_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CtClass_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtInterface_Conception_Reference_Group"
        domainClass = "equinoxeCore.CtInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CtInterface_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtInterface_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtInterface_ReferenceTo_CtInterface_generable_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtInterface_Conception_Group").controls.at("CtInterface_generable_Check") as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtInterface_ReferenceTo_CtInterface_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtInterface_Conception_Group").controls.at("CtInterface_superType_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtInterface_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CtInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CtInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CtInterface_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtOperation_Conception_Reference_Group"
        domainClass = "equinoxeCore.CtOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CtOperation_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtOperation_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtOperation_ReferenceTo_CtOperation_abstraite_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtOperation_Conception_Group").controls.at("CtOperation_abstraite_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtOperation_ReferenceTo_CtOperation_static_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtOperation_Conception_Group").controls.at("CtOperation_static_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "CtOperation_ReferenceTo_CtOperation_synchronized_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtOperation_Conception_Group").controls.at("CtOperation_synchronized_Check") as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "CtOperation_ReferenceTo_CtOperation_visibility_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("CtOperation_Conception_Group").controls.at("CtOperation_visibility_Enum") as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "CtOperation_ReferenceTo_AbstractExtendedReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "CtOperation_ReferenceTo_AbstractErrorRaisingMethod_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractErrorRaisingMethod_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtOperation_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CtOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CtOperation_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CtOperation_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "CtOperation_ReferenceTo_AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtPackage_Conception_Reference_Group"
        domainClass = "equinoxeCore.CtPackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "CtPackage_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "CtPackage_Documentation_Reference_Group"
        domainClass = "equinoxeCore.CtPackage"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "CtPackage_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DirectAccessMethod_Conception_Reference_Group"
        domainClass = "equinoxeCore.DirectAccessMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DirectAccessMethod_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DirectAccessMethod_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "DirectAccessMethod_ReferenceTo_AbstractExtendedReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DirectAccessMethod_ReferenceTo_DirectAccessMethod_callType_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DirectAccessMethod_Conception_Group").controls.at("DirectAccessMethod_callType_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DirectAccessMethod_ReferenceTo_DirectAccessMethod_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DirectAccessMethod_Conception_Group").controls.at("DirectAccessMethod_conversionMode_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DirectAccessMethod_Documentation_Reference_Group"
        domainClass = "equinoxeCore.DirectAccessMethod"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DirectAccessMethod_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "DirectAccessMethod_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "DirectAccessMethod_ReferenceTo_AbstractExtendedReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractExtendedReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DynamicAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.DynamicAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "DynamicAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "DynamicAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "DynamicAttribute_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DynamicAttribute_ReferenceTo_DynamicAttribute_attributeType_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DynamicAttribute_Conception_Group").controls.at("DynamicAttribute_attributeType_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "DynamicAttribute_ReferenceTo_DynamicAttribute_staticValueType_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DynamicAttribute_Conception_Group").controls.at("DynamicAttribute_staticValueType_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DynamicAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.DynamicAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DynamicAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "DynamicAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "DynamicAttributeGroup_Documentation_Reference_Group"
        domainClass = "equinoxeCore.DynamicAttributeGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "DynamicAttributeGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Enumeration_Conception_Reference_Group"
        domainClass = "equinoxeCore.Enumeration"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Enumeration_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Enumeration_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Enumeration_ReferenceTo_Enumeration_extensible_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Enumeration_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Enumeration_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Enumeration"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Enumeration_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "Enumeration_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "EnumerationValue_Conception_Reference_Group"
        domainClass = "equinoxeCore.EnumerationValue"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "EnumerationValue_ReferenceTo_EnumerationValue_value_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("EnumerationValue_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "EnumerationValue_Documentation_Reference_Group"
        domainClass = "equinoxeCore.EnumerationValue"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "EnumerationValue_ReferenceTo_EnumerationValue_description_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("EnumerationValue_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ErrorsContainer_Conception_Reference_Group"
        domainClass = "equinoxeCore.ErrorsContainer"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ErrorsContainer_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ErrorsContainer_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ErrorsContainer"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ErrorsContainer_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FeClass_Conception_Reference_Group"
        domainClass = "equinoxeCore.FeClass"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "FeClass_ReferenceTo_AbstractError_code_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractError_Conception_Group").controls.at("AbstractError_code_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "FeClass_ReferenceTo_AbstractError_domain_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractError_Conception_Group").controls.at("AbstractError_domain_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "FeClass_ReferenceTo_AbstractError_qualifiedName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractError_Conception_Group").controls.at("AbstractError_qualifiedName_Txt") as TextDescription) ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isInterfaceElement()"
            widget = CheckboxDescription.create[
              name = "FeClass_ReferenceTo_FeClass_withPropagation_Check"
              extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("FeClass_Conception_Group").controls.at("FeClass_withPropagation_Check") as CheckboxDescription) ]
            ]
          ]
        ]
        controls += DynamicMappingForDescription.create[
          iterator = "it"
          iterableExpression = "aql:OrderedSet{self}"
          ifs += DynamicMappingIfDescription.create[
            predicateExpression = "aql:self.isInterfaceElement()"
            widget = ListDescription.create[
              name = "FeClass_ReferenceTo_FeClass_convertedError_Ref"
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
        name = "FeClass_Documentation_Reference_Group"
        domainClass = "equinoxeCore.FeClass"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FeClass_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FeErrorGroup_Documentation_Reference_Group"
        domainClass = "equinoxeCore.FeErrorGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FeErrorGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FeParam_Conception_Reference_Group"
        domainClass = "equinoxeCore.FeParam"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "FeParam_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FeParam_Documentation_Reference_Group"
        domainClass = "equinoxeCore.FeParam"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FeParam_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Format_Conception_Reference_Group"
        domainClass = "equinoxeCore.Format"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Format_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Format_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "Format_ReferenceTo_ComplexType_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ComplexType_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "Format_ReferenceTo_Format_implementeLesInterfaces_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Format_Conception_Group").controls.at("Format_implementeLesInterfaces_Ref") as ListDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Format_ReferenceTo_Format_isBdt_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Format_Conception_Group").controls.at("Format_isBdt_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "Format_ReferenceTo_Format_referenceDmc_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Format_Conception_Group").controls.at("Format_referenceDmc_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Format_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Format"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Format_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "Format_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FormatFAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.FormatFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "FormatFAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "FormatFAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "FormatFAttribute_ReferenceTo_MultiplicityElement_multiplicite_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MultiplicityElement_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "FormatFAttribute_ReferenceTo_FormatFAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("FormatFAttribute_Conception_Group").controls.at("FormatFAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += TextDescription.create[
          name = "FormatFAttribute_ReferenceTo_FormatFAttribute_colonne_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("FormatFAttribute_Conception_Group").controls.at("FormatFAttribute_colonne_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "FormatFAttribute_ReferenceTo_FormatFAttribute_table_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("FormatFAttribute_Conception_Group").controls.at("FormatFAttribute_table_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "FormatFAttribute_ReferenceTo_FormatFAttribute_referenceDmr_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("FormatFAttribute_Conception_Group").controls.at("FormatFAttribute_referenceDmr_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "FormatFAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.FormatFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "FormatFAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "FormatFAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Gtc_Conception_Reference_Group"
        domainClass = "equinoxeCore.Gtc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Gtc_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "Gtc_ReferenceTo_AbstractRootElement_quartier_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_quartier_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "Gtc_ReferenceTo_AbstractRootElement_lgaName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_lgaName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "Gtc_ReferenceTo_AbstractRootElement_dependencies_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Conception_Group").controls.at("AbstractRootElement_dependencies_Ref") as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Gtc_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Gtc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Gtc_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Gtc_Generation_Reference_Group"
        domainClass = "equinoxeCore.Gtc"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CheckboxDescription.create[
          name = "Gtc_ReferenceTo_AbstractRootElement_standardGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_standardGeneration_Check") as CheckboxDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Gtc_ReferenceTo_AbstractRootElement_errorGeneration_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractRootElement_Generation_Group").controls.at("AbstractRootElement_errorGeneration_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "Gtc_ReferenceTo_TypesGroup_javaPackageName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("TypesGroup_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HelpChannel_Conception_Reference_Group"
        domainClass = "equinoxeCore.HelpChannel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "HelpChannel_ReferenceTo_HelpChannel_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HelpChannel_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HelpChannel_Documentation_Reference_Group"
        domainClass = "equinoxeCore.HelpChannel"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "HelpChannel_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HelpDataId_Conception_Reference_Group"
        domainClass = "equinoxeCore.HelpDataId"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "HelpDataId_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HelpDataId_Documentation_Reference_Group"
        domainClass = "equinoxeCore.HelpDataId"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "HelpDataId_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HostCall_Conception_Reference_Group"
        domainClass = "equinoxeCore.HostCall"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "HostCall_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "HostCall_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "HostCall_ReferenceTo_HostCall_transactionId_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HostCall_Conception_Group").controls.at("HostCall_transactionId_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "HostCall_ReferenceTo_HostCall_calltype_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HostCall_Conception_Group").controls.at("HostCall_calltype_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "HostCall_ReferenceTo_HostCall_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HostCall_Conception_Group").controls.at("HostCall_conversionMode_Enum") as SelectDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HostCall_Documentation_Reference_Group"
        domainClass = "equinoxeCore.HostCall"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "HostCall_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "HostCall_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HwFormat_Conception_Reference_Group"
        domainClass = "equinoxeCore.HwFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "HwFormat_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "HwFormat_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "HwFormat_ReferenceTo_HwFormat_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormat_Conception_Group").controls.at("HwFormat_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += SelectDescription.create[
          name = "HwFormat_ReferenceTo_HwFormat_direction_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormat_Conception_Group").controls.at("HwFormat_direction_Enum") as SelectDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "HwFormat_ReferenceTo_HwFormat_fepi_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormat_Conception_Group").controls.at("HwFormat_fepi_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormat_ReferenceTo_HwFormat_fepiSubProgId_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormat_Conception_Group").controls.at("HwFormat_fepiSubProgId_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormat_ReferenceTo_HwFormat_version_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormat_Conception_Group").controls.at("HwFormat_version_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HwFormat_Documentation_Reference_Group"
        domainClass = "equinoxeCore.HwFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "HwFormat_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "HwFormat_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HwFormatAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.HwFormatAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "HwFormatAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_hostName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_hostName_Txt") as TextDescription) ]
        ]
        controls += SelectDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_hostType_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_hostType_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_libellePacbase_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_libellePacbase_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_hostLength_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_hostLength_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_hostFloatLength_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_hostFloatLength_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_hostSign_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_hostSign_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_hostFormat_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_hostFormat_Txt") as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_technical_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_technical_Check") as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "HwFormatAttribute_ReferenceTo_HwFormatAttribute_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("HwFormatAttribute_Conception_Group").controls.at("HwFormatAttribute_type_Ref") as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "HwFormatAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.HwFormatAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "HwFormatAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MethodParameter_Conception_Reference_Group"
        domainClass = "equinoxeCore.MethodParameter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "MethodParameter_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "MethodParameter_ReferenceTo_MethodParameter_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MethodParameter_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MethodParameter_Documentation_Reference_Group"
        domainClass = "equinoxeCore.MethodParameter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MethodParameter_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MomAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.MomAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "MomAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "MomAttribute_ReferenceTo_MomAttribute_cobolFormat_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomAttribute_Conception_Group").controls.at("MomAttribute_cobolFormat_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "MomAttribute_ReferenceTo_MomAttribute_cobolName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomAttribute_Conception_Group").controls.at("MomAttribute_cobolName_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MomAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.MomAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MomAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MomMethodParameter_Conception_Reference_Group"
        domainClass = "equinoxeCore.MomMethodParameter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "MomMethodParameter_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "MomMethodParameter_ReferenceTo_MethodParameter_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MethodParameter_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MomMethodParameter_Documentation_Reference_Group"
        domainClass = "equinoxeCore.MomMethodParameter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MomMethodParameter_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "MomMethodParameter_Generation_Reference_Group"
        domainClass = "equinoxeCore.MomMethodParameter"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "MomMethodParameter_ReferenceTo_MomTypedElement_cobolFormats_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolFormats_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "MomMethodParameter_ReferenceTo_MomTypedElement_cobolNames_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_cobolNames_TxtArea") as TextAreaDescription) ]
        ]
        controls += SelectDescription.create[
          name = "MomMethodParameter_ReferenceTo_MomTypedElement_conversionMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_conversionMode_Enum") as SelectDescription) ]
        ]
        controls += TextDescription.create[
          name = "MomMethodParameter_ReferenceTo_MomTypedElement_momTypeLg_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_momTypeLg_Txt") as TextDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "MomMethodParameter_ReferenceTo_MomTypedElement_typeMom_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_typeMom_Ref") as EqxHyperlinkDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "MomMethodParameter_ReferenceTo_MomTypedElement_useDefaultsUnused_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MomTypedElement_Generation_Group").controls.at("MomTypedElement_useDefaultsUnused_Check") as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "SelfDescribingFormatFAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.SelfDescribingFormatFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_MultiplicityElement_multiplicite_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MultiplicityElement_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_ComplexType_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ComplexType_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_Format_implementeLesInterfaces_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Format_Conception_Group").controls.at("Format_implementeLesInterfaces_Ref") as ListDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_Format_isBdt_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Format_Conception_Group").controls.at("Format_isBdt_Check") as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_Format_referenceDmc_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("Format_Conception_Group").controls.at("Format_referenceDmc_Txt") as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "SelfDescribingFormatFAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.SelfDescribingFormatFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "SelfDescribingFormatFAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "SelfDescribingWSFormatFAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.SelfDescribingWSFormatFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "SelfDescribingWSFormatFAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "SelfDescribingWSFormatFAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += SelectDescription.create[
          name = "SelfDescribingWSFormatFAttribute_ReferenceTo_MultiplicityElement_multiplicite_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("MultiplicityElement_Conception_Group").controls.head as SelectDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "SelfDescribingWSFormatFAttribute_ReferenceTo_ComplexType_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ComplexType_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "SelfDescribingWSFormatFAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.SelfDescribingWSFormatFAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "SelfDescribingWSFormatFAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "SelfDescribingWSFormatFAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TableHwFormat_Conception_Reference_Group"
        domainClass = "equinoxeCore.TableHwFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "TableHwFormat_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CustomDescription.create[
          name = "TableHwFormat_ReferenceTo_TableHwFormat_multiplicite_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("TableHwFormat_Conception_Group").controls.head as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TableHwFormat_Documentation_Reference_Group"
        domainClass = "equinoxeCore.TableHwFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "TableHwFormat_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypeCollection_Conception_Reference_Group"
        domainClass = "equinoxeCore.TypeCollection"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "TypeCollection_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "TypeCollection_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "TypeCollection_ReferenceTo_TypeCollection_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("TypeCollection_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypeCollection_Documentation_Reference_Group"
        domainClass = "equinoxeCore.TypeCollection"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "TypeCollection_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "TypeCollection_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypeCollection_Generation_Reference_Group"
        domainClass = "equinoxeCore.TypeCollection"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += CustomDescription.create[
          name = "TypeCollection_ReferenceTo_TypeCollection_multiplicityMomMax_Eqx_Spinner"
          extends = CustomDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("TypeCollection_Generation_Group").controls.head as CustomDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypesGroup_Conception_Reference_Group"
        domainClass = "equinoxeCore.TypesGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "TypesGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypesGroup_Documentation_Reference_Group"
        domainClass = "equinoxeCore.TypesGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "TypesGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "TypesGroup_Generation_Reference_Group"
        domainClass = "equinoxeCore.TypesGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "TypesGroup_ReferenceTo_TypesGroup_javaPackageName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("TypesGroup_Generation_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Validator_Conception_Reference_Group"
        domainClass = "equinoxeCore.Validator"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "Validator_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "Validator_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "Validator_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Validator_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Validator"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Validator_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "Validator_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorEnumAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.ValidatorEnumAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ValidatorEnumAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ValidatorEnumAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ValidatorEnumAttribute_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorEnumAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ValidatorEnumAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ValidatorEnumAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ValidatorEnumAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorEnumValueAtt_Conception_Reference_Group"
        domainClass = "equinoxeCore.ValidatorEnumValueAtt"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ValidatorEnumValueAtt_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ValidatorEnumValueAtt_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ValidatorEnumValueAtt_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorEnumValueAtt_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ValidatorEnumValueAtt"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ValidatorEnumValueAtt_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ValidatorEnumValueAtt_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorIntegerAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.ValidatorIntegerAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ValidatorIntegerAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ValidatorIntegerAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ValidatorIntegerAttribute_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorIntegerAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ValidatorIntegerAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ValidatorIntegerAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ValidatorIntegerAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorRegexpAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.ValidatorRegexpAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ValidatorRegexpAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ValidatorRegexpAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ValidatorRegexpAttribute_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorRegexpAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ValidatorRegexpAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ValidatorRegexpAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ValidatorRegexpAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorStringAttribute_Conception_Reference_Group"
        domainClass = "equinoxeCore.ValidatorStringAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "ValidatorStringAttribute_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "ValidatorStringAttribute_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += TextDescription.create[
          name = "ValidatorStringAttribute_ReferenceTo_ParameterElement_javaInterface_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ParameterElement_Conception_Group").controls.head as TextDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "ValidatorStringAttribute_Documentation_Reference_Group"
        domainClass = "equinoxeCore.ValidatorStringAttribute"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "ValidatorStringAttribute_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "ValidatorStringAttribute_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "Validators_Documentation_Reference_Group"
        domainClass = "equinoxeCore.Validators"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "Validators_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WSFormat_Conception_Reference_Group"
        domainClass = "equinoxeCore.WSFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "WSFormat_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "WSFormat_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "WSFormat_ReferenceTo_ComplexType_superType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("ComplexType_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WSFormat_Documentation_Reference_Group"
        domainClass = "equinoxeCore.WSFormat"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "WSFormat_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "WSFormat_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WSTypeCollection_Conception_Reference_Group"
        domainClass = "equinoxeCore.WSTypeCollection"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "WSTypeCollection_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "WSTypeCollection_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "WSTypeCollection_ReferenceTo_TypeCollection_type_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("TypeCollection_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WSTypeCollection_Documentation_Reference_Group"
        domainClass = "equinoxeCore.WSTypeCollection"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "WSTypeCollection_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "WSTypeCollection_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsError_Conception_Reference_Group"
        domainClass = "equinoxeCore.WsError"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "WsError_ReferenceTo_AbstractError_code_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractError_Conception_Group").controls.at("AbstractError_code_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "WsError_ReferenceTo_AbstractError_domain_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractError_Conception_Group").controls.at("AbstractError_domain_Txt") as TextDescription) ]
        ]
        controls += TextDescription.create[
          name = "WsError_ReferenceTo_AbstractError_qualifiedName_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractError_Conception_Group").controls.at("AbstractError_qualifiedName_Txt") as TextDescription) ]
        ]
        controls += ListDescription.create[
          name = "WsError_ReferenceTo_WsError_erreursInterceptees_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("WsError_Conception_Group").controls.head as ListDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsError_Documentation_Reference_Group"
        domainClass = "equinoxeCore.WsError"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "WsError_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsInterface_Documentation_Reference_Group"
        domainClass = "equinoxeCore.WsInterface"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "WsInterface_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsInterfaceGroup_Conception_Reference_Group"
        domainClass = "equinoxeCore.WsInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "WsInterfaceGroup_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "WsInterfaceGroup_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsInterfaceGroup_Documentation_Reference_Group"
        domainClass = "equinoxeCore.WsInterfaceGroup"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "WsInterfaceGroup_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "WsInterfaceGroup_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsOperation_Conception_Reference_Group"
        domainClass = "equinoxeCore.WsOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextDescription.create[
          name = "WsOperation_ReferenceTo_NamedElement_name_Txt"
          extends = TextDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("NamedElement_Conception_Group").controls.head as TextDescription) ]
        ]
        controls += CheckboxDescription.create[
          name = "WsOperation_ReferenceTo_IbpNamedElementDeprecable_deprecated_Check"
          extends = CheckboxDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Conception_Group").controls.head as CheckboxDescription) ]
        ]
        controls += EqxHyperlinkDescription.create[
          name = "WsOperation_ReferenceTo_AbstractReturningMethod_returnType_Ref"
          extends = EqxHyperlinkDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Conception_Group").controls.head as EqxHyperlinkDescription) ]
        ]
        controls += ListDescription.create[
          name = "WsOperation_ReferenceTo_WsOperation_possibleErrors_Ref"
          extends = ListDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("WsOperation_Conception_Group").controls.head as ListDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "WsOperation_ReferenceTo_AbstractConstrainedMethod_precondition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractConstrainedMethod_Conception_Group").controls.at("AbstractConstrainedMethod_precondition_TxtArea") as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "WsOperation_ReferenceTo_AbstractConstrainedMethod_postcondition_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractConstrainedMethod_Conception_Group").controls.at("AbstractConstrainedMethod_postcondition_TxtArea") as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsOperation_Documentation_Reference_Group"
        domainClass = "equinoxeCore.WsOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += TextAreaDescription.create[
          name = "WsOperation_ReferenceTo_DocumentableElement_documentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("DocumentableElement_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "WsOperation_ReferenceTo_IbpNamedElementDeprecable_commentsDeprecated_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("IbpNamedElementDeprecable_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        controls += TextAreaDescription.create[
          name = "WsOperation_ReferenceTo_AbstractReturningMethod_returnTypeDocumentation_TxtArea"
          extends = TextAreaDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("AbstractReturningMethod_Documentation_Group").controls.head as TextAreaDescription) ]
        ]
        style = GroupStyle.create[
          barStyle = org.eclipse.sirius.properties.TitleBarStyle.getByName("NO_TITLE")
          toggleStyle = org.eclipse.sirius.properties.ToggleStyle.getByName("NONE")
          expandedByDefault = true
        ]
      ]
      groups += GroupDescription.create[
        name = "WsOperation_Generation_Reference_Group"
        domainClass = "equinoxeCore.WsOperation"
        semanticCandidateExpression = "var:self"
        preconditionExpression = "aql:true"
        controls += SelectDescription.create[
          name = "WsOperation_ReferenceTo_WsOperation_transactionalMode_Enum"
          extends = SelectDescription.ref("equinoxeCore_Definition")[ ((it as Category).groups.at("WsOperation_Generation_Group").controls.head as SelectDescription) ]
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
