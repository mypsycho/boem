
package org.mypsycho.emf.modit.reverit.test

import fr.ibp.odv.xad2.rcp.model.EqxModelExtensions
import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import java.io.IOException
import java.nio.charset.Charset
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.util.ArrayList
import java.util.Collections
import java.util.HashMap
import java.util.List
import java.util.Map
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.sirius.properties.AbstractControlDescription
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.ControlDescription
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.DynamicMappingForDescription
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.HyperlinkDescription
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.ViewExtensionDescription
import org.eclipse.sirius.viewpoint.description.DescriptionPackage
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.junit.Ignore
import org.junit.Test
import org.mypsycho.emf.modit.ClassId
import org.mypsycho.emf.modit.EReversIt
import org.mypsycho.emf.modit.reverit.test.EmfExtensions.Ext
import org.mypsycho.emf.reflem.EmfContribution
import org.mypsycho.emf.reflem.EmfStretcher

import static extension java.nio.file.Files.*

/**
 * Test the BOEM API for non-containment EReferences
 */
class EqxDesignReversTest extends ReversItTestContext {
    
    val location = "/fr.ibp.odv.xad2.rcp/description/model.odesign"
    val resource = new ResourceSetImpl().getResource(URI.createPlatformPluginURI(location, true), true)
    val siriusGroup = resource.contents.get(0) as Group
    val codeCharset = Charset.forName("UTF-8")
    
	/**
	 * Tests that an element registered against an id can be accessed with its id within the tree
	 */
	@Test
	def void testPlainReverse() {

        val pack = 'fr.ibp.odv.xad2.rcp'
        
        val targetPath = Paths.get("target/tests/gen")
        // val targetPath = Paths.get("src-gen")
        

        val rv = new EReversIt(pack + '.EqxModelDesign', targetPath.createDirectories, resource)
        rv.shortcut = DescriptionPackage.eINSTANCE.getIdentifiedElement_Name()
        
        siriusGroup => [
            
            // Split RepresentationDescription
            rv.splits.putAll(ownedViewpoints
                .filter[ modelFileExtension != null ]
                .map[ ownedRepresentations ]
                .flatten
                .toInvertedMap[ new ClassId(pack, name) ])
            
            // Split Properties extensions
            rv.splits.putAll(extensions
                .filter(ViewExtensionDescription)
                .map[ categories ].flatten
                .toInvertedMap[ new ClassId(pack, name) ]
            )
            rv.explicitExtras.putAll(systemColorsPalette.entries.toInvertedMap[ "Color#" + name ])
        ]
        rv.encoding = codeCharset // aligned to project encoding
        
        rv.perform
    }
        
    enum Tab{ Conception, Documentation, Affichage, Generation }
    
   	val expecteds = new ArrayList<ControlDescription>
	val conditions = new HashMap<EStructuralFeature, Map<String, String>> // Class name, aql
	// Declaring class -> tab  -> Inheriting class -> ordered features
	val orders = new HashMap<EClass, Map<Tab, Map<String, List<EStructuralFeature>>>>
	
    @Test
    def void testMetaReverse() {
        expecteds.clear
        val pack = "fr.ibp.odv.xad2.rcp.model"

		// Find activation condition and display orders
		siriusGroup.extensions.filter(ViewExtensionDescription)
            .map[ categories ].flatten.filter[ name.endsWith("_Reference") ]
            .map[ groups ].flatten.filter[ name.endsWith("_Reference_Group") ]
            .forEach[ extractUsage ]

		// Find conflictual condition
		EqxModelExtensions.STRETCHER.allSources
			.map[ EClassifiers ].flatten.filter(EClass)
			.map[ EStructuralFeatures ].flatten
			.forEach[ checkCondition ]
			
		// Find conflictual orders
		orders.keySet.forEach[ checkOrder ]
		

        val targetPath = Paths.get("target/tests/gen")
        //val targetPath = Paths.get("src-gen")
        EqxModelExtensions.STRETCHER.allSources
        	.forEach[ createContribution(pack, targetPath) ]


// Find DynamicMappingForDescription
        
        // ---
        // Write a status upon feature orders

        siriusGroup.extensions.filter(ViewExtensionDescription)
            .map[ categories ].flatten
            .filter[ name.endsWith("_Reference") && !pages.empty ]
            .map[ pages ].flatten
            .map[ toTabbedClass ]
        	.filterNull.groupBy[ key ]
        	.forEach[ key, list |
				val tabs = new ArrayList(list.map[ value ])
        		if (tabs != new ArrayList(tabs).sort) { // order of page by tab 
        			println('''>>>> «key» wrong Page order «tabs»''')
				}
        	] // Note : no instance
 
        // Reverse anomalies : missing element edit
        siriusGroup.extensions.filter(ViewExtensionDescription)
            .map[ categories ].flatten
            .filter[ name.endsWith("_Definition") ]
            .map[ groups ].flatten
            .map[ controls ].flatten
            .filter[ !expecteds.contains(it) ]
            .forEach[
                println(">>>> Unexpected control " + name)
            ]

    }
	
