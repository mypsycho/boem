/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.util;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

import org.mypsycho.emf.modit.dw.dummyworld.*;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwPackage
 * @generated
 */
public class DwAdapterFactory extends AdapterFactoryImpl {
	/**
	 * The cached model package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static DwPackage modelPackage;

	/**
	 * Creates an instance of the adapter factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public DwAdapterFactory() {
		if (modelPackage == null) {
			modelPackage = DwPackage.eINSTANCE;
		}
	}

	/**
	 * Returns whether this factory is applicable for the type of the object.
	 * <!-- begin-user-doc -->
	 * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
	 * <!-- end-user-doc -->
	 * @return whether this factory is applicable for the type of the object.
	 * @generated
	 */
	@Override
	public boolean isFactoryForType(Object object) {
		if (object == modelPackage) {
			return true;
		}
		if (object instanceof EObject) {
			return ((EObject)object).eClass().getEPackage() == modelPackage;
		}
		return false;
	}

	/**
	 * The switch that delegates to the <code>createXXX</code> methods.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected DwSwitch<Adapter> modelSwitch =
		new DwSwitch<Adapter>() {
			@Override
			public Adapter caseWObject(WObject object) {
				return createWObjectAdapter();
			}
			@Override
			public Adapter caseDetailed(Detailed object) {
				return createDetailedAdapter();
			}
			@Override
			public Adapter caseNamed(Named object) {
				return createNamedAdapter();
			}
			@Override
			public Adapter caseTitled(Titled object) {
				return createTitledAdapter();
			}
			@Override
			public Adapter caseContact(Contact object) {
				return createContactAdapter();
			}
			@Override
			public Adapter casePerson(Person object) {
				return createPersonAdapter();
			}
			@Override
			public Adapter caseCompany(Company object) {
				return createCompanyAdapter();
			}
			@Override
			public Adapter caseJob(Job object) {
				return createJobAdapter();
			}
			@Override
			public Adapter caseOffer(Offer object) {
				return createOfferAdapter();
			}
			@Override
			public Adapter caseProduct(Product object) {
				return createProductAdapter();
			}
			@Override
			public Adapter caseService(Service object) {
				return createServiceAdapter();
			}
			@Override
			public Adapter casePurchase(Purchase object) {
				return createPurchaseAdapter();
			}
			@Override
			public Adapter caseGood(Good object) {
				return createGoodAdapter();
			}
			@Override
			public Adapter caseActivity(Activity object) {
				return createActivityAdapter();
			}
			@Override
			public Adapter caseDirectory(Directory object) {
				return createDirectoryAdapter();
			}
			@Override
			public Adapter caseLocation(Location object) {
				return createLocationAdapter();
			}
			@Override
			public Adapter caseSubscription(Subscription object) {
				return createSubscriptionAdapter();
			}
			@Override
			public Adapter defaultCase(EObject object) {
				return createEObjectAdapter();
			}
		};

	/**
	 * Creates an adapter for the <code>target</code>.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param target the object to adapt.
	 * @return the adapter for the <code>target</code>.
	 * @generated
	 */
	@Override
	public Adapter createAdapter(Notifier target) {
		return modelSwitch.doSwitch((EObject)target);
	}


	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact <em>Contact</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Contact
	 * @generated
	 */
	public Adapter createContactAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Person <em>Person</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Person
	 * @generated
	 */
	public Adapter createPersonAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Company <em>Company</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Company
	 * @generated
	 */
	public Adapter createCompanyAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory <em>Directory</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory
	 * @generated
	 */
	public Adapter createDirectoryAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Named <em>Named</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Named
	 * @generated
	 */
	public Adapter createNamedAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity <em>Activity</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Activity
	 * @generated
	 */
	public Adapter createActivityAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Titled <em>Titled</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Titled
	 * @generated
	 */
	public Adapter createTitledAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Location <em>Location</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Location
	 * @generated
	 */
	public Adapter createLocationAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Subscription <em>Subscription</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Subscription
	 * @generated
	 */
	public Adapter createSubscriptionAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Offer <em>Offer</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Offer
	 * @generated
	 */
	public Adapter createOfferAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Job <em>Job</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Job
	 * @generated
	 */
	public Adapter createJobAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Product <em>Product</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Product
	 * @generated
	 */
	public Adapter createProductAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Service <em>Service</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Service
	 * @generated
	 */
	public Adapter createServiceAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Good <em>Good</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Good
	 * @generated
	 */
	public Adapter createGoodAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Detailed <em>Detailed</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Detailed
	 * @generated
	 */
	public Adapter createDetailedAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.Purchase <em>Purchase</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Purchase
	 * @generated
	 */
	public Adapter createPurchaseAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link org.mypsycho.emf.modit.dw.dummyworld.WObject <em>WObject</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.WObject
	 * @generated
	 */
	public Adapter createWObjectAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for the default case.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @generated
	 */
	public Adapter createEObjectAdapter() {
		return null;
	}

} //DwAdapterFactory
