package org.eclipse.emf.ecoretools.design.sirius

import java.lang.Class
import org.eclipse.emf.common.util.EList
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.util.EcoreEList
import org.eclipse.sirius.viewpoint.description.Environment
import org.eclipse.sirius.viewpoint.description.Group
import org.eclipse.sirius.viewpoint.description.IdentifiedElement
import org.eclipse.sirius.viewpoint.description.InterpolatedColor
import org.eclipse.sirius.viewpoint.description.JavaExtension
import org.eclipse.sirius.viewpoint.description.SystemColor
import org.eclipse.sirius.viewpoint.description.SytemColorsPalette
import org.eclipse.sirius.viewpoint.description.UserColorsPalette
import org.eclipse.sirius.viewpoint.description.UserFixedColor
import org.eclipse.sirius.viewpoint.description.Viewpoint
import org.mypsycho.modit.emf.sirius.SiriusModelProvider

class EcoretoolsDesign extends SiriusModelProvider {

	override initContent(Group it) {
		name = "EcoreTools"
		version = "12.0.0.2017041100"
		ownedViewpoints += Viewpoint.create [
			endUserDocumentation = "<html>\n<head>\n</head>\n<body>\n<p>Provides graphical and tabular representation to design an Ecore model.</p>\n<br>\n<img src=\"/icons/full/wizban/entities.png\"/>\n<img src=\"/icons/full/wizban/classes.png\"/>\n</body>\n</html>\n\n\n"
			name = "Design"
			modelFileExtension = "ecore xcore ecorebin"
			ownedRepresentations += new EntitiesDiagram(this).createContent
			ownedRepresentations += new ClassesEditionTable(this).createContent
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.DesignServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.sirius.common.tools.api.interpreter.StandardServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.PropertiesServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.ALEServices"
			]
		]
		ownedViewpoints += Viewpoint.create [
			endUserDocumentation = "Add support for archetypes-based modeling to the Entities modeler."
			name = "Archetype"
			modelFileExtension = "ecore xcore ecorebin"
			ownedRepresentationExtensions += new EntitiesWithArchetypesDiagramExtension(this).createContent
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.ArchetypeServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.PropertiesServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.ALEServices"
			]
		]
		ownedViewpoints += Viewpoint.create [
			endUserDocumentation = "Provides representation to document and review Ecore models."
			name = "Review"
			modelFileExtension = "ecore xcore ecorebin"
			ownedRepresentations += new DocumentationCrossTable(this).createContent
			ownedRepresentations += new DependenciesDiagram(this).createContent
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.ReviewServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.PropertiesServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.ALEServices"
			]
		]
		ownedViewpoints += Viewpoint.create [
			endUserDocumentation = "Adds support for EMF GenModel configuration."
			name = "Generation"
			modelFileExtension = "genmodel"
			ownedRepresentations += new GenPackageAttributesEditionTable(this).createContent
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.GenerationServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.PropertiesServices"
			]
			ownedJavaExtensions += JavaExtension.create [
				qualifiedClassName = "org.eclipse.emf.ecoretools.design.service.ALEServices"
			]
		]
		userColorsPalettes += UserColorsPalette.create [
			name = "Ecore Palette"
			entries += InterpolatedColor.create [
				name = "Size Based Color"
				minValueComputationExpression = "aql:0"
				maxValueComputationExpression = "aql:10"
			]
			entries += UserFixedColor.create [
				red = 250
				green = 190
				blue = 190
				name = "MomentIntervalColor"
			]
			entries += UserFixedColor.create [
				red = 250
				green = 240
				blue = 180
				name = "RoleColor"
			]
			entries += UserFixedColor.create [
				red = 180
				green = 230
				blue = 180
				name = "PartyPlaceThingColor"
			]
			entries += UserFixedColor.create [
				red = 180
				green = 200
				blue = 210
				name = "DescriptionColor"
			]
			entries += UserFixedColor.create [
				red = 255
				green = 245
				blue = 182
				name = "Package Color"
			]
			entries += UserFixedColor.create [
				red = 253
				green = 208
				blue = 142
				name = "External Package Color"
			]
			entries += UserFixedColor.create [
				red = 255
				green = 252
				blue = 216
				name = "EClass"
			]
			entries += UserFixedColor.create [
				red = 217
				green = 210
				blue = 220
				name = "EPackage"
			]
			entries += UserFixedColor.create [
				red = 255
				green = 250
				blue = 191
				name = "EDataType"
			]
			entries += UserFixedColor.create [
				red = 221
				green = 236
				blue = 202
				name = "EEnum"
			]
			entries += UserFixedColor.create [
				name = "Dark EClass"
			]
			entries += UserFixedColor.create [
				name = "Dark EPackage"
			]
			entries += UserFixedColor.create [
				name = "Dark EDataType"
			]
			entries += UserFixedColor.create [
				name = "Dark EEnum"
			]
			entries += UserFixedColor.create [
				red = 220
				green = 234
				blue = 183
				name = "Doc Annotation"
			]
			entries += UserFixedColor.create [
				red = 228
				green = 228
				blue = 228
				name = "Abstract EClass"
			]
			entries += UserFixedColor.create [
				name = "Inherited"
			]
		]
		extensions += new EcoretoolsViewExtension(this).createContent
	}

	override initExtras(ResourceSet it) {
		super.initExtras(it)
		
		extras.putAll(#{ // anonymous resources
			"$0" -> eObject(Environment, "environment:/viewpoint#/")
		})
		extras.putAll(#{ // Named elements
		})
	}

	def context() { this }
	
	static def <T extends IdentifiedElement> atIdentifiedElement(Iterable<T> values, Object key) {
		values.findFirst[ name == key ]
	}
}