	def checkOrder(EClass it) {
		orders.get(it)?.forEach[ tab, orderByUsage |
			val useds = orderByUsage.values.toSet
			if (useds.size != 1) {
				println(">>>> Irregular order " 
					+ name + " : " 
					+ orderByUsage.entrySet.map[ key + "=" + value.map[ name ].join(",") ].join(' ')
				)
			} else {
				orderByUsage.put(null, useds.head)
			}// else is order as reflective
		]
	}
	
	def checkCondition(EStructuralFeature it) {
		val condition = conditions.get(it)
		if (condition == null) { // always used
			return
		}
		val declaring = EContainingClass
		val classes = EqxModelExtensions.STRETCHER.allSources
			.map[ EClassifiers ].flatten.filter(EClass)
			.filter[ !abstract && (it == declaring || EAllSuperTypes.contains(declaring)) ]
			.map[ name ].toSet
		if (!classes.equals(condition.keySet)) { // Not all classes enable the feature
			println(">>>> Partial activation " 
				+ EContainingClass.name + "." + name + " : " 
				+ classes + " => "
				+ condition.entrySet.map[ key + "=\"" + value + "\"" ].join(',')
			)
		} else {  // Some classes enable the feature with diff condition
			val values = condition.values.toSet
			if (values.size == 1) {
				condition.put(null, values.head)
			} else {
				println(">>>> contextual activation " 
					+ EContainingClass.name + "." + name + " : " 
					+ condition.entrySet.map[ key + "=" + value ].join(',')
				)
			}
		}
	}

    
    def findClass(ControlDescription it) {
    	val id = (eContainer as GroupDescription).domainClass.split('\\.')
    	EqxModelExtensions.STRETCHER
    		.allSources.findFirst[ name == id.get(0) ]
    		.EClassifiers.findFirst[ name == id.get(1) ] as EClass
    }
    
    def toTabbedClass(PageDescription it) {
    	val tab = Tab.values.findFirst[ t| 
			name.endsWith('_' + t.name + '_Page')
		]
		if (tab == null) {
			println(">>>> Unexpected Page : " + name)
			return null
		}
		val classname = name.substring(0, name.length-('_' + tab.name + '_Page').length)
		classname -> tab
    }
    
    
    def createContribution(EPackage it, String pack, Path targetPath) {
        val options = eAllContents.toIterable
            .filter(EStructuralFeature)
            .filter[ if (it instanceof EReference) !containment else true ]
            .map[ toOptions ]
            + 
            eAllContents.toIterable
            	.filter(EClass).map[ toOptions ]

        
        val classId = new ClassId(pack, name.toFirstUpper + 'Contrib')
        targetPath.resolve(classId.toPath).toFile[
'''package fr.ibp.odv.xad2.rcp.model

import static «EmfExtensions.name».Ext.*

import «EqxModelExtensions.name».Tab
import «EmfContribution.name»
import «EmfStretcher.name»
import fr.ibp.odv.xad2.model.«name».«name.toFirstUpper»Package

class «classId.name» extends «EmfContribution.simpleName» {
    
    static val extension «name.toFirstUpper»Package target = «name.toFirstUpper»Package.eINSTANCE
    
    new(«EmfStretcher.simpleName» it) {
        super(it, target)
    }
    
    override run() {
    «FOR line : options.filterNull »
        «line»
    «ENDFOR»
    }
}
''' 
		]
    }
    
    def extractUsage(GroupDescription it) {
        val tab = Tab.values.findFirst[ t| 
			name.endsWith('_' + t.name + '_Reference_Group')
		]
		if (tab == null) {
			println(">>>> Unexpected tab for group " + name)
			return
		}
		val suffix = '_' + tab.name + '_Reference_Group'
		val srcClassname = name.substring(0, name.length - suffix.length)
    	
    	controls.forEach[ extractFeatureUsage(srcClassname, tab) ]
    }
    
    def extractFeatureUsage(ControlDescription it, String srcClassname, Tab tab) {
    	val group = eContainer as GroupDescription

		var String condition = null
		var ref = if (it instanceof DynamicMappingForDescription) {
			if (ifs.size != 1) {
				println(">>>> Multiple dynamic " + group.name + " = " + ifs.size)
				return
			} else {
				condition = ifs.get(0).predicateExpression.substring("aql:".length)
				ifs.get(0).widget
			}
		} else it
		
		val target = ref.toReference
		if (target == null) {
			println(">>>> Unexpected control "+ ref.eClass.name + " or undefined extension in " + group.name)
			return
		}
		
		val featName = target.toFeatureName
		if (featName == null) {
			println(">>>> No target for reference " + name + " in " + group.name)
			return
		}
		
		val eclass = target.findClass
		val feat = eclass.EStructuralFeatures.findFirst[ name == featName ]
		if (feat == null) {
			println(">>>> Unexpected feature " + featName + " in " + eclass.name + " from " + target.name)
			return
		}
		if (condition != null) {
			conditions.computeIfAbsent(feat) [ new HashMap ]
				.put(srcClassname, condition)
		}
		orders.computeIfAbsent(eclass)[ new HashMap ]
			.computeIfAbsent(tab) [ new HashMap ]
			.computeIfAbsent(srcClassname) [ new ArrayList ]
			+= feat
    }
    
