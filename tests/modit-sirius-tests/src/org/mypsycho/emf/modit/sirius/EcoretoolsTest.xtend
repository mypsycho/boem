package org.mypsycho.emf.modit.sirius

import java.nio.file.Paths
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.xmi.XMIResource
import org.eclipse.emf.ecoretools.design.sirius.EcoretoolsDesign
import org.junit.Test
import org.mypsycho.modit.emf.EReversIt
import org.mypsycho.modit.emf.sirius.tool.SiriusReverseIt

/**
 * Test model generation and reverse.
 * 
 * @author nperansin
 */
// Plugin-test: Sirius needs a lot of dependencies to load odesign.
class EcoretoolsTest {

	// Specific
	protected static val TEST_DIR = Paths.get("target/test-run").toAbsolutePath
		.resolve(EcoretoolsTest.simpleName)

	protected static val TEST_BUNDLE = "org.eclipse.emf.ecoretools.design"
	protected static val PACKAGE_PATH = TEST_BUNDLE.replace('.', '/')
	protected static val REFMODEL_PATH = '''/«TEST_BUNDLE»/description/ecore.odesign'''
	
	protected static val REFSRC_DIR = Paths.get("src").toAbsolutePath
		
	protected static val TESTSRC_PATH = TEST_DIR.resolve("src")

	protected static val MODEL_REF = Paths.get("resource/EcoretoolsTest/ecore.odesign").toAbsolutePath
			
	@Test
	def void reverseSiriusModel() {
		new SiriusReverseIt(REFMODEL_PATH, TESTSRC_PATH, 
			TEST_BUNDLE + ".sirius.EcoretoolsDesign"
		).perform
		
				
        FileComparator.assertIdentical(
        	REFSRC_DIR.resolve(PACKAGE_PATH).resolve("sirius"), 
        	TESTSRC_PATH.resolve(PACKAGE_PATH).resolve("sirius")
        )
	}
	
	@Test
	def void reverseModel() {
		val rs = new ResourceSetImpl
		new EReversIt(TEST_BUNDLE + ".modit.EcoretoolsDesign", TESTSRC_PATH, 
			rs.getResource(URI.createPlatformPluginURI(REFMODEL_PATH, true), true)
		).perform
		
        FileComparator.assertIdentical(
        	REFSRC_DIR.resolve(PACKAGE_PATH).resolve("modit"), 
        	TESTSRC_PATH.resolve(PACKAGE_PATH).resolve("modit")
        )
        	
        
	}

	
	@Test 
    def void writeSiriusODesign() {
    	val rs = new ResourceSetImpl()
    	
//    	// plugin test is required: Sirius drags indirect dependencies.
//    	rs.resourceFactoryRegistry.extensionToFactoryMap.put("odesign", 
//    		new ResourceFactoryImpl() // replace 
//    		// org.eclipse.sirius.viewpoint.description.util.DescriptionResourceFactoryImpl
//    	)
//    	
//    	rs.URIConverter.URIMap.put(
//    		URI.createURI("environment:/viewpoint"),
//    		URI.createPlatformPluginURI(SiriusPlugin.ID + "/model/Environment.odesign", true)
//    	)
//    	
		// new ResourceSetImpl().resourceFactoryRegistry.extensionToFactoryMap
        val res = rs.createResource(URI.createFileURI(TEST_DIR.resolve("description/ecoretools.odesign").toString))
        
        new EcoretoolsDesign().loadContent(res).head
                        
        res.save(#{
        	XMIResource.OPTION_ENCODING -> "ASCII"
        });

		FileComparator.assertIdentical(
        	TEST_DIR.resolve("description/ecoretools.odesign"), 
        	MODEL_REF
        )

    }
    
    
    	
	@Test 
    def void writeModelODesign() {
    	val rs = new ResourceSetImpl()
    	
//    	// plugin test is required: Sirius drags indirect dependencies.
//    	rs.resourceFactoryRegistry.extensionToFactoryMap.put("odesign", 
//    		new ResourceFactoryImpl() // replace 
//    		// org.eclipse.sirius.viewpoint.description.util.DescriptionResourceFactoryImpl
//    	)
//    	
//    	rs.URIConverter.URIMap.put(
//    		URI.createURI("environment:/viewpoint"),
//    		URI.createPlatformPluginURI(SiriusPlugin.ID + "/model/Environment.odesign", true)
//    	)
//    	
		// new ResourceSetImpl().resourceFactoryRegistry.extensionToFactoryMap
        val res = rs.createResource(URI.createFileURI(TEST_DIR.resolve("description/ecoretools_plain.odesign").toString))
        
        new org.eclipse.emf.ecoretools.design.modit.EcoretoolsDesign().loadContent(res).head
                        
        res.save(#{
        	XMIResource.OPTION_ENCODING -> "ASCII"
        });

        FileComparator.assertIdentical(
        	TEST_DIR.resolve("description/ecoretools_plain.odesign"), 
        	MODEL_REF
        )
    }

}
