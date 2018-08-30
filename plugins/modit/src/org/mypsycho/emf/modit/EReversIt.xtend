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

	val extras = new HashMap<EObject, String>

	public val splits = new HashMap<EObject, ClassId>

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

	def perform() throws IOException {
		extras.clear

		val illegalSplits = splits.filter[ it, id|!roots.containsKey(toRoot) ].values
		if (!illegalSplits.empty) {
			throw new IllegalArgumentException(
				"Split values " + illegalSplits + " must be contained by reversed resource. Use aliases."
			)
		}
		val illegalAliases = explicitExtras.filter[ it, id|roots.containsKey(toRoot) ].values
		if (!illegalAliases.empty) {
			throw new IllegalArgumentException(
				"Aliases " + illegalAliases + " must not be contained by reversed resource. Use splits."
			)
		}

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

	def templateComposedMain() {
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

	def templatePart(ClassId it, EObject content) {
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
		"«name»".alias(«content.templateInnerCreate(importedClasses)»)
	}

	def getExtras() { context.extras }
	«
IF shortcut !== null 
»
	
	def <T extends «shortcut.EContainingClass.instanceClass.name»> at(Iterable<T> values, Object key) {
		context.at(values, key) as T // Xtend inference fails?
	}«
ENDIF
»

}
'''
	}

	val MAIN_IMPORTS = #{ HashMap, EObject, EModIt, ResourceSetImpl, URI }

	def templateSimpleMain() {
		val it = orderedRoots.head
		val importeds = importedClasses(MAIN_IMPORTS)

		templateMain(
			importeds,
			#[ it ].usedPackages,
			'''"«mainClass.name»".alias(«templateCreate(importeds)»
).assemble'''
		)
	}

	def String templateMain(
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

	new() {
		val rs = new ResourceSetImpl
		«FOR e : extrasByName BEFORE 'extras.putAll(#{// Used resources\n' SEPARATOR ',\n' AFTER '\n})'»  "«e.key»" -> rs.getResource(URI.createURI(« e.value.eResource.URI.toString.toJava »), true).contents.head«ENDFOR»
		«FOR a : explicitExtras.entrySet.toList.sortBy[ value ] BEFORE 'extras.putAll(#{ // Named elements\n' SEPARATOR ',\n' AFTER '\n})'»  «a.value.toJava» -> «a.key.templateAlias(importedClasses)»«ENDFOR»
	}

	def content() {
		«content»
	}

	def context() { this }
	«IF shortcut !== null»
	
	def <T extends «shortcut.EContainingClass.instanceClass.name»> at(Iterable<T> values, Object key) {
		values.findFirst[ «shortcut.name» == key ]
	}
	«ENDIF»

}
'''
	}

	def String templateCreate(EObject it, Map<Class<?>, Boolean> importeds) {
		val split = splits.get(it)
		if (split === null) templateInnerCreate(
			importeds) else '''new «IF mainClass.pack != split.pack»«split.pack».«ENDIF»«split.name»(this).call'''
	}

	def String templateInnerCreate(EObject it, Map<Class<?>, Boolean> importeds) {
		// Find setted attributes, references, <>references
		val content = #[
			eClass.EAllAttributes.filter[ a | eIsSet(a) && a.defaultValue != eGet(a) ]
				-> [ Object it, Class<?> using | toJava ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isReference ]
				-> [ Object it, Class<?> using | (it as EObject).templateRef(using, importeds) ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isContainment ]
				-> [ Object it, Class<?> using | (it as EObject).templateCreate(importeds) ]
		].map[ (key as Iterable<EStructuralFeature>).map[ f | f -> value ] ].flatten.toList
		
		'''«templateClass(importeds)».create«
IF content.exists[ f | eIsSet(f.key) ]
»[
	«
FOR c : content SEPARATOR '\n' 
»«templateProperty(c.key, c.value)»«
ENDFOR
»
]«
ENDIF
»'''
	}

	def String templateAlias(EObject it, Map<Class<?>, Boolean> importeds) {
		val path = callPath(false, importeds)
		'''«path.prefix»extras.get("«extras.get(path.key.key)»")«path.value»'''
	}

	def prefix(Pair<Pair<EObject, ? extends Class<?>>, String> path) {
		if (path.value !== null) (0 ..< (path.value.split(" as ").length - 1)).map[ "(" ].join else ""
	}

	def toUsedType(EObject it, Map<Class<?>, Boolean> importeds) {
		val type = eClass.getInstanceClass()
		if (importeds.containsKey(type) && importeds.get(type)) type.simpleName else type.name
	}

	def String templateRef(EObject it, Class<?> using, Map<Class<?>, Boolean> importeds) {
		val refTypeText = toUsedType(importeds)
		val path = callPath(true, importeds)

		val alias = roots.get(path.key.key)?.name ?: splits.get(path.key.key)?.name

		// val refTypeText = toUsedType(importeds)
		val rootTypeText = path.key.key.toUsedType(importeds)
		val src = path.key.key

		val expectedType = if (alias !== null) eClass.getInstanceClass() else using
		var cast = if (!expectedType.isAssignableFrom(path.key.value)) {
				val typeText = if (importeds.get(eClass.instanceClass) ?: false) eClass.instanceClass.
						simpleName else eClass.instanceClass.name
				"(" -> " as " + typeText + ")"
			} else
				"" -> ""

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
		else
			null // Headless
	}

	/**
	 * Returns
	 * 
	 * @param it element go to
	 * @param all to evaluate extras
	 * @return (root element) -> (exposed type) -> path
	 */
	def Pair<Pair<EObject, ? extends Class<?>>, String> callPath(EObject it, boolean all,
		Map<Class<?>, Boolean> importeds) {
		if (splits.containsKey(it) || roots.containsKey(it)) return it -> eClass.instanceClass -> ""

		if (eContainer === null // To extras
		|| (all && explicitExtras.containsKey(it))) return it -> EObject -> ""

		val feat = eContainingFeature as EReference

		val cont = eContainer
		val card = if (!feat.many)
				""
			else {
				val siblings = cont.eGet(feat) as Collection<EObject>
				if (siblings.size == 1) ".head"
				else if (shortcut?.containerClass !== null && shortcut.containerClass.isAssignableFrom(feat.EType.instanceClass))
					".at(" + eGet(shortcut).toJava + ")"
				else ".get(" + siblings.toList.indexOf(it) + ")"
			}

		val parentPath = callPath(cont, all, importeds)

		// is cast required
		val declaring = feat.EContainingClass.instanceClass
		var path = parentPath.value + if (!declaring.isAssignableFrom(parentPath.key.value)) {
			val typeText = if (importeds.get(declaring) ?: false) declaring.simpleName else declaring.name
			" as " + typeText + ")"
		} else ""

		val segment = feat.name + card

		parentPath.key.key -> feat.EReferenceType.instanceClass -> path + "." + segment
	}

	def templateProperty(EObject element, EStructuralFeature it, (Object, Class<?>)=>String encoding) {
		val usingType = EType.instanceClass
		if (isMany) {
			val values = (element.eGet(it) as Collection<?>)
			if (values.isEmpty) return ""
			// Surround when several values are present
			val valueTexts = values.map[ encoding.apply(it, usingType) ].toList
			val displayeds = valueTexts.filter[ it !== null ].toList

			/* Xtend fails to infer on multi inheritance : Pretty collections fails
			 * val container = if (ordered) '[ '->' ]' else '{'->'}'
			 * if (displayeds.empty) {
			 * '''// «safename» values are headless'''
			 * } else 
			 *     (if (displayeds.size == 1) '''«name» += «displayeds.head»'''
			 *         else if (it instanceof EAttribute)
			 * '''«safename» += #«container.key» «FOR t : displayeds SEPARATOR ', ' »«t»«ENDFOR» «container.value»'''
			 *         else 
			 * '''«safename» += #«container.key»
			 *   «FOR t : displayeds SEPARATOR ',\n' »«t»«ENDFOR»
			 * «container.value«'''
			 *     ) + if (valueTexts.contains(null)) "// some values are headless" else ""
			 */
			// Xtend fallback, no grouping !
			'''«FOR t : displayeds»
«safename» += «t»
«ENDFOR»'''

		} else {
			val value = element.eGet(it)
			val valueText = encoding.apply(value, usingType)
			if (valueText !== null) safename + ' = ' + valueText else '// ' + safename + ' is headless'
		}
	}

	def isReference(EReference it) {
		!isContainment && !derived && (
			(EOpposite === null) //
			|| EOpposite.isContainment //
			|| (!many && EOpposite.many) // TODO here we should consider if value is in extras or not
			|| (name > EOpposite.name) // here, we should make a systematic choice.
        )
	}

	def templateClass(EObject it, Map<Class<?>, Boolean> importedClasses) {
		val jClass = eClass.instanceClass
		if (importedClasses.get(jClass)) jClass.simpleName else jClass.name
	}

	def usedPackages(Iterable<EObject> values) {
		values.map[ #[ it ] + eAllContents.toIterable ]
			.flatten // all EObject
			.map[ classEPackage ] // all Class<? extend EPackage>
			.toSet.sortBy[ name ] // To have a repeatable import
	}

	def importedClasses(EObject root, Iterable<? extends Class<?>> staticImports) {
		val it = new HashMap<Class<?>, Boolean>(staticImports.toInvertedMap[ Boolean.TRUE ])
		val iAll = #[ root ] + root.eAllContents.toIterable
		iAll.map [
			#[ it ] + // element and its references
			eClass.EAllReferences.filter[ !containment ] // Containment is reached by allContents 
			.map[ r| eGet(r) ]
			.filterNull // get defined
			.map[
				if (it instanceof Collection<?>) (it as Collection<? extends EObject>) else #[ it as EObject ]
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

	static def templateImports(Map<Class<?>, Boolean> importedClasses) {
		'''«FOR c : importedClasses.entrySet
				.filter[ value ].map[ key ]
				.toList.sortBy[ name ] SEPARATOR '\n'
			»import «c.name»«ENDFOR»'''
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
			.replace("\r\n", "\n") //
			.replace("\r", "\n") //
			.replace("\n", "\\n") //
		+ "\""
	}

	static dispatch def toJava(Enumerator it) {
		class.name + ".getByName(\"" + name + "\")"
	}

	static val RESERVEDS = "default,transient".split(",").toList

	static def safename(EStructuralFeature it) {
		if (RESERVEDS.contains(name)) '^' + name else name
	}

	static def EObject toRoot(EObject it) { eContainer?.toRoot ?: it }

}
