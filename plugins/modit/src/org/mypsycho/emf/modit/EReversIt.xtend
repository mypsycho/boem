package org.mypsycho.emf.modit

import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.util.Collection
import java.util.Collections
import java.util.HashMap
import java.util.List
import java.util.Map
import java.util.concurrent.Callable
import org.eclipse.emf.common.notify.Notifier
import org.eclipse.emf.common.util.Enumerator
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EAttribute
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl

class EReversIt {

	val ClassId mainClass

	val Path target

	val Map<EObject, ClassId> roots

	val List<EObject> orderedRoots

	var Map<EObject, String> extras // We tracks anonymous extras elements
	var Map<EObject, String> namings

	public val splits = new HashMap<EObject, ClassId>

	public val aliases = new HashMap<EObject, String>
	
	public val explicitExtras = new HashMap<EObject, String>

	public var encoding = StandardCharsets.UTF_8

	public var EAttribute shortcut = null

	new(String classname, Path dir, Resource... rSet) {
		this(new ClassId(classname), dir, rSet.map[ it -> new ClassId(new ClassId(classname), URI) ])
	}

	new(ClassId definition, Path dir, Pair<? extends Notifier, ClassId>... values) {
		mainClass = definition
		target = dir
		orderedRoots = values.map[ key.toEObject ]
		roots = if (values.size == 1) #{ values.head.key.toEObject -> definition }
			else values.toMap( [ key.toEObject ], [ value ] )
	}

	static def toEObject(Notifier it) {
		if (it instanceof EObject) it
		else if (it instanceof Resource) toContent 
		else throw new IllegalArgumentException("Unsupported type of " + it)
	}

	protected def prepareContext() {
				
		val illegalSplits = splits.filter[ it, id | !roots.containsKey(toRoot) ].values
		if (!illegalSplits.empty) {
			throw new IllegalArgumentException(
				"Split values must be contained by reversed resource. Use explicitExtras: " + illegalSplits
			)
		}
		
		val illegalAliases = splits.filter[ it, id | !roots.containsKey(toRoot) ].values
		if (!illegalAliases.empty) {
			throw new IllegalArgumentException(
				"Alias values must be contained by reversed resource. Use explicitExtras: " + illegalAliases
			)
		}
		
		val illegalExtras = explicitExtras.filter[ it, id | roots.containsKey(toRoot) ].values
		if (!illegalExtras.empty) {
			throw new IllegalArgumentException(
				"Aliases must not be contained by reversed resource. Use splits or alias: " + illegalExtras
			)
		}

		val mappings = #[ roots.mapValues[ name ], splits.mapValues[ name ], aliases ]
		
		val allAliaseds = mappings.map[ keySet ].flatten.toList
		val redundantAliaseds = allAliaseds.filter[ e| allAliaseds.filter[it == e].size > 1 ].toSet
		if (!redundantAliaseds.empty) {
			throw new IllegalArgumentException(
				"Elements cannot have several aliases: " + redundantAliaseds
			)
		}
		
		val allAliases = mappings.map[ values ].flatten.toList
		val redundantAliases = allAliases.filter[ e| allAliases.filter[it == e].size > 1 ].toSet
		if (!redundantAliases.empty) {
			throw new IllegalArgumentException(
				"Alias cannot be used several times: " + redundantAliases
			)
		}
		
		extras = new HashMap()// We tracks anonymous extras elements
		
		namings = mappings.map[ entrySet ].flatten.toMap([ key ], [ value ])
	}

	def perform() throws IOException {

		prepareContext

		splits.forEach [ element, classId |
			target.resolve(classId.toPath).toFile [
				templatePart(classId, element).toString
			]
		]

		var doTemplate = 
			if (roots.size == 1) [| templateSimpleMain ]
			else {
				// Write class of each elements
				orderedRoots.forEach [
					val id = roots.get(it)
					target.resolve(id.toPath).toFile[ 
						templatePart(id, it).toString
					]
				]
				[| templateComposedMain ]
			}
		// Write main class
		target.resolve(mainClass.toPath).toFile(doTemplate)
	}

	protected def templateComposedMain() {
		templateMain(
			MAIN_IMPORTS.toInvertedMap[ Boolean.TRUE ],
			orderedRoots.usedPackages,
			'''#[
	«
FOR p : orderedRoots.map[ roots.get(it) ] SEPARATOR ',\n'
»new «p.qName»(this).call«
ENDFOR
»
].assemble'''
		)
	}

