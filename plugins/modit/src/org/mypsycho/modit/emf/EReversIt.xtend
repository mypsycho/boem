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


class EReversIt {

	static val MAIN_IMPORTS = #{ Arrays, HashMap, EObject, EList, EReference, ResourceSet, ResourceSetImpl, URI, EModIt }
	static val PART_IMPORTS = #{ Map, EObject, EModIt, ResourceSet }

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

	// Reset for each file.
	val currentImports = new HashMap<Class<?>, Boolean>()

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


	protected def prepareContext() {
		// Check alias and splits are defined in the serialized tree.
		#[
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

		// Check explicit extra are pure references
		val illegalExtras = explicitExtras.filter[ it, id | roots.containsKey(toRoot) ].values
		if (!illegalExtras.empty) {
			throw new IllegalArgumentException(
				"Explicit extra values must not be contained by reversed resource. Use splits or alias: " + illegalExtras
			)
		}

		val mappings = #[ roots.mapValues[ name ], splits.mapValues[ name ], aliases ]
		
		// Checks aliases are a bijection.
		#[
			"Target elements" -> [ Map<EObject, String> it| keySet ],
			"Names" -> [ Map<EObject, String> it| values ]
		].forEach[ rule |
			val ends = mappings.map(rule.value).flatten.toList // list to keep all occurrences
			
			val redundants = ends.filter[ !isUniqueIn(ends) ].toSet
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

		val mainFile = target.resolve(mainClass.toPath)
		
		if (roots.size == 1) {
			
			mainFile.toFile[ templateSimpleMain(orderedRoots.head) ]
			
		} else {
			// Write class of each elements
			orderedRoots.forEach [
				val id = roots.get(it)
				target.resolve(id.toPath).toFile[ 
					templatePart(id, it).toString
				]
			]
			mainFile.toFile[ templateComposedMain ]
		}

	}

	protected def templateSimpleMain(EObject it) {
		registerImports(MAIN_IMPORTS)
		templateMain(#[ it ].usedPackages) [ templateSimpleContent ]
	}

	// Xtend
	protected def templateSimpleContent(EObject it) {
		// Call modit.assemble on it
		templateCreate + ".assemble"
	}
		
	protected def templateComposedMain() {
		// Register imports
		currentImports.clear
		currentImports.putAll(MAIN_IMPORTS.toInvertedMap[ Boolean.TRUE ])
		
		templateMain(orderedRoots.usedPackages) [ 
			orderedRoots.map[ roots.get(it) ]
				.templateComposedContent()
		]
	}
	
	// Xtend
	protected def String templateComposedContent(Iterable<?extends ClassId> values) {
'''#[
	«
FOR value : values SEPARATOR ',\n'
»new «value.qName»(this).createContent«
ENDFOR
»
].assemble'''
	}

	// Xtend
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

	def «content.templateClass» createContent() {
		«content.templateInnerCreate»
	}

	def getExtras() { context.extras }
}
'''
	}


	// Xtend
	protected def String templateMain(Iterable<Class<?>> packages, ()=>String content) {
		// val extrasByName = 

'''package «mainClass.pack»

«templateImports»

class «mainClass.name» {

	public val extras = new HashMap<String, EObject> 

