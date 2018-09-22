package org.mypsycho.modit.emf.modit.tests

import java.util.Collection
import java.util.Collections
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.InternalEObject
import org.mypsycho.modit.emf.EModIt

import static org.junit.Assert.*

/**
 * Abstract class for all tests.
 */
abstract class ModItTestContext {
	
	
	/**
	 * Checks that there is not adapter lest in the model (some adapters are added while building the model)
	 */
	protected def assertNoAdapterLeft(EObject eObject) {
		assertTrue(eObject.eAdapters.isEmpty)
		val contentIte = eObject.eAllContents
		while (contentIte.hasNext) {
			val next = contentIte.next
			assertTrue(next.eAdapters.isEmpty)
		}
	}

	/**
	 * Checks that there are no BoemURIs left in the model
	 */
	protected def assertNoBoemUriLeft(EObject eObject) {
		eObject.assertNoRefToBoemURI()
		val contentIte = eObject.eAllContents
		while (contentIte.hasNext){
			val next = contentIte.next
			next. assertNoRefToBoemURI()
		}

	}

	private def void assertNoRefToBoemURI(EObject eObject) {
		for (EReference ref : eObject.eClass.EAllReferences) {
			var Collection<InternalEObject> values;
			if (ref.isMany) {
				values = eObject.eGet(ref, false) as Collection<InternalEObject>
			} else {
				values = Collections.singleton(eObject.eGet(ref, false) as InternalEObject)
			}

			for (EObject value : values) {
				value.assertNoBoemUri
			}
		}
	}

	private def void assertNoBoemUri(EObject eObject) {
		if (eObject instanceof InternalEObject) {
			if (eObject.eIsProxy() && EModIt.PROXY_URI_SCHEME == eObject.eProxyURI.scheme) {
				fail("There is still BoemUris in the model");
			}
		}
	}
}
