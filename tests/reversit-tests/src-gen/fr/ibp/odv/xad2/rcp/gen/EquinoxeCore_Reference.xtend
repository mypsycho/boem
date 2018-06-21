package fr.ibp.odv.xad2.rcp.gen

import java.util.Map
import java.util.concurrent.Callable
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.PageDescription
import org.mypsycho.emf.modit.EModIt

class EquinoxeCore_Reference implements Callable<EObject> {
  val EqxModelGenDesign context
  val extension EModIt factory

  new(EqxModelGenDesign parent) {
    this.context = parent
    this.factory = parent.factory
  }

  override call() {
    "EquinoxeCore_Reference".alias(Category.create[
      name = "equinoxeCore_Reference"
      pages += PageDescription.create[
        name = "BasicType_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.BasicType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicType)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("BasicType_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "BasicTypeFAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.BasicTypeFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::BasicTypeFAttribute)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("BasicTypeFAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "Cbo_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.Cbo"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Cbo)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("Cbo_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CboAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.CboAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CboAttribute)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("CboAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CbomomType_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.CbomomType"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CbomomType)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("CbomomType_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "Converter_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.Converter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Converter)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("Converter_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.CtAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtAttribute)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("CtAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtClass_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.CtClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtClass)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("CtClass_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtInterface_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.CtInterface"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtInterface)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("CtInterface_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "CtOperation_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.CtOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::CtOperation)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("CtOperation_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DirectAccessMethod_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.DirectAccessMethod"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::DirectAccessMethod)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("DirectAccessMethod_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "DynamicAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.DynamicAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::DynamicAttribute)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("DynamicAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "Enumeration_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.Enumeration"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Enumeration)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("Enumeration_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "EnumerationValue_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.EnumerationValue"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::EnumerationValue)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("EnumerationValue_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "FeClass_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.FeClass"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FeClass)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("FeClass_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "Format_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.Format"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::Format)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("Format_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "FormatFAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.FormatFAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::FormatFAttribute)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("FormatFAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "HostCall_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.HostCall"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HostCall)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("HostCall_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "HwFormat_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.HwFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HwFormat)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("HwFormat_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "HwFormatAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.HwFormatAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::HwFormatAttribute)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("HwFormatAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "MethodParameter_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.MethodParameter"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MethodParameter)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("MethodParameter_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "MomAttribute_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.MomAttribute"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::MomAttribute)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("MomAttribute_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "TableHwFormat_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.TableHwFormat"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TableHwFormat)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("TableHwFormat_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypeCollection_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.TypeCollection"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypeCollection)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("TypeCollection_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "TypesGroup_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.TypesGroup"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::TypesGroup)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("TypesGroup_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsError_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.WsError"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsError)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("WsError_conception_Group") ]
      ]
      pages += PageDescription.create[
        name = "WsOperation_conception_Page"
        labelExpression = "conception"
        domainClass = "equinoxeCore.WsOperation"
        preconditionExpression = "aql:self.oclIsTypeOf(equinoxeCore::WsOperation)"
        groups += GroupDescription.ref("EquinoxeCore_Definition")[ (it as Category).groups.at("WsOperation_conception_Group") ]
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
