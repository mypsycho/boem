/*******************************************************************************
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Nicolas PERANSIN - initial API and implementation
 *******************************************************************************/
package org.mypsycho.modit.emf.modit.tests

import java.math.BigDecimal
import java.util.Comparator
import org.eclipse.emf.common.util.ECollections
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1
import org.junit.Test
import org.mypsycho.emf.modit.dw.dummyworld.Company
import org.mypsycho.emf.modit.dw.dummyworld.Directory
import org.mypsycho.emf.modit.dw.dummyworld.Job
import org.mypsycho.emf.modit.dw.dummyworld.Location
import org.mypsycho.emf.modit.dw.dummyworld.Offer
import org.mypsycho.emf.modit.dw.dummyworld.Person
import org.mypsycho.emf.modit.dw.dummyworld.Product
import org.mypsycho.emf.modit.dw.dummyworld.Service
import org.mypsycho.emf.modit.dw.dummyworld.Titled

import static extension org.junit.Assert.*

/**
 * Test of EModit.
 * <p>
 * It use most of the API.
 * </p>
 * 
 * @author nperansin
 */
class EModitTest extends ModItTestContext/* syntax test */ {

	def createData() {
		Directory.create[
			name = "MyTown"
			
			contacts += Person.createAs("boss") [// create with Alias
				firstname = "John"
				lastname = "Doe"
			]

			contacts += Company.create[
				name = "MyCo"
				
				employees += Job.create[
					name = "Manager"
					employee = Person.ref("boss")
					
					team += Job.ref("MyTown")[ (it as Directory).contacts.filter(Company)
						// navigation using injected content
						.findFirst[ name == "MyCo" ].employees.findFirst[ 
							
							// Not supported as employee is unresolved reference !
							//employee?.firstname == "Jack"
							//employee?.lastname == "Foo"
							
							// but this is supported
							name == "Commercial"
						]
					]
				]
				
				offers += Product.create("Widget") [
					price = new BigDecimal(10)
				]
				
				
				// Creation with description
				employees += Job.create("Commercial") [
					employee = Person.ref("MyTown/Jack.Foo") // reference automatic
					//team += Job.ref("Jane.Jane") // unsupported as jan
				]
				
				employees += Job.create("Technician") [
					val thisJob = it
					employee = Person.create("Jane Jane") // no detail
						.onAssembledWith(thisJob) [ // create at usage
							thisJob.parent.parent.contacts += it
						]
				]
				
				offers += Product.create // unfinished declaration
				
				offers += Service.create // and then with undefined value
					.andThen[
						name = "Training"						
					]

				offers += Service.create[
						name = "Training" // conflict
					].andThen[ // override
						name = "Test"
					]
				
			].onAssembled[
				ECollections.sort(offers, Comparator.comparing[ Offer it | name ?: "" ])
				
				// Assembling is performed after 
				// - dynamic creation of Jane,
				// - identification in Jack job.
				employees.findFirst[ 
					employee?.firstname == "Jack"
					employee?.lastname == "Foo"
				].team += employees.findFirst[ 
					employee?.firstname == "Jane"
					employee?.lastname == "Jane"
				]
			]

			contacts += Person.create[ // referenced by content
				firstname = "Jack"
				lastname = "Foo"
			]
			
			contacts += Person.create("Bob Bar") [
				// redefinition after description
				firstname = "Robert"
				
				locations += Location.create[
					throw new IllegalAccessException
				].compose[it, Object previous | 
					// Down cast: Xtend generation is ok but compilation fails ?!
					try {
						(previous as Procedure1<Location>).apply(it)
						fail("Previous task must fail")
					} catch (IllegalAccessException e) {
					}
					name = "mail"
					value = "bar@home.com"
				]
			]
			
		].assemble
	}
	
	
	@Test
	def void testNominal() {
		val it = createData()
		
		(access("MyTown") == root).assertTrue

		// assert structure
'''
MyTown/
 John Doe
 [MyCo]
  John Doe (Manager:1)
  Jack Foo (Commercial:1)
  Jane Jane (Technician)
  $$
  $Test$
  $Training$
  $Widget$
 Jack Foo
 Robert Bar
  mail:bar@home.com
 Jane Jane
'''
		.toString.trim.split("\\R").assertArrayEquals(
			root.onAll.map[ indent + toName ].toList
		)
		
		// assert relations are good, identification is hierarchical.
		#[ 
			"Manager" -> "Commercial",
			"Commercial" -> "Technician"
		].forEach[ usecase |
			val leader = usecase.key
			val teamMate = usecase.value
			
			teamMate.assertEquals(
				access(Company, "MyTown/MyCo").employees
					.findFirst[ name == leader ]
					.team.head.name
			)
		
		]
	}
	

	
	static def String toName(EObject it) {
		if (it instanceof Offer) 
			'''$«name»$'''
		else if (it instanceof Job) 
			'''«employee?.toName» («name»«IF !team.empty»:«team.size»«ENDIF»)''' 
		else if (it instanceof Company) 
			'''[«name»]''' 
		else if (it instanceof Person) 
			#[ firstname, lastname ].filterNull.join(" ")
		else if (it instanceof Directory) 
			'''«name»/'''
		else if (it instanceof Location) 
			'''«name»:«value»'''
		else if (it instanceof Titled) 
			name
		else '#' + eClass.name
	}
	
	
}