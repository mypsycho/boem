# Mod-it  (Refactoring in progress...)

Mod-it library provides an API to ease creations of EMF Models in XTend.

EMod-it extension frees developers of tedious EMF factory syntax making model description close to JSon file.
It also suppresses the sequential constraint of code provinding a registry and delayed-resolved references.

It comes with reverse engine which create Xtend class from existing models.  

Using such syntax helps to:
 * Speed up the creation of tests
 * Improve the readability of the tests
 * Improve maintainability when the tested metamodel changes
 * Ease the creation of inter-connected models

It has been created and used in industrial project to ease the creation input for JUnit tests on the metamodel and business rules.

## Installation (work in progress...)

Install the feature Mod-it Feature (...) from one of the following update site:

[Update site 1.0.0](TODO "Update site 1.0.0")  
[Update site HEAD](TODO "Update site HEAD") 

## Usage

### How to start
Create a Mod-it factory

```xtend
extension EModit factory = EModIt.using(YourMM.eINSTANCE)
```

_Use the keyword extension in order to use all public methods from the Mod-it factory anywhere in your class_

### Examples
All the examples use the following metamodel:
![Dummy Metamodel for tests](docs/img/BoemTestMM.jpg)

#### How to create an element
```xtend
// Single element creation
val pool = A.create [
  name = "AName"
].assemble
```


#### How to add children
```xtend
val model = A.create [
  name = "AName";

  // Single valued containment feature
  childNodeA = Node.create [
    name = "SingleChildName"
  ]

  // Adds one child
  childrenNodeA += Node.create [
    name = "ANodeName0"
  ]

  // Adds several children at once
  childrenNodeA += #[
    Node.create [
      name = "ANodeName1"
    ],
    Node.create [
      name = "ANodeName2"
    ]
  ]
].assemble
```

#### How to reference between elements

```xtend
val model = B.create [
  name = "AName"

  // Adds one child with reference
  childrenNodeA += "id0" >> Node.create [
      name = "ANodeName0"
  ]
  // Adds several children at once with references
  childrenNodeA += #[
    "id1" >> Node.create [
      name = "ANodeName1"
    ],
    "id2" >> Node.create [
      name = "ANodeName2"
    ]
  ]

  // Adds several children at once with references
  childrenNodeB += #[
    "id3" >> Node.create [
      name = "ANodeName3"
    ],
    "id4" >> Node.create [
      name = "ANodeName4"
    ]
  ]
].assemble

// Accessing node
assertEquals("ANodeName0", model.access(Node, "id0").name)
assertEquals("ANodeName1", model.access(Node, "id1").name)
assertEquals("ANodeName2", model.access(Node, "id2").name)

assertEquals(2, model.root.childrenNodeB.size)
assertEquals("ANodeName3", model.access(Node, "id3").name)
assertEquals("ANodeName4", model.access(Node, "id4").name)
```

You can even register an id provider against the BoemFactory. It will compute an id for each element (at create time) using your rules. For example:
 
```xtend
extension BoemFactory factory = new BoemFactory(BoemTestPackage.eINSTANCE).registerIdProvider([
  if (it instanceof NamedElement) {
    return it.name
  }
  return null
])

//...

val model = B.create [
  name = "AName"
  // Adds one child with reference
  childrenNodeA += Node.create [
    name = "ANodeName0"
  ]
  // Adds several children at once with references
  childrenNodeA += #[
    Node.create [
      name = "ANodeName1"
    ],
    Node.create [
      name = "ANodeName2"
    ]
  ]

  // Adds several children at once with references
  childrenNodeB += #[
    Node.create [
      name = "ANodeName3"
    ],
    Node.create [
      name = "ANodeName4"
    ]
  ]
].assemble

// Accessing node
assertEquals("ANodeName0", model.access(Node, "ANodeName0").name)
assertEquals("ANodeName1", model.access(Node, "ANodeName1").name)
assertEquals("ANodeName2", model.access(Node, "ANodeName2").name)

assertEquals(2, model.root.childrenNodeB.size)
assertEquals("ANodeName3", model.access(Node, "ANodeName3").name)
assertEquals("ANodeName4", model.access(Node, "ANodeName4").name)
```

You can also use a shorter syntax to access your elements

```xtend
val model = A.create [
  name = "AName"
  childrenNodeA += "id1" >> Node.create [
    name = "ANode"
  ]
].assemble

val target = model.access(Node, "id1");
val target2 = ("id1" => model) as Node
assertTrue(target2 == target)
val target3 = model.access("id1")
assertTrue(target3 == target)
assertTrue(target == "id1" => model)
```

#### How to create references
```xtend
val it = A.create [
  name = "AName"
  autoContainementA += "id0" >> B.create [
    referenceNodeA = Node.createRef("id1")
  ]
  childrenNodeA += "id1" >> Node.create [
    name = "ANode"
  ]
].assemble
```

or with a shorter syntax

```xtend
val it = A.create [
  name = "AName"
  autoContainementA += "id0" >> B.create [
    referenceNodeA = Node << "id1"
  ]
  childrenNodeA += "id1" >> Node.create [
    name = "ANode"
  ]
].assemble
```

#### How to update an element
```xtend
val pool = A.create [
  autoContainementA += "B" >> B.create [
    autoContainementA += "D" >> C.create
  ]
].assemble

assertEquals(null, pool.root.name)
assertEquals(null, pool.access(NamedElement, "B").name)
assertEquals(null, pool.access(A, "C").name)

pool.update [
  name = "NameA"
  autoContainementA.get(0).with [
    name = "NameB"
    autoContainementA.get(0).with [
      name = "NameD"
    ]
  ]
]

assertEquals("NameA", model.root.name)
assertEquals("NameB", model.access(B, "B").name)
assertEquals("NameC", model.access(C, "C").name)

pool.access(B, "B").name = "NameB2"
pool.access(C, "C").name = "NameB2"

assertEquals("NameB2", model.access(B, "B").name)
assertEquals("NameC2", model.access(C, "C").name)
```

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request.

## License
[Eclipse Public License - v 1.0](https://www.eclipse.org/legal/epl-v10.html)  
[Contribution guidelines for this project](docs/CONTRIBUTING.md)
