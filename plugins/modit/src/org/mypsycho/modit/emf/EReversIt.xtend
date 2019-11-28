package org.mypsycho.modit.emf

import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.util.ArrayList
import java.util.Arrays
import java.util.Collection
import java.util.HashMap
import java.util.List
import java.util.Map
import org.eclipse.emf.common.notify.Notifier
import org.eclipse.emf.common.util.EList
import org.eclipse.emf.common.util.Enumerator
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EAttribute
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EPackage
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.util.EcoreUtil

import static extension org.mypsycho.modit.AdvancedExtensions.*

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

	val currentImports = new HashMap<Class<?>, Boolean>()
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
		// Register imports
		currentImports.clear
		currentImports.putAll(MAIN_IMPORTS.toInvertedMap[ Boolean.TRUE ])
		
		templateMain(orderedRoots.usedPackages) [
'''#[
	«
FOR p : orderedRoots.map[ roots.get(it) ] SEPARATOR ',\n'
»new «p.qName»(this).call«
ENDFOR
»
].assemble'''
		]
	}

	val PART_IMPORTS = #{ Map, EObject, EModIt, ResourceSet }

	protected def templatePart(ClassId it, EObject content) {
		val parentName = if (pack != mainClass.pack) mainClass.qName else mainClass.name
		content.registerImports(PART_IMPORTS)
'''package «pack»

«templateImports»
import static extension «mainClass.qName».*

class «name» {
	val «parentName» context
	val extension EModIt factory

	new(«parentName» parent) {
		this.context = parent
		this.factory = parent.factory
	}

	def «content.templateClass» call() {
		«content.templateInnerCreate»
	}

	def getExtras() { context.extras }
}
'''
	}

	val MAIN_IMPORTS = #{ Arrays, HashMap, EObject, EList, EReference, ResourceSet, ResourceSetImpl, URI, EModIt }

	protected def templateSimpleMain() {
		val it = orderedRoots.head
		registerImports(MAIN_IMPORTS)

		templateMain(#[ it ].usedPackages) [ templateCreate + ".assemble" ]
	}

	protected def String templateMain(Iterable<Class<?>> packages, ()=>String content) {
		// val extrasByName = 

'''package «mainClass.pack»

«templateImports»

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
»	"«e.key»" -> eObject(« e.value.templateClass», « EcoreUtil.getURI(e.value).toString.toJava »)«
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
		»	«a.value.toJava» -> «a.key.templateAlias»«
  ENDFOR
»
		})
«
 ENDIF // explicit extras
»	}

«
ENDIF // extras
»	def content() {
		«content.apply»
	}

	def context() { this }

    // deprecated
	static def <R extends EObject> R at(EObject it, String featName, Class<R> type, Object... key) {
		val feat = eClass.getEStructuralFeature(featName) as EReference
		val keyValues = Arrays.asList(key)
		(eGet(feat) as EList<?>).filter(type).findFirst[ r|
			feat.EKeys.map[ r.eGet(it) ] == keyValues
		] as R
	}

	// Only works for feature with keys
	static def <O extends EObject, R extends O> R at(EList<E> values, Class<R> type, Object... key) {
		val eList = values as EcoreEList<E>
		val feat = eList.feature
		val keyValues = Arrays.asList(key)
		eList.filter(type).findFirst[ r|
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


	protected def String templateAlias(EObject it) {
		val path = callPath(false)
		val base = path.src
'''«path.prefix»«
IF implicitExtras.containsKey(base)
»extras.get("«implicitExtras.get(base)»")«
ELSE
»eObject(«base.templateClass», « EcoreUtil.getURI(base).toString.toJava »)«
ENDIF
»«path.value»'''
	}


	protected def String templateCreate(EObject it) {
		val split = splits.get(it)
		if (split === null) templateInnerCreate
		else '''new «IF mainClass.pack != split.pack»«split.pack».«ENDIF»«split.name»(this).call'''
	}

	protected def String templateInnerCreate(EObject it) {
		// Find setted attributes, references, <>references
		val content = #[
			eClass.EAllAttributes.filter[ a | eIsSet(a) && a.defaultValue != eGet(a) ]
				-> [ Object it, Class<?> using | toJava ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isReference ]
				-> [ Object it, Class<?> using | (it as EObject).templateRef(using) ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isContainment ]
				-> [ Object it, Class<?> using | (it as EObject).templateCreate ]
		].map[ (key as Iterable<EStructuralFeature>).map[ f | f -> value ] ].flatten.toList

'''«templateClass».create«
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

	protected def String templateRef(EObject it, Class<?> using) {
		val refTypeText = templateClass
		val path = callPath(true)

		val alias = namings.get(path.src)
		val rootTypeText = path.src.templateClass

		val expectedType = if (alias !== null) eClass.getInstanceClass() else using
		var cast = 
			if (expectedType.isAssignableFrom(path.chain.head)) "" -> "" // no cast
			else "(" -> (" as " + templateClass + ")")

		if (alias !== null)
'''«refTypeText».ref("«alias»")«
IF !path.value.empty
»[ «cast.key»«path.prefix»(it as «rootTypeText»)«path.value»«cast.value» ]«
ENDIF
»'''
		else if (explicitExtras.containsKey(path.src))
'''«cast.key»«path.prefix»extras.get(«explicitExtras.get(path.src).toJava»)«path.value»«cast.value»'''
		else if (path.src.eResource !== null)
'''«cast.key»«path.prefix»extras.get("«
	implicitExtras.computeIfAbsent(path.src) [ "$"+implicitExtras.size ]
»")«path.value»«cast.value»'''
		else null // Headless
	}



	
	
	static class Expr {
		public val EObject src
		public val Iterable<? extends Class<?>> chain // required for import evaluation
		public val String value
		new (EObject src, Iterable<? extends Class<?>> chain, String value) {
			this.src = src
			this.chain = chain
			this.value = value
		}
		protected def prefix() {
			if (value === null) ""
			else (0 ..< (value.split(" as ").length - 1)).map[ "(" ].join
		}
	}
	
	/**
	 * Returns
	 * 
	 * @param it element go to
	 * @param withExtras to use extras as result
	 * @return (root element) -> (exposed type) -> path
	 */
	protected def Expr callPath(EObject it, boolean withExtras) {
		if (namings.containsKey(it)) 
			return new Expr(it, #[ eClass.instanceClass, eClass.instanceClass ], "")

		if (eContainer === null || (withExtras && explicitExtras.containsKey(it)))  // To extras
			return new Expr(it, #[ EObject, eClass.instanceClass ], "")

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
'''at(«feat.name.toJava», «templateClass», «feat.EKeys.map[att| eGet(att).toJava ].join(', ')»)'''			
				} else if (shortcut !== null) 
'''«feat.toXtend».at«shortcut.EContainingClass.instanceClass.simpleName»(«eGet(shortcut).toJava»)'''			
				else if (siblings.size == 1)
'''«feat.toXtend».head'''
				else 
'''«feat.toXtend».get(«siblings.toList.indexOf(it)»)'''
			}
		
		val parentPath = callPath(cont, withExtras)

		// is cast required
		val declaring = feat.EContainingClass
		val onRootAlias = !withExtras && eContainer.eContainer === null // eContainer is already handle
		val castRequired = !declaring.instanceClass.isAssignableFrom(parentPath.chain.head)
			&& !(onRootAlias)
		var path = parentPath.value 
			+ (if (castRequired) (" as " + declaring.templateClass + ")") else "")


		val usedTypes = parentPath.chain.tail
		val typePath = #[ 
			if (casted) eClass.instanceClass else feat.EReferenceType.instanceClass,
			eClass.instanceClass
		] + usedTypes
		// val typePathHead = typePath.toList.head // Debug expression
		// val typePathTail = typePath.toList.tail.toList  // Debug expression
		return new Expr(parentPath.src, typePath.toList, path + "." + segment)
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

	protected def templateClass(EObject it) {
		eClass.templateClass
	}
	
	
	protected def templateClass(EClass it) {
		val jClass = instanceClass
		if (currentImports.get(jClass) ?: Boolean.FALSE) jClass.simpleName else jClass.name
	}

	protected def usedPackages(Iterable<? extends EObject> values) {
		values.map[ #[ it ] + eAllContents.toIterable ]
			.flatten // all EObject
			.map[ classEPackage ] // all Class<? extend EPackage>
			.toSet.sortBy[ name ] // To have a repeatable import
	}

	protected def registerImports(EObject root, Iterable<? extends Class<?>> staticImports) {
		currentImports.clear
		currentImports.putAll(staticImports.toInvertedMap[ Boolean.TRUE ])

		(#[ root ] + root.eAllContents.toIterable)
			.map [
				
				#[ it.class ] // Contained elements
				
				+ eClass.EAllAttributes // Enum
					.map[ a| eGet(a) ]
					.filterNull // get defined
					.map[
						if (it instanceof Collection<?>) (it as Collection<?>) 
						else #[ it ]
					].flatten
					.filter[ it instanceof Enum<?> ]
					.map[ class ]

				// TODO: other datatypes ??

				+ eClass.EAllReferences // all referenced elements
					.filter[ reference ] //  
					.map[ r| eGet(r) ]
					.filterNull // get defined
					.map[
						if (it instanceof Collection<?>) (it as Collection<? extends EObject>) 
						else #[ it as EObject ]
					]
					.flatten
					.filter[ !splits.containsKey(it) ] // TODO: can't remember Why ?
					.map[ callPath(false).chain.tail ].flatten

			].flatten
			.toSet.sortBy[ name ] // sort to always have the same import
			// a optimal code would count but homonyms of Classes are not current in a model
			.forEach [
				if (!currentImports.containsKey(it)) {
					currentImports.put(it, Boolean.valueOf( // Simple name already found
						!currentImports.keySet.map[ simpleName ].exists[n| n.equals(simpleName) ]
					))
				}
			]


	}

	
	protected def templateImports() {
'''«
FOR c : currentImports.entrySet
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

	dispatch def toJava(Object it) {
		toString
	}

	dispatch def toJava(String it) {
		// TODO: Very ugly, probably not complete
		"\"" 
			+ replace("\\", "\\\\") //
				.replace("\"", "\\\"") //
				.replace("\t", "\\t") //
				.replace("\r\n", "\\n") //
				.replace("\r", "\\n") //
				.replace("\n", "\\n") //
			+ "\""
	}

	dispatch def toJava(Enumerator it) {
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
