package org.mypsycho.emf.modit.reverit.test

import fr.ibp.odv.xad2.rcp.EqxModelDesign
import java.nio.file.Paths
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.xmi.XMIResource
import org.eclipse.emf.ecore.xmi.XMLResource
import org.eclipse.sirius.viewpoint.description.util.DescriptionResourceFactoryImpl
import org.junit.Test

class EqxDesignWriteTest {
    
    @Test
    def void writeODesign() {
        
        val targetFile = Paths.get("target/tests/revers.odesign"/*"src-gen",""*/)
        val resSet = new DescriptionResourceFactoryImpl()
        
        val res = resSet.createResource(URI.createFileURI(targetFile.toString));
        res.getContents().add(new EqxModelDesign().content.access("EqxModelDesign"));
        
        val saveOptions = (res as XMLResource).getDefaultSaveOptions();
        saveOptions.put(XMIResource.OPTION_ENCODING, "UTF-8"); //$NON-NLS-1$
        saveOptions.put(XMIResource.OPTION_LINE_DELIMITER, "\n"); //$NON-NLS-1$
        // saveOptions.put(XMLResource.OPTION_CONFIGURATION_CACHE, Boolean.TRUE);
        
        res.save(null);
        
    }
}