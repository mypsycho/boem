package org.mypsycho.emf.modit.reverit.test

import java.nio.file.Paths
import org.eclipse.sirius.viewpoint.description.DescriptionPackage
import org.junit.Test
import org.mypsycho.emf.modit.ClassId
import org.mypsycho.emf.modit.EReversIt
import fr.ibp.odv.xad2.rcp.model.EqxModelExtensions

class EqxDesignGenTest extends ReversItTestContext {
    
    @Test
    def void testGenDesign() {
        
        val gen = new SiriusGenerator(EqxModelExtensions.Tab)
        val categories = gen.perform(EqxModelExtensions.STRETCHER)
        
        //val targetPath = Paths.get("target/tests/gen")
        val targetPath = Paths.get("src-gen")
        
        val pack = 'fr.ibp.odv.xad2.rcp.gen'
        
        new EReversIt(new ClassId(pack, 'EqxModelGenDesign'), 
            targetPath, 
            categories.map[ it -> new ClassId(pack, name.toFirstUpper) ]
        ) => [
            shortcut = DescriptionPackage.eINSTANCE.getIdentifiedElement_Name()
            explicitExtras.put(gen.disabled, "Color#disabled")
            perform
        ]

    }
    
}