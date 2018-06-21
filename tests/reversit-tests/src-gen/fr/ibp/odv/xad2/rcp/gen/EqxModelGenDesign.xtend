package fr.ibp.odv.xad2.rcp.gen

import java.util.HashMap
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.mypsycho.emf.modit.EModIt

class EqxModelGenDesign {

  public val extras = new HashMap<String, EObject> 

  public extension EModIt factory = EModIt.using(
    fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxSiriusPropertiesPackage.eINSTANCE,
    org.eclipse.sirius.properties.PropertiesPackage.eINSTANCE,
    org.eclipse.sirius.viewpoint.description.tool.ToolPackage.eINSTANCE
  )

  new() {
    val rs = new ResourceSetImpl
    extras.putAll(#{ // Named elements
      "Color#disabled" -> (extras.get("") as org.eclipse.sirius.viewpoint.description.Environment).systemColors.entries.get(4)
    })
  }

  def content() {
    #[
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeDialogue_Definition(this).call,
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeComposantsMetier_Definition(this).call,
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeCore_Definition(this).call,
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeProcedure_Definition(this).call,
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeDialogue_Reference(this).call,
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeComposantsMetier_Reference(this).call,
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeCore_Reference(this).call,
      new fr.ibp.odv.xad2.rcp.gen.EquinoxeProcedure_Reference(this).call
    ].assemble
  }

  def context() {
    this
  }

  def <T extends org.eclipse.sirius.viewpoint.description.IdentifiedElement> at(Iterable<T> values, Object key) {
    values.findFirst[ name == key ]
  }

}
