package org.mypsycho.modit.emf.sample.uml;

import static org.junit.Assert.assertEquals;

import org.eclipse.uml2.uml.Generalization;
import org.eclipse.uml2.uml.Interface;
import org.eclipse.uml2.uml.Model;
import org.eclipse.uml2.uml.Operation;
import org.eclipse.uml2.uml.Parameter;
import org.eclipse.uml2.uml.UMLFactory;
import org.junit.Test;


/**
 * This class provides a classic implementation of testing an Meta-Model.
 * <p>
 * It should be compared with {@link org.mypsycho.modit.emf.sample.uml.UmlSmartTest }.
 * </p>
 */
public class UmlPainfullTest {

	@Test
	public void nominal() {

		Model model = UMLFactory.eINSTANCE.createModel();
		model.setName("myUmlModel");

		Interface data = UMLFactory.eINSTANCE.createInterface();
		data.setName("Data");
		model.getPackagedElements().add(data);

		Interface context = UMLFactory.eINSTANCE.createInterface();
		context.setName("Context");
		model.getPackagedElements().add(context);

		Interface service = UMLFactory.eINSTANCE.createInterface();
		service.setName("service");
		model.getPackagedElements().add(service);

		Operation request = UMLFactory.eINSTANCE.createOperation();
		request.setName("request");
		service.getOwnedOperations().add(request);
		request.setType(data); // return type

		Parameter ctxt = UMLFactory.eINSTANCE.createParameter();
		ctxt.setName("ctxt");
		ctxt.setType(context);
		request.getOwnedParameters().add(ctxt);

		Interface facade = UMLFactory.eINSTANCE.createInterface();
		facade.setName("Facade");
		model.getPackagedElements().add(facade);

		// We are compelled to create reference only when both related elements exist.
		Generalization gen = UMLFactory.eINSTANCE.createGeneralization();
		gen.setSpecific(facade);
		facade.getGeneralizations().add(gen);
		gen.setGeneral(service);

		assertEquals(1, facade.getAllOperations().size());
		assertEquals("request", facade.getAllOperations().get(0).getName());

		// You, clearly, don't want to write another test !
		// Now See UmlSmartTest
	}

}
