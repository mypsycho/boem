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
import org.eclipse.emf.ecore.EObject
import org.junit.Test
import org.mypsycho.emf.modit.dw.dummyworld.Company
import org.mypsycho.emf.modit.dw.dummyworld.Directory
import org.mypsycho.emf.modit.dw.dummyworld.Job
import org.mypsycho.emf.modit.dw.dummyworld.Offer
import org.mypsycho.emf.modit.dw.dummyworld.Person
import org.mypsycho.emf.modit.dw.dummyworld.Product
import org.mypsycho.emf.modit.dw.dummyworld.Service
import org.mypsycho.emf.modit.dw.dummyworld.Titled

import static extension org.junit.Assert.*
import org.eclipse.emf.common.util.ECollections
import java.util.Comparator

/**
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
							
							// but is supported
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
				]
				
				employees += Job.create("Technician") [
					val thisJob = it
					employee = Person.create("Jane Jane") // no detail
						.onAssembledWith(thisJob) [ // create at usage
							thisJob.parent.parent.contacts += it
						]
				]
				
				offers += Product.create // unfinished declaration
				
				offers += Service.create //
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
			]

			contacts += Person.create[ // referenced by content
				firstname = "Jack"
				lastname = "Foo"
			]
			
			contacts += Person.create("Bob.Bar") [
				// redefinition after description
				firstname = "Robert"
			]
			
		].assemble
	}
	
	@Test
	def void testNominal() {
		val data = createData()
		
		(data.access("MyTown") == data.root).assertTrue

		summary.split("\\R")
			.assertArrayEquals(
				data.root.onAll.map[ indent + toName ].toList
			)
		
	}
	
	def summary() {
'''
MyTown/
 John Doe
 [MyCo]
  John Doe (Manager:1)
  Jack Foo (Commercial)
  Jane Jane (Technician)
  $$
  $Test$
  $Training$
  $Widget$
 Jack Foo
 Robert
 Jane Jane
'''.toString.trim	
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
		else if (it instanceof Titled) 
			name
		else '#' + eClass.name
	}
	
	
}