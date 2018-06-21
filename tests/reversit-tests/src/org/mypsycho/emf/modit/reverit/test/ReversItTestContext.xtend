package org.mypsycho.emf.modit.reverit.test

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxSiriusPropertiesPackage
import org.eclipse.sirius.diagram.description.DescriptionPackage
import org.eclipse.sirius.diagram.description.filter.FilterPackage
import org.eclipse.sirius.diagram.description.style.StylePackage
import org.eclipse.sirius.diagram.description.tool.ToolPackage
import org.eclipse.sirius.properties.PropertiesPackage
import org.mypsycho.emf.modit.EModIt

/**
 * Abstract class for BOEM API tests
 */
abstract class ReversItTestContext {
	
	protected extension EModIt factory = EModIt.using(
        EqxSiriusPropertiesPackage.eINSTANCE,
        DescriptionPackage.eINSTANCE,
        FilterPackage.eINSTANCE,
        StylePackage.eINSTANCE,
        ToolPackage.eINSTANCE,
        PropertiesPackage.eINSTANCE,
        org.eclipse.sirius.viewpoint.description.DescriptionPackage.eINSTANCE,
        org.eclipse.sirius.viewpoint.description.tool.ToolPackage.eINSTANCE
    )

}