	val PART_IMPORTS = #{Map, EObject, EModIt, ResourceSet, Callable}

	protected def templatePart(ClassId it, EObject content) {
		val parentName = (if (pack != mainClass.pack) mainClass.pack + '.' else "").concat(mainClass.name)
		val importedClasses = content.importedClasses(PART_IMPORTS)
'''package «pack»

«importedClasses.templateImports»

class «name» implements Callable<EObject> {
	val «parentName» context
	val extension EModIt factory

	new(«parentName» parent) {
		this.context = parent
		this.factory = parent.factory
	}

	override call() {
		«content.templateInnerCreate(importedClasses)»
	}

	def getExtras() { context.extras }

«
IF shortcut !== null 
»
	
	def <T extends «shortcut.EContainingClass.instanceClass.name»> at(Iterable<T> values, Object key) {
		context.at(values, key) as T // Xtend inference fails?
	}«
ENDIF
»}
'''
	}

	val MAIN_IMPORTS = #{ HashMap, EObject, EModIt, ResourceSetImpl, URI }

	protected def templateSimpleMain() {
		val it = orderedRoots.head
		val importeds = importedClasses(MAIN_IMPORTS)

		templateMain(
			importeds,
			#[ it ].usedPackages,
'''«templateCreate(importeds)».assemble'''
		)
	}

	protected def String templateMain(
		Map<Class<?>, Boolean> importedClasses,
		Iterable<Class<?>> packages,
		String content
	) {
		val extrasByName = extras.entrySet.map[ value -> key ].toList.sortBy[ key ]

'''package «mainClass.pack»

«importedClasses.templateImports»

class «mainClass.name» {

	public val extras = new HashMap<String, EObject> 

	public extension EModIt factory = EModIt.using(
		«FOR p : packages SEPARATOR ',\n'»«p.name».eINSTANCE«ENDFOR»
	)

«
IF !extras.empty
»
	new() {
		val rs = new ResourceSetImpl
		extras.putAll(#{// Used resources
		«
 FOR e : extrasByName SEPARATOR ',\n'
»  "«e.key»" -> rs.getResource(URI.createURI(« e.value.eResource.URI.toString.toJava »), true).contents.head«
 ENDFOR
»«
 IF !extras.empty
»
		extras.putAll(#{ // Named elements
		«
  FOR a : explicitExtras.entrySet.toList.sortBy[ value ] SEPARATOR ',\n'
		»  «a.value.toJava» -> «a.key.templateAlias(importedClasses)»«
  ENDFOR
»
«
 ENDIF
»	}

«
ENDIF
»	def content() {
		«content»
	}

	def context() { this }

«
IF shortcut !== null
»	def <T extends «shortcut.EContainingClass.instanceClass.name»> at(Iterable<T> values, Object key) {
		values.findFirst[ «shortcut.name» == key ]
	}

«
ENDIF
»}
'''
	}

	protected def String templateCreate(EObject it, Map<Class<?>, Boolean> importeds) {
		val split = splits.get(it)
		if (split === null) templateInnerCreate(importeds) 
		else '''new «IF mainClass.pack != split.pack»«split.pack».«ENDIF»«split.name»(this).call'''
	}

