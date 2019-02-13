package org.mypsycho.modit.emf

import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.util.Collection
import java.util.Collections
import java.util.HashMap
import java.util.List
import java.util.Map
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

import static extension org.mypsycho.modit.AdvancedExtensions.*
import org.eclipse.emf.ecore.EClass
import java.util.Arrays
import org.eclipse.emf.common.util.EList
import java.util.ArrayList
import org.eclipse.emf.ecore.util.EcoreUtil

class EReversIt {

	val ClassId mainClass

	val Path target

	val Map<EObject, ClassId> roots

	val List<EObject> orderedRoots

	var Map<EObject, String> implicitExtras // We tracks anonymous extras elements
	var Map<EObject, String> namings

	public val splits = new HashMap<EObject, ClassId>

	public val aliases = new HashMap<EObject, String>
	
	public val explicitExtras = new HashMap<EObject, String>

	public var encoding = StandardCharsets.UTF_8

	public var List<EAttribute> shortcuts = new ArrayList

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
		#[ // Check alias and splits are defined in the serialized tree.
			"Alias" -> aliases, 
			"Split" -> splits.mapValues[ name ] 
		].forEach[
			// val Map<EObject, Object> cast = new HashMap(value) // Cast is required by xtend transformation.
			val headlesses = value.filter[ it, id | !roots.containsKey(toRoot) ].values
			if (!headlesses.empty) {
				throw new IllegalArgumentException(
					key + " values must be contained by reversed resource. Use explicitExtras: " + headlesses
				)
			}
		]

		// Check explicit are pure references
		val illegalExtras = explicitExtras.filter[ it, id | roots.containsKey(toRoot) ].values
		if (!illegalExtras.empty) {
			throw new IllegalArgumentException(
				"Aliases must not be contained by reversed resource. Use splits or alias: " + illegalExtras
			)
		}

		val mappings = #[ roots.mapValues[ name ], splits.mapValues[ name ], aliases ]
		
		// Checks aliases are a bijection.
		#[
			"Target elements" -> [ Map<EObject, String> it| keySet ],
			"Names" -> [ Map<EObject, String> it| values ]
		].forEach[ rule |
			val ends = mappings.map(rule.value).flatten.toList // list to keep all occurrences
			val redundants = ends
				.filter[ e| ends.filter[ it == e ].size > 1 ] // redundant check
				.toSet
			if (!redundants.empty) {
				throw new IllegalArgumentException(
					rule.key + " cannot be used in several alias : " + redundants
				)
			}
		]

		implicitExtras = new HashMap()// We tracks anonymous extras elements
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

	val PART_IMPORTS = #{Map, EObject, EModIt, ResourceSet}

	protected def templatePart(ClassId it, EObject content) {
		val parentName = if (pack != mainClass.pack) mainClass.qName else mainClass.name
		val importedClasses = content.importedClasses(PART_IMPORTS)
'''package «pack»

«importedClasses.templateImports»
import static extension «mainClass.qName».*

class «name» {
	val «parentName» context
	val extension EModIt factory

	new(«parentName» parent) {
		this.context = parent
		this.factory = parent.factory
	}

	def «content.templateClass(importedClasses)» call() {
		«content.templateInnerCreate(importedClasses)»
	}

	def getExtras() { context.extras }
}
'''
	}

	val MAIN_IMPORTS = #{ Arrays, HashMap, EObject, EList, EReference, ResourceSet, ResourceSetImpl, URI, EModIt }

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
		Map<Class<?>, Boolean> importeds,
		Iterable<Class<?>> packages,
		String content
	) {
		// val extrasByName = 

'''package «mainClass.pack»

«importeds.templateImports»

class «mainClass.name» {

	public val extras = new HashMap<String, EObject> 

	public extension EModIt factory = EModIt.using(
		«FOR p : packages SEPARATOR ',\n'»«p.name».eINSTANCE«ENDFOR»
	)

«
IF !implicitExtras.empty || !explicitExtras.empty
»	new() {
		val it = new ResourceSetImpl
«
 IF !implicitExtras.empty
»		extras.putAll(#{// anonymous resources
		«
 FOR e : implicitExtras.entrySet.map[ value -> key ].toList.sortBy[ key ] SEPARATOR ',\n'
»	"«e.key»" -> eObject(« e.value.templateClass(importeds)», « EcoreUtil.getURI(e.value).toString.toJava »)«
 ENDFOR
»
		})
«
 ENDIF // implicit extras
»«
 IF !explicitExtras.empty
»		extras.putAll(#{ // Named elements
		«
  FOR a : explicitExtras.entrySet.toList.sortBy[ value ] SEPARATOR ',\n'
		»	«a.value.toJava» -> «a.key.templateAlias(importeds)»«
  ENDFOR
»
		})
«
 ENDIF // explicit extras
»	}

«
ENDIF // extras
»	def content() {
		«content»
	}

	def context() { this }

	static def <O extends EObject, R extends EObject> R at(O it, String featName, Class<R> type, Object... key) {
		val feat = eClass.getEStructuralFeature(featName) as EReference
		val keyValues = Arrays.asList(key)
		(eGet(feat) as EList<?>).filter(type).findFirst[ r|
			feat.EKeys.map[ r.eGet(it) ] == keyValues
		] as R
	}

«
IF !implicitExtras.empty || !explicitExtras.empty
»	static def <T extends EObject> eObject(ResourceSet rs, Class<T> type, String uri) {
		rs.getEObject(URI.createURI(uri), true) as T
	}

«
ENDIF // extras
»«
FOR shortcut : shortcuts SEPARATOR ',\n'
»	def <T extends «shortcut.EContainingClass.instanceClass.name»> at«shortcut.EContainingClass.instanceClass.simpleName»(Iterable<T> values, Object key) {
		values.findFirst[ «shortcut.name» == key ]
	}

«
ENDFOR
»}
'''
	}


	protected def String templateAlias(EObject it, Map<Class<?>, Boolean> importeds) {
		val path = callPath(false, importeds)
		val base = path.key.key
'''«path.prefix»«
IF implicitExtras.containsKey(base) // TODO: clean as impossible due to callPath(**false**, importeds)
»extras.get("«implicitExtras.get(base)»")«
ELSE
»eObject(«base.templateClass(importeds)», « EcoreUtil.getURI(base).toString.toJava »)«
ENDIF
»«path.value»'''
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

'''«templateClass(importeds)».create«
IF namings.containsKey(it)
»As(«namings.get(it).toJava»)«
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

	protected def String templateRef(EObject it, Class<?> using, Map<Class<?>, Boolean> importeds) {
		val refTypeText = templateClass(importeds)
		val path = callPath(true, importeds)

		val alias = namings.get(path.key.key)

		// val refTypeText = toUsedType(importeds)
		val rootTypeText = path.key.key.templateClass(importeds)
		val src = path.key.key

		val expectedType = if (alias !== null) eClass.getInstanceClass() else using
		var cast = 
			if (!expectedType.isAssignableFrom(path.key.value.head)) 
			"(" -> (" as " + templateClass(importeds) + ")")
			else "" -> ""

		if (alias !== null)
'''«refTypeText».ref("«alias»")«
IF !path.value.empty
»[ «cast.key»«path.prefix»(it as «rootTypeText»)«path.value»«cast.value» ]«
ENDIF
»'''
		else if (explicitExtras.containsKey(src))
'''«cast.key»«path.prefix»extras.get(«explicitExtras.get(src).toJava»)«path.value»«cast.value»'''
		else if (src.eResource !== null)
'''«cast.key»«path.prefix»extras.get("«implicitExtras.computeIfAbsent(src) [ 
			"$"+implicitExtras.size 
			]»")«path.value»«cast.value»'''
		else null // Headless
	}


	protected def prefix(Pair<? extends Pair<EObject, ?>, String> path) {
		if (path.value !== null) (0 ..< (path.value.split(" as ").length - 1)).map[ "(" ].join else ""
	}
	
	
	/**
	 * Returns
	 * 
	 * @param it element go to
	 * @param withExtras to use extras as result
	 * @param importeds classes in source
	 * @return (root element) -> (exposed type) -> path
	 */
	protected def Pair<Pair<EObject, ? extends Iterable<? extends Class<?>>>, String> callPath(EObject it, boolean withExtras,
			Map<Class<?>, Boolean> importeds) {
		if (namings.containsKey(it)) 
			return (it -> #[ eClass.instanceClass, eClass.instanceClass ]) -> ""

		if (eContainer === null || (withExtras && explicitExtras.containsKey(it)))  // To extras
			return (it -> #[ EObject, eClass.instanceClass ]) -> ""

		val feat = eContainingFeature as EReference

		val cont = eContainer
		var casted = false
		val segment = if (!feat.many) feat.toXtend
			else {
				val siblings = cont.eGet(feat) as Collection<EObject>
				val keyed = !feat.EKeys.empty
				val shortcut = if (!keyed) shortcuts.findFirst[ 
					containerClass.isAssignableFrom(feat.EType.instanceClass)
				]
				
				if (keyed) {
					casted = true
'''at(«feat.name.toJava», «templateClass(importeds)», «feat.EKeys.map[att| eGet(att).toJava ].join(', ')»)'''			
				} else if (shortcut != null) 
'''«feat.toXtend».at«shortcut.EContainingClass.instanceClass.simpleName»(«eGet(shortcut).toJava»)'''			
				else if (siblings.size == 1)
'''«feat.toXtend».head'''
				else 
'''«feat.toXtend».get(«siblings.toList.indexOf(it)»)'''
			}
		
		val parentPath = callPath(cont, withExtras, importeds)

		// is cast required
		val declaring = feat.EContainingClass
		val onRootAlias = !withExtras && eContainer.eContainer == null // eContainer is already handle
		val castRequired = !declaring.instanceClass.isAssignableFrom(parentPath.key.value.head)
			&& !(onRootAlias)
		var path = parentPath.value 
			+ (if (castRequired) (" as " + templateClass(declaring, importeds) + ")") else "")


		val usedTypes = parentPath.key.value.tail
		val typePath = #[ 
			if (casted) eClass.instanceClass else feat.EReferenceType.instanceClass,
			eClass.instanceClass
		] + usedTypes
		// val typePathHead = typePath.toList.head // Debug expression
		// val typePathTail = typePath.toList.tail.toList  // Debug expression
		return (parentPath.key.key -> typePath.toList) -> path + "." + segment
	}
	
	protected def templateProperty(EObject element, EStructuralFeature it, (Object, Class<?>)=>String encoding) {
		val usingType = EType.instanceClass
		if (isMany) {
			val values = (element.eGet(it) as Collection<?>)
			if (values.isEmpty) return ""
			// Surround when several values are present
			val valueTexts = values.map[ encoding.apply(it, usingType) ].toList
			val displayeds = valueTexts.filter[ it !== null ].toList

			// Xtend fails to infer on multi inheritance : Pretty collection-syntax fails
			/*
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
		if (containment || derived || transient || !changeable) false
		else if (EOpposite === null) true
		else if (EOpposite.derived) true // is it possible ?
		else if (EOpposite.containment) false
		else if (many != EOpposite.many) many
		else name < EOpposite.name // a bit irrational
	}

	protected def templateClass(EObject it, Map<Class<?>, Boolean> importedClasses) {
		eClass.templateClass(importedClasses)
	}
	
	
	protected def templateClass(EClass it, Map<Class<?>, Boolean> importedClasses) {
		val jClass = instanceClass
		if (importedClasses.get(jClass) ?: Boolean.FALSE) jClass.simpleName else jClass.name
	}

	protected def usedPackages(Iterable<EObject> values) {
		values.map[ #[ it ] + eAllContents.toIterable ]
			.flatten // all EObject
			.map[ classEPackage ] // all Class<? extend EPackage>
			.toSet.sortBy[ name ] // To have a repeatable import
	}

	protected def importedClasses(EObject root, Iterable<? extends Class<?>> staticImports) {
		val result = new HashMap<Class<?>, Boolean>(staticImports.toInvertedMap[ Boolean.TRUE ])
		val iAll = #[ root ] + root.eAllContents.toIterable
		iAll.map [// element and its pure references (Containment is reached by allContents)
			#[ it ] +  eClass.EAllReferences.filter[ reference ] //  
			.map[ r| eGet(r) ]
			.filterNull // get defined
			.map[
				if (it instanceof Collection<?>) (it as Collection<? extends EObject>) 
				else #[ it as EObject ]
			].flatten
			.filter[ !splits.containsKey(it) ]
		].flatten /* all elements + referenced element */ 
//			.map[ 
//				#[ it, callPath(false, Collections.emptyMap).key.key ]
//			].flatten
//			.map[ eClass.instanceClass ]
			.map[ callPath(false, Collections.emptyMap).key.value.tail ].flatten
			.toSet.sortBy[ name ] // sort to have always the same import
			.forEach [ usedClass |
				// println('\timport ' + usedClass.name)
				if (!result.containsKey(usedClass)) {
					result.put(usedClass, Boolean.valueOf( // Simple name already found
						!result.keySet.map[ simpleName ].exists[ equals(usedClass.simpleName) ]
					))
				}
			]
		result
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
			print('Writing ' + target)
			write(content.apply)
			println(' : ok')
		} finally { close }
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
		if (class.isEnum) class.name + "." + (it as Enum<?>).name()
		else class.name + ".getByName(\"" + name + "\")"
	}

	static val RESERVEDS = "extension,default,transient".split(",").toList

	static def safename(EStructuralFeature it) {
		if (RESERVEDS.contains(name)) '^' + name else name
	}

	static def EObject toRoot(EObject it) { eContainer?.toRoot ?: it }

	static def toXtend(EReference it) {
		if (name.length > 1 && Character.isUpperCase(name.charAt(1))) name.toFirstUpper
		else name
	}


}