	public extension EModIt factory = EModIt.using(
		«FOR p : packages SEPARATOR ',\n' »«p.name».eINSTANCE«ENDFOR»
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
»	def createContent() {
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
	static def <O extends EObject, R extends O> R at(EList<?> values, Class<R> type, Object... key) {
		val attKeys = ((values as EcoreEList<?>).feature as EReference).EKeys
		val keyValues = key.toList
		
		if (keyValues.size != attKeys.size) {
			throw new IllegalArgumentException("Wrong args size " + keyValues.size + " instead of " + attKeys.size)	
		}
		eList.filter(type).findFirst[ r|
			attKeys.map[ r.eGet(it) ] == keyValues
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




	protected def templateCreate(EObject it) {
		val split = splits.get(it)
		if (split !== null) templateOutterCreate(split)
		else templateInnerCreate
	}
	
	// Xtend
	protected def String templateOutterCreate(EObject it, ClassId split) {
		// TODO use import registry short name ( a current package is needed )
		'''new «IF mainClass.pack != split.pack»«split.pack».«ENDIF»«split.name»(this).createContent'''
	}

	// Xtend
	protected def String templateInnerCreate(EObject it) {
		// Find setted attributes, references, <>references
		val content = innerContent

'''«templateClass».create«
IF namings.containsKey(it)
»As(«namings.get(it).toJava»)«
ENDIF
»«
IF content.exists[ c | eIsSet(c.key) ]
» [
	«
FOR c : content SEPARATOR statementSeparator 
»«templateProperty(c.key, c.value)»«
ENDFOR
»
]«
ENDIF
»'''
	}
	
	protected def getInnerContent(EObject it) {
		// Find setted attributes, references, <>references
		 #[
			eClass.EAllAttributes.filter[ a | eIsSet(a) && a.defaultValue != eGet(a) ]
				-> [ Object it, Class<?> using | toJava ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isReference ]
				-> [ Object it, Class<?> using | (it as EObject).templateRef(using) ],
			eClass.EAllReferences.filter[ r | eIsSet(r) && r.isContainment ]
				-> [ Object it, Class<?> using | (it as EObject).templateCreate ]
		]
		.map[ (key as Iterable<EStructuralFeature>).map[ f | f -> value ] ]
		.flatten.toList
	}
	
	//
	// Refactor START
	//
	
		
	protected static class Expr {
		public val EObject src
		public val Iterable<? extends Class<?>> chain // required for import evaluation
		public val String value
		
		// public val Expr parent
		// public val EClass cast
		
		
		new (EObject src, Iterable<? extends Class<?>> chain) {
			this(src, chain, null)
		}
			
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
	
		// Xtend
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
	
	protected def String templateRef(EObject it, Class<?> using) {
		val refTypeText = templateClass
		val path = callPath(true)
		val alias = namings.get(path.src)
		val expectedType = if (alias !== null) eClass.getInstanceClass() else using

		val cast = if (!expectedType.isAssignableFrom(path.chain.head)) it // else null

		// TODO Xtend
		if (alias !== null)
'''«refTypeText».ref("«alias»")«
IF path.value !== null
»[ «'''«path.prefix»«"it".templateCast(path.src)»«path.value»'''.templateCast(cast)» ]«
ENDIF
»'''
		else if (explicitExtras.containsKey(path.src))
'''«path.prefix»extras.get(«explicitExtras.get(path.src).toJava»)«path.value»'''.templateCast(cast)
		else if (path.src.eResource !== null)
'''«path.prefix»extras.get("«
	implicitExtras.computeIfAbsent(path.src) [ "$" + implicitExtras.size ]
»")«path.value»'''.templateCast(cast)
		else null // Headless
	}


	
	/**
	 * Returns the expression of this path.
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
		// TODO Xtend
		val segment = if (!feat.many) "." + feat.toGetter
			else {
				val siblings = cont.eGet(feat) as Collection<EObject>
				val keyed = !feat.EKeys.empty
				val shortcut = if (!keyed) shortcuts.findFirst[ 
					containerClass.isAssignableFrom(feat.EType.instanceClass)
				]
				
				if (keyed) {
					casted = true
'''.at(«feat.name.toJava», «templateClass», «feat.EKeys.map[att| eGet(att).toJava ].join(', ')»)'''			
				} else if (shortcut !== null) 
'''.«feat.toGetter».at«shortcut.EContainingClass.instanceClass.simpleName»(«eGet(shortcut).toJava»)'''			
				else if (siblings.size == 1)
'''.«feat.toGetter».head'''
				else 
'''.«feat.toGetter».get(«siblings.toList.indexOf(it)»)'''
			}
		
		val parentPath = callPath(cont, withExtras)

		// is cast required
		val declaring = feat.EContainingClass
		val onRootAlias = !withExtras && eContainer.eContainer === null // eContainer is already handle
		val castRequired = !declaring.instanceClass.isAssignableFrom(parentPath.chain.head)
			&& !(onRootAlias)
		
		val cast = if (castRequired) (" as " + declaring.templateClass + ")") else ""

		val usedTypes = parentPath.chain.tail
		val typePath = #[ 
			if (casted) eClass.instanceClass else feat.EReferenceType.instanceClass,
			eClass.instanceClass
		] + usedTypes
		// val typePathHead = typePath.toList.head // Debug expression
		// val typePathTail = typePath.toList.tail.toList  // Debug expression
		new Expr(parentPath.src, typePath.toList, 
			// declaring for cast (nullable), segment application
			parentPath.value + cast + segment
		)
	}
	
	
	//
	// Refactor END
	//
	
	def templateCast(CharSequence expr, EObject expected) {
		expr.templateCast(expected.eClass)
	}

	//XTend
	def templateCast(CharSequence expr, EClass expected) {
		if (expected === null) expr.toString
		else "(" + expr + " as " + expected.templateClass + ")"
	}
	
	protected def templateProperty(EObject element, EStructuralFeature it, (Object, Class<?>)=>String encoding) {
		val usingType = EType.instanceClass
		if (isMany) {
			(element.eGet(it) as Collection<?>)
				.map[ encoding.apply(it, usingType) ]
				.join(statementSeparator) // Let's hope command separator is universal ...
				[ valueText | templateProperty(valueText, true) ]
		} else {
			val valueText = encoding.apply(element.eGet(it), usingType)
			templateProperty(valueText, false)
		}
	}
	
	// Xtend
	protected def templateProperty(EStructuralFeature it, String value, boolean many) {
		if (value === null) ('// ' + safename + ' is headless') // is this universal (for any lang) ??
		// TODO log an error
		else if (many) safename + ' += ' + value
		else safename + ' = ' + value
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
		instanceClass.templateClass
	}

	protected def templateClass(Class<?> it) {
		if (currentImports.get(it) ?: Boolean.FALSE) simpleName else name
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
					// We need the factory of the bound to the attributes
					// to encode/decode

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
	.toList.sortBy[ name ] 
SEPARATOR statementSeparator
»«c.templateImport»«/* */
ENDFOR
»'''
	}
		
	// XTend
	protected def templateImport(Class<?> it) { "import " + name }
	

	static def toContent(Resource res) { res.contents.get(0) }

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
		class.templateClass
			+ "." + (
				if (class.isEnum) (it as Enum<?>).name()
				else ("getByName(\"" + name + "\")")
			)
	}


	static val XTEND_RESERVEDS = "extension,default,transient".split(",").toList
	// Xtend
	def safename(EStructuralFeature it) {
		if (XTEND_RESERVEDS.contains(name)) '^' + name else name
	}
	
	// Xtend (generic)
	def getStatementSeparator() {
		"\n"
	}

	static def EObject toRoot(EObject it) { eContainer?.toRoot ?: it }

	static def toGetter(EReference it) {
		if (name.length > 1 && Character.isUpperCase(name.charAt(1))) name.toFirstUpper
		else name
	}

	static def toEObject(Notifier it) {
		if (it instanceof EObject) it
		else if (it instanceof Resource) toContent 
		else throw new IllegalArgumentException("Unsupported type of " + it)
	}
	
	static def isUniqueIn(Object it, Iterable<?> values) {
		values.filter[ value | it == value ].size <= 1
	}
	
	
	
}