	protected def String templateInnerCreate(EObject it, Map<Class<?>, Boolean> importeds) {
		// Find setted attributes, references, <>references
		val content = #[
			eClass.EAllAttributes.filter[ a | eIsSet(a) && a.defaultValue != eGet(a) ]
				-> [ Object it, Class<?> using | toJava ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isReference ]
				-> [ Object it, Class<?> using | (it as EObject).templateRef(using, importeds) ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isContainment ]
				-> [ Object it, Class<?> using | (it as EObject).templateCreate(importeds) ]
		].map[ (key as Iterable<EStructuralFeature>).map[ f | f -> value ] ].flatten.toList

'''«
IF namings.containsKey(it)
»«namings.get(it).toJava».aliasCreate(«templateClass(importeds)»)«
ELSE
»«templateClass(importeds)».create«
ENDIF
»«
IF content.exists[ f | eIsSet(f.key) ]
» [
	«
FOR c : content SEPARATOR '\n' 
»«templateProperty(c.key, c.value)»«
ENDFOR
»
]«
ENDIF
»'''
	}

	protected def String templateAlias(EObject it, Map<Class<?>, Boolean> importeds) {
		val path = callPath(false, importeds)
		'''«path.prefix»extras.get("«extras.get(path.key.key)»")«path.value»'''
	}

	protected def prefix(Pair<Pair<EObject, ? extends Class<?>>, String> path) {
		if (path.value !== null) (0 ..< (path.value.split(" as ").length - 1)).map[ "(" ].join else ""
	}

	protected def toUsedType(EObject it, Map<Class<?>, Boolean> importeds) {
		val type = eClass.getInstanceClass()
		if (importeds.containsKey(type) && importeds.get(type)) type.simpleName else type.name
	}

	protected def String templateRef(EObject it, Class<?> using, Map<Class<?>, Boolean> importeds) {
		val refTypeText = toUsedType(importeds)
		val path = callPath(true, importeds)

		val alias = namings.get(path.key.key)

		// val refTypeText = toUsedType(importeds)
		val rootTypeText = path.key.key.toUsedType(importeds)
		val src = path.key.key

		val expectedType = if (alias !== null) eClass.getInstanceClass() else using
		var cast = 
			if (!expectedType.isAssignableFrom(path.key.value)) {
				val typeText = if (importeds.get(eClass.instanceClass) ?: false) eClass.instanceClass.
						simpleName else eClass.instanceClass.name
				"(" -> " as " + typeText + ")"
			} else "" -> ""

		if (alias !== null)
'''«refTypeText».ref("«alias»")«
IF !path.value.empty
»[ «cast.key»«path.prefix»(it as «rootTypeText»)«path.value»«cast.value» ]«
ENDIF
»'''
		else if (explicitExtras.containsKey(src))
			'''«cast.key»«path.prefix»extras.get(«explicitExtras.get(src).toJava»)«path.value»«cast.value»'''
		else if (src.eResource !== null)
			'''«cast.key»«path.prefix»extras.get("«extras.computeIfAbsent(src) [ "$"+extras.size ]»")«path.value»«cast.value»'''
		else null // Headless
	}

	/**
	 * Returns
	 * 
	 * @param it element go to
	 * @param all to evaluate extras
	 * @return (root element) -> (exposed type) -> path
	 */
	protected def Pair<Pair<EObject, ? extends Class<?>>, String> callPath(EObject it, boolean all,
			Map<Class<?>, Boolean> importeds) {
		if (namings.containsKey(it)) 
			return it -> eClass.instanceClass -> ""

		if (eContainer === null || (all && explicitExtras.containsKey(it)))  // To extras
			return it -> EObject -> ""

		val feat = eContainingFeature as EReference

		val cont = eContainer
		val card = if (!feat.many) ""
			else {
				val siblings = cont.eGet(feat) as Collection<EObject>
				val isShortcut = shortcut?.containerClass !== null 
					&& shortcut.containerClass.isAssignableFrom(feat.EType.instanceClass)
				if (isShortcut) ".at(" + eGet(shortcut).toJava + ")"
				else if (siblings.size == 1) ".head"
				else ".get(" + siblings.toList.indexOf(it) + ")"
			}

		val parentPath = callPath(cont, all, importeds)

		// is cast required
		val declaring = feat.EContainingClass.instanceClass
		var path = parentPath.value 
			+ if (!declaring.isAssignableFrom(parentPath.key.value)) {
				" as " + if (importeds.get(declaring) ?: false) declaring.simpleName else declaring.name + ")"
			} else ""

		val segment = feat.name + card

		parentPath.key.key -> feat.EReferenceType.instanceClass -> path + "." + segment
	}

	protected def templateProperty(EObject element, EStructuralFeature it, (Object, Class<?>)=>String encoding) {
		val usingType = EType.instanceClass
		if (isMany) {
			val values = (element.eGet(it) as Collection<?>)
			if (values.isEmpty) return ""
			// Surround when several values are present
			val valueTexts = values.map[ encoding.apply(it, usingType) ].toList
			val displayeds = valueTexts.filter[ it !== null ].toList

			/* Xtend fails to infer on multi inheritance : Pretty collections fails
			  val container = if (ordered) '[ '->' ]' else '{'->'}'
			  if (displayeds.empty) {
			  '''// «safename» values are headless'''
			  } else 
			      (if (displayeds.size == 1) '''«name» += «displayeds.head»'''
			          else if (it instanceof EAttribute)
			  '''«safename» += #«container.key» «FOR t : displayeds SEPARATOR ', ' »«t»«ENDFOR» «container.value»'''
			          else 
			  '''«safename» += #«container.key»
			    «FOR t : displayeds SEPARATOR ',\n' »«t»«ENDFOR»
			  «container.value«'''
			      ) + if (valueTexts.contains(null)) "// some values are headless" else ""
			 */
			// Xtend fallback, no grouping !
'''«
FOR t : displayeds SEPARATOR '\n'
»«safename» += «t»«
ENDFOR
»'''

		} else {
			val value = element.eGet(it)
			val valueText = encoding.apply(value, usingType)
			if (valueText !== null) safename + ' = ' + valueText else '// ' + safename + ' is headless'
		}
	}

	protected def isReference(EReference it) {
		if (containment || derived) false
		else if (EOpposite === null) true
		else if (EOpposite.derived) true // is it possible ?
		else if (EOpposite.containment) false
		else if (many != EOpposite.many) many
		else name < EOpposite.name // a bit irrational
	}

	protected def templateClass(EObject it, Map<Class<?>, Boolean> importedClasses) {
		val jClass = eClass.instanceClass
		if (importedClasses.get(jClass)) jClass.simpleName else jClass.name
	}

	protected def usedPackages(Iterable<EObject> values) {
		values.map[ #[ it ] + eAllContents.toIterable ]
			.flatten // all EObject
			.map[ classEPackage ] // all Class<? extend EPackage>
			.toSet.sortBy[ name ] // To have a repeatable import
	}

	protected def importedClasses(EObject root, Iterable<? extends Class<?>> staticImports) {
		val it = new HashMap<Class<?>, Boolean>(staticImports.toInvertedMap[ Boolean.TRUE ])
		val iAll = #[ root ] + root.eAllContents.toIterable
		iAll.map [
			#[ it ] + // element and its references
			eClass.EAllReferences.filter[ reference ] // Containment is reached by allContents 
			.map[ r| eGet(r) ]
			.filterNull // get defined
			.map[
				if (it instanceof Collection<?>) (it as Collection<? extends EObject>) 
				else #[ it as EObject ]
			]
			.flatten.filter[ !splits.containsKey(it) ]
		].flatten /* all elements + referenced element */ .map[ #[ it, callPath(false, Collections.emptyMap).key.key ] ].
			flatten
			.map[ eClass.instanceClass ]
			.toSet.sortBy[ name ] // sort to have always the same import
			.forEach [ usedClass |
				// println('\timport ' + usedClass.name)
				if (!containsKey(usedClass)) {
					put(usedClass, Boolean.valueOf( // Simple name already found
						!keySet.map[ simpleName ].exists[ equals(usedClass.simpleName) ]
					))
				}
			]
		it
	}

	protected def templateImports(Map<Class<?>, Boolean> importedClasses) {
'''«
FOR c : importedClasses.entrySet
	.filter[ value ].map[ key ]
	.toList.sortBy[ name ] SEPARATOR '\n'
»import «c.name»«
ENDFOR
»'''
	}

	static def toContent(Resource res) {
		res.contents.get(0)
	}

	def toFile(Path target, ()=>String content) throws IOException {
		Files.createDirectories(target.parent)
		val it = Files.newBufferedWriter(target, encoding)
		try {
			println('Writing ' + target)
			write(content.apply)
		} finally {
			close
		}
	}

	static def classEPackage(EObject it) {
		eClass.EPackage.class.interfaces.findFirst[ interfaces.contains(EPackage) ]
	}

	static dispatch def toJava(Object it) {
		toString
	}

	static dispatch def toJava(String it) {
		"\"" + replace("\\", "\\\\") //
			.replace("\"", "\\\"") //
			.replace("\t", "\\t") //
			.replace("\r\n", "\\n") //
			.replace("\r", "\\n") //
			.replace("\n", "\\n") //
		+ "\""
	}

	static dispatch def toJava(Enumerator it) {
		class.name + ".getByName(\"" + name + "\")"
	}

	static val RESERVEDS = "extension,default,transient".split(",").toList

	static def safename(EStructuralFeature it) {
		if (RESERVEDS.contains(name)) '^' + name else name
	}

	static def EObject toRoot(EObject it) { eContainer?.toRoot ?: it }

}
