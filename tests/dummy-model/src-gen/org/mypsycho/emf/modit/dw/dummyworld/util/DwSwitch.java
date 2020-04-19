/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.util.Switch;

import org.mypsycho.emf.modit.dw.dummyworld.*;

/**
 * <!-- begin-user-doc -->
 * The <b>Switch</b> for the model's inheritance hierarchy.
 * It supports the call {@link #doSwitch(EObject) doSwitch(object)}
 * to invoke the <code>caseXXX</code> method for each class of the model,
 * starting with the actual class of the object
 * and proceeding up the inheritance hierarchy
 * until a non-null result is returned,
 * which is the result of the switch.
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage
 * @generated
 */
public class DwSwitch<T> extends Switch<T> {
	/**
	 * The cached model package
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static DwPackage modelPackage;

	/**
	 * Creates an instance of the switch.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public DwSwitch() {
		if (modelPackage == null) {
			modelPackage = DwPackage.eINSTANCE;
		}
	}

	/**
	 * Checks whether this is a switch for the given package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param ePackage the package in question.
	 * @return whether this is a switch for the given package.
	 * @generated
	 */
	@Override
	protected boolean isSwitchFor(EPackage ePackage) {
		return ePackage == modelPackage;
	}

	/**
	 * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the first non-null result returned by a <code>caseXXX</code> call.
	 * @generated
	 */
	@Override
	protected T doSwitch(int classifierID, EObject theEObject) {
		switch (classifierID) {
			case DwPackage.WOBJECT: {
				WObject wObject = (WObject)theEObject;
				T result = caseWObject(wObject);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.DETAILED: {
				Detailed detailed = (Detailed)theEObject;
				T result = caseDetailed(detailed);
				if (result == null) result = caseWObject(detailed);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.NAMED: {
				Named named = (Named)theEObject;
				T result = caseNamed(named);
				if (result == null) result = caseWObject(named);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.TITLED: {
				Titled titled = (Titled)theEObject;
				T result = caseTitled(titled);
				if (result == null) result = caseNamed(titled);
				if (result == null) result = caseWObject(titled);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.CONTACT: {
				Contact contact = (Contact)theEObject;
				T result = caseContact(contact);
				if (result == null) result = caseNamed(contact);
				if (result == null) result = caseDetailed(contact);
				if (result == null) result = caseWObject(contact);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.PERSON: {
				Person person = (Person)theEObject;
				T result = casePerson(person);
				if (result == null) result = caseContact(person);
				if (result == null) result = caseNamed(person);
				if (result == null) result = caseDetailed(person);
				if (result == null) result = caseWObject(person);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.COMPANY: {
				Company company = (Company)theEObject;
				T result = caseCompany(company);
				if (result == null) result = caseContact(company);
				if (result == null) result = caseTitled(company);
				if (result == null) result = caseNamed(company);
				if (result == null) result = caseDetailed(company);
				if (result == null) result = caseWObject(company);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.JOB: {
				Job job = (Job)theEObject;
				T result = caseJob(job);
				if (result == null) result = caseTitled(job);
				if (result == null) result = caseNamed(job);
				if (result == null) result = caseWObject(job);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.OFFER: {
				Offer offer = (Offer)theEObject;
				T result = caseOffer(offer);
				if (result == null) result = caseTitled(offer);
				if (result == null) result = caseNamed(offer);
				if (result == null) result = caseWObject(offer);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.PRODUCT: {
				Product product = (Product)theEObject;
				T result = caseProduct(product);
				if (result == null) result = caseOffer(product);
				if (result == null) result = caseTitled(product);
				if (result == null) result = caseNamed(product);
				if (result == null) result = caseWObject(product);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.SERVICE: {
				Service service = (Service)theEObject;
				T result = caseService(service);
				if (result == null) result = caseOffer(service);
				if (result == null) result = caseTitled(service);
				if (result == null) result = caseNamed(service);
				if (result == null) result = caseWObject(service);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.PURCHASE: {
				Purchase purchase = (Purchase)theEObject;
				T result = casePurchase(purchase);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.GOOD: {
				Good good = (Good)theEObject;
				T result = caseGood(good);
				if (result == null) result = caseDetailed(good);
				if (result == null) result = casePurchase(good);
				if (result == null) result = caseWObject(good);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.ACTIVITY: {
				Activity activity = (Activity)theEObject;
				T result = caseActivity(activity);
				if (result == null) result = caseTitled(activity);
				if (result == null) result = casePurchase(activity);
				if (result == null) result = caseNamed(activity);
				if (result == null) result = caseWObject(activity);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.DIRECTORY: {
				Directory directory = (Directory)theEObject;
				T result = caseDirectory(directory);
				if (result == null) result = caseTitled(directory);
				if (result == null) result = caseNamed(directory);
				if (result == null) result = caseWObject(directory);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case DwPackage.LOCATION: {
				Location location = (Location)theEObject;
				T result = caseLocation(location);
				if (result == null) result = caseTitled(location);
				if (result == null) result = caseNamed(location);
				if (result == null) result = caseWObject(location);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			default: return defaultCase(theEObject);
		}
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Contact</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Contact</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseContact(Contact object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Person</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Person</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T casePerson(Person object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Company</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Company</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseCompany(Company object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Directory</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Directory</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseDirectory(Directory object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Named</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Named</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseNamed(Named object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Activity</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Activity</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseActivity(Activity object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Titled</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Titled</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseTitled(Titled object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Location</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Location</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseLocation(Location object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Offer</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Offer</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseOffer(Offer object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Job</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Job</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseJob(Job object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Product</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Product</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseProduct(Product object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Service</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Service</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseService(Service object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Good</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Good</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseGood(Good object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Detailed</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Detailed</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseDetailed(Detailed object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Purchase</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Purchase</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T casePurchase(Purchase object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>WObject</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>WObject</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T caseWObject(WObject object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch, but this is the last case anyway.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject)
	 * @generated
	 */
	@Override
	public T defaultCase(EObject object) {
		return null;
	}

} //DwSwitch