    def toFeatureName(AbstractControlDescription it) {
    	val expression = if (it instanceof TextAreaDescription) valueExpression
    		else if (it instanceof TextDescription) valueExpression
    		else if (it instanceof CustomDescription) 
    			customExpressions.findFirst[ name == "valueExpression" ].customExpression
    		else if (it instanceof CheckboxDescription) valueExpression
    		else if (it instanceof SelectDescription) valueExpression
    		else if (it instanceof ListDescription) valueExpression
    		else if (it instanceof EqxHyperlinkDescription) valueExpression
    	
    	if ((expression == null) || !expression.startsWith("feature:")) {
    		println(">>>> Unexpected expression " + expression)
    		null
    	} else expression.substring("feature:".length)
	}
    
    def ControlDescription toReference(ControlDescription it) {
		if (it instanceof TextAreaDescription) extends
		else if (it instanceof TextDescription) extends
		else if (it instanceof CustomDescription) extends
		else if (it instanceof CheckboxDescription) extends
		else if (it instanceof SelectDescription) extends
		else if (it instanceof ListDescription) extends
		else if (it instanceof EqxHyperlinkDescription) extends
    }
    
    def toOptions(EClass it) {
    	// Order option
    	Tab.values.map[ t | it->t ] 
	    	.filter[ orders.get(key)?.get(value)?.get(null) != null ] // only general order
	    	.map[
	    		val forced = orders.get(key).get(value).get(null)
	    		val natural = key.EStructuralFeatures.filter[ forced.contains(it) ].toList
	    		if (forced.equals(natural)) {
	    			null
	    		} else {
	    			'''// «key.name».order=«FOR f : forced SEPARATOR ',' »«f.name»«ENDFOR»'''
	    		}
	    	].filterNull
    }
    
    def toOptions(EStructuralFeature it) {
        val control = findControl
        val left = '''  «EContainingClass.toXtend»_«name.toFirstUpper» += '''
        if (control == null) {
            return left + Ext.hidden.name
        }
        val tabText = (control.eContainer as GroupDescription).name
            .replace(EContainingClass.name + '_',"")
            .replace("_Group","").toLowerCase
        val tab = EqxModelExtensions.Tab.valueOf(tabText)
        val options = new ArrayList<Object>
        
        if (tab != EqxModelExtensions.Tab.conception) {
            options += EqxModelExtensions.Tab.simpleName -> EqxModelExtensions.Tab.simpleName + '.' + tab
        }
        if (control instanceof TextAreaDescription) {
            options += Ext.multiline
        }
        if (derived) {
            options += Ext.shown
        }
        if (conditions.get(it)?.get(null) != null) {
        	options += Ext.condition -> conditions.get(it)?.get(null).toAql
        }
        val actions = 
        	if (control instanceof ListDescription) control.actions
            else if (control instanceof HyperlinkDescription) control.actions
            else Collections.emptyList
        if (actions // Reverse edition list/type
            .map[ initialOperation.firstModelOperations ]
            .filter(ChangeContext)
            .exists[ browseExpression.contains('FromList') ]
        ) {
            options += Ext.list
        }
        
        if (options.empty) null
        else if (options.size > 1) left + "#[ " + options.join(", ") +  " ]" 
        else left + options.join(", ")
    }
	
	def findControl(EStructuralFeature src) {
        val it = siriusGroup.extensions.filter(ViewExtensionDescription)
            .map[ categories ].flatten
            .findFirst[ name == src.EContainingClass.EPackage.name + "_Definition" ]
            .groups.filter[ name.startsWith(src.EContainingClass.name) ]
            .map[ controls ].flatten
            .filter[ name.startsWith(src.EContainingClass.name + '_' + src.name) ]
        
        if (empty) {
            return null
        } else if (size > 1) {
            println (">>>> Too many control ("+ size +") for " + src.EContainingClass.name + "." + src.name)
        }
        expecteds += it
        head
    }
    
	
	def toAql(String it) {
		'"' + it + '"' // aql prefix should be added to generator
	}
    
    def toXtend(EClass it) {
        if (name.length > 2 
        		&& Character.isLetter(name.charAt(1)) 
        		&& Character.isUpperCase(name.charAt(1))
        ) name else name.toFirstLower
    }

    def toFile(Path target, ()=>String content) throws IOException {
        target.parent.createDirectories
        val it = Files.newBufferedWriter(target, codeCharset)
        try {
            println('Writing ' + target)
            write(content.apply)
        } finally {
            close
        }
    }
}
