/**
 */
package org.mypsycho.emf.modit.dw.dummyworld;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each operation of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * <!-- begin-model-doc -->
 * Model for demonstration and validation.
 * It tracks social relationships.
 * <!-- end-model-doc -->
 * @see org.mypsycho.emf.modit.dw.dummyworld.DwFactory
 * @model kind="package"
 * @generated
 */
public interface DwPackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "dummyworld";

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "https://github.com/mypsycho/modit/tests/dummy-world/1.0";

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "dw";

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	DwPackage eINSTANCE = org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl.init();

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.WObjectImpl <em>WObject</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.WObjectImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getWObject()
	 * @generated
	 */
	int WOBJECT = 0;

	/**
	 * The number of structural features of the '<em>WObject</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WOBJECT_FEATURE_COUNT = 0;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WOBJECT___GET_PARENT = 0;

	/**
	 * The number of operations of the '<em>WObject</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int WOBJECT_OPERATION_COUNT = 1;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.Named <em>Named</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Named
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getNamed()
	 * @generated
	 */
	int NAMED = 2;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl <em>Contact</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getContact()
	 * @generated
	 */
	int CONTACT = 4;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.PersonImpl <em>Person</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.PersonImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getPerson()
	 * @generated
	 */
	int PERSON = 5;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.TitledImpl <em>Titled</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.TitledImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getTitled()
	 * @generated
	 */
	int TITLED = 3;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.CompanyImpl <em>Company</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.CompanyImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getCompany()
	 * @generated
	 */
	int COMPANY = 6;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.DirectoryImpl <em>Directory</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DirectoryImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getDirectory()
	 * @generated
	 */
	int DIRECTORY = 14;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ActivityImpl <em>Activity</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ActivityImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getActivity()
	 * @generated
	 */
	int ACTIVITY = 13;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.LocationImpl <em>Location</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.LocationImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getLocation()
	 * @generated
	 */
	int LOCATION = 15;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.OfferImpl <em>Offer</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.OfferImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getOffer()
	 * @generated
	 */
	int OFFER = 8;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl <em>Job</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getJob()
	 * @generated
	 */
	int JOB = 7;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ProductImpl <em>Product</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ProductImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getProduct()
	 * @generated
	 */
	int PRODUCT = 9;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ServiceImpl <em>Service</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ServiceImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getService()
	 * @generated
	 */
	int SERVICE = 10;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.DetailedImpl <em>Detailed</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DetailedImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getDetailed()
	 * @generated
	 */
	int DETAILED = 1;

	/**
	 * The feature id for the '<em><b>Description</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DETAILED__DESCRIPTION = WOBJECT_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Hint</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DETAILED__HINT = WOBJECT_FEATURE_COUNT + 1;

	/**
	 * The number of structural features of the '<em>Detailed</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DETAILED_FEATURE_COUNT = WOBJECT_FEATURE_COUNT + 2;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DETAILED___GET_PARENT = WOBJECT___GET_PARENT;

	/**
	 * The number of operations of the '<em>Detailed</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DETAILED_OPERATION_COUNT = WOBJECT_OPERATION_COUNT + 0;

	/**
	 * The number of structural features of the '<em>Named</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NAMED_FEATURE_COUNT = WOBJECT_FEATURE_COUNT + 0;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NAMED___GET_PARENT = WOBJECT___GET_PARENT;

	/**
	 * The number of operations of the '<em>Named</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int NAMED_OPERATION_COUNT = WOBJECT_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TITLED__NAME = NAMED_FEATURE_COUNT + 0;

	/**
	 * The number of structural features of the '<em>Titled</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TITLED_FEATURE_COUNT = NAMED_FEATURE_COUNT + 1;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TITLED___GET_PARENT = NAMED___GET_PARENT;

	/**
	 * The number of operations of the '<em>Titled</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TITLED_OPERATION_COUNT = NAMED_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Description</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT__DESCRIPTION = NAMED_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Hint</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT__HINT = NAMED_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Locations</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT__LOCATIONS = NAMED_FEATURE_COUNT + 2;

	/**
	 * The feature id for the '<em><b>Owns</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT__OWNS = NAMED_FEATURE_COUNT + 3;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT__PARENT = NAMED_FEATURE_COUNT + 4;

	/**
	 * The number of structural features of the '<em>Contact</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT_FEATURE_COUNT = NAMED_FEATURE_COUNT + 5;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT___GET_PARENT = NAMED___GET_PARENT;

	/**
	 * The number of operations of the '<em>Contact</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int CONTACT_OPERATION_COUNT = NAMED_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Description</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON__DESCRIPTION = CONTACT__DESCRIPTION;

	/**
	 * The feature id for the '<em><b>Hint</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON__HINT = CONTACT__HINT;

	/**
	 * The feature id for the '<em><b>Locations</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON__LOCATIONS = CONTACT__LOCATIONS;

	/**
	 * The feature id for the '<em><b>Owns</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON__OWNS = CONTACT__OWNS;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON__PARENT = CONTACT__PARENT;

	/**
	 * The feature id for the '<em><b>Firstname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON__FIRSTNAME = CONTACT_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Lastname</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON__LASTNAME = CONTACT_FEATURE_COUNT + 1;

	/**
	 * The number of structural features of the '<em>Person</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON_FEATURE_COUNT = CONTACT_FEATURE_COUNT + 2;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON___GET_PARENT = CONTACT___GET_PARENT;

	/**
	 * The number of operations of the '<em>Person</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PERSON_OPERATION_COUNT = CONTACT_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Description</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__DESCRIPTION = CONTACT__DESCRIPTION;

	/**
	 * The feature id for the '<em><b>Hint</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__HINT = CONTACT__HINT;

	/**
	 * The feature id for the '<em><b>Locations</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__LOCATIONS = CONTACT__LOCATIONS;

	/**
	 * The feature id for the '<em><b>Owns</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__OWNS = CONTACT__OWNS;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__PARENT = CONTACT__PARENT;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__NAME = CONTACT_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Employees</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__EMPLOYEES = CONTACT_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Offers</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY__OFFERS = CONTACT_FEATURE_COUNT + 2;

	/**
	 * The number of structural features of the '<em>Company</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY_FEATURE_COUNT = CONTACT_FEATURE_COUNT + 3;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY___GET_PARENT = CONTACT___GET_PARENT;

	/**
	 * The number of operations of the '<em>Company</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COMPANY_OPERATION_COUNT = CONTACT_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB__NAME = TITLED__NAME;

	/**
	 * The feature id for the '<em><b>Employee</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB__EMPLOYEE = TITLED_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Since</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB__SINCE = TITLED_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB__PARENT = TITLED_FEATURE_COUNT + 2;

	/**
	 * The feature id for the '<em><b>Team</b></em>' reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB__TEAM = TITLED_FEATURE_COUNT + 3;

	/**
	 * The number of structural features of the '<em>Job</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB_FEATURE_COUNT = TITLED_FEATURE_COUNT + 4;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB___GET_PARENT = TITLED___GET_PARENT;

	/**
	 * The number of operations of the '<em>Job</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int JOB_OPERATION_COUNT = TITLED_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OFFER__NAME = TITLED__NAME;

	/**
	 * The feature id for the '<em><b>Price</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OFFER__PRICE = TITLED_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OFFER__PARENT = TITLED_FEATURE_COUNT + 1;

	/**
	 * The number of structural features of the '<em>Offer</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OFFER_FEATURE_COUNT = TITLED_FEATURE_COUNT + 2;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OFFER___GET_PARENT = TITLED___GET_PARENT;

	/**
	 * The number of operations of the '<em>Offer</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OFFER_OPERATION_COUNT = TITLED_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PRODUCT__NAME = OFFER__NAME;

	/**
	 * The feature id for the '<em><b>Price</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PRODUCT__PRICE = OFFER__PRICE;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PRODUCT__PARENT = OFFER__PARENT;

	/**
	 * The number of structural features of the '<em>Product</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PRODUCT_FEATURE_COUNT = OFFER_FEATURE_COUNT + 0;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PRODUCT___GET_PARENT = OFFER___GET_PARENT;

	/**
	 * The number of operations of the '<em>Product</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PRODUCT_OPERATION_COUNT = OFFER_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int SERVICE__NAME = OFFER__NAME;

	/**
	 * The feature id for the '<em><b>Price</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int SERVICE__PRICE = OFFER__PRICE;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int SERVICE__PARENT = OFFER__PARENT;

	/**
	 * The number of structural features of the '<em>Service</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int SERVICE_FEATURE_COUNT = OFFER_FEATURE_COUNT + 0;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int SERVICE___GET_PARENT = OFFER___GET_PARENT;

	/**
	 * The number of operations of the '<em>Service</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int SERVICE_OPERATION_COUNT = OFFER_OPERATION_COUNT + 0;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.GoodImpl <em>Good</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.GoodImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getGood()
	 * @generated
	 */
	int GOOD = 12;

	/**
	 * The meta object id for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.PurchaseImpl <em>Purchase</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.PurchaseImpl
	 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getPurchase()
	 * @generated
	 */
	int PURCHASE = 11;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PURCHASE__PARENT = 0;

	/**
	 * The number of structural features of the '<em>Purchase</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PURCHASE_FEATURE_COUNT = 1;

	/**
	 * The operation id for the '<em>Get Offer</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PURCHASE___GET_OFFER = 0;

	/**
	 * The number of operations of the '<em>Purchase</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PURCHASE_OPERATION_COUNT = 1;

	/**
	 * The feature id for the '<em><b>Description</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD__DESCRIPTION = DETAILED__DESCRIPTION;

	/**
	 * The feature id for the '<em><b>Hint</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD__HINT = DETAILED__HINT;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD__PARENT = DETAILED_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Offer</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD__OFFER = DETAILED_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Bought</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD__BOUGHT = DETAILED_FEATURE_COUNT + 2;

	/**
	 * The feature id for the '<em><b>Cost</b></em>' attribute list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD__COST = DETAILED_FEATURE_COUNT + 3;

	/**
	 * The number of structural features of the '<em>Good</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD_FEATURE_COUNT = DETAILED_FEATURE_COUNT + 4;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD___GET_PARENT = DETAILED___GET_PARENT;

	/**
	 * The operation id for the '<em>Get Offer</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD___GET_OFFER = DETAILED_OPERATION_COUNT + 0;

	/**
	 * The number of operations of the '<em>Good</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int GOOD_OPERATION_COUNT = DETAILED_OPERATION_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY__NAME = TITLED__NAME;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY__PARENT = TITLED_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Offer</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY__OFFER = TITLED_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Supported By</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY__SUPPORTED_BY = TITLED_FEATURE_COUNT + 2;

	/**
	 * The number of structural features of the '<em>Activity</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY_FEATURE_COUNT = TITLED_FEATURE_COUNT + 3;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY___GET_PARENT = TITLED___GET_PARENT;

	/**
	 * The operation id for the '<em>Get Offer</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY___GET_OFFER = TITLED_OPERATION_COUNT + 0;

	/**
	 * The number of operations of the '<em>Activity</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ACTIVITY_OPERATION_COUNT = TITLED_OPERATION_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DIRECTORY__NAME = TITLED__NAME;

	/**
	 * The feature id for the '<em><b>Contacts</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DIRECTORY__CONTACTS = TITLED_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Directories</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DIRECTORY__DIRECTORIES = TITLED_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DIRECTORY__PARENT = TITLED_FEATURE_COUNT + 2;

	/**
	 * The number of structural features of the '<em>Directory</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DIRECTORY_FEATURE_COUNT = TITLED_FEATURE_COUNT + 3;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DIRECTORY___GET_PARENT = TITLED___GET_PARENT;

	/**
	 * The number of operations of the '<em>Directory</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DIRECTORY_OPERATION_COUNT = TITLED_OPERATION_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int LOCATION__NAME = TITLED__NAME;

	/**
	 * The feature id for the '<em><b>Value</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int LOCATION__VALUE = TITLED_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Parent</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int LOCATION__PARENT = TITLED_FEATURE_COUNT + 1;

	/**
	 * The number of structural features of the '<em>Location</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int LOCATION_FEATURE_COUNT = TITLED_FEATURE_COUNT + 2;

	/**
	 * The operation id for the '<em>Get Parent</em>' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int LOCATION___GET_PARENT = TITLED___GET_PARENT;

	/**
	 * The number of operations of the '<em>Location</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int LOCATION_OPERATION_COUNT = TITLED_OPERATION_COUNT + 0;


	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact <em>Contact</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Contact</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Contact
	 * @generated
	 */
	EClass getContact();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getLocations <em>Locations</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Locations</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Contact#getLocations()
	 * @see #getContact()
	 * @generated
	 */
	EReference getContact_Locations();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getOwns <em>Owns</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Owns</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Contact#getOwns()
	 * @see #getContact()
	 * @generated
	 */
	EReference getContact_Owns();

	/**
	 * Returns the meta object for the container reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Contact#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the container reference '<em>Parent</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Contact#getParent()
	 * @see #getContact()
	 * @generated
	 */
	EReference getContact_Parent();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Person <em>Person</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Person</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Person
	 * @generated
	 */
	EClass getPerson();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Person#getFirstname <em>Firstname</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Firstname</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Person#getFirstname()
	 * @see #getPerson()
	 * @generated
	 */
	EAttribute getPerson_Firstname();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Person#getLastname <em>Lastname</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Lastname</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Person#getLastname()
	 * @see #getPerson()
	 * @generated
	 */
	EAttribute getPerson_Lastname();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Company <em>Company</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Company</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Company
	 * @generated
	 */
	EClass getCompany();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.dw.dummyworld.Company#getEmployees <em>Employees</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Employees</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Company#getEmployees()
	 * @see #getCompany()
	 * @generated
	 */
	EReference getCompany_Employees();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.dw.dummyworld.Company#getOffers <em>Offers</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Offers</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Company#getOffers()
	 * @see #getCompany()
	 * @generated
	 */
	EReference getCompany_Offers();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory <em>Directory</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Directory</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory
	 * @generated
	 */
	EClass getDirectory();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getContacts <em>Contacts</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Contacts</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory#getContacts()
	 * @see #getDirectory()
	 * @generated
	 */
	EReference getDirectory_Contacts();

	/**
	 * Returns the meta object for the containment reference list '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getDirectories <em>Directories</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Directories</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory#getDirectories()
	 * @see #getDirectory()
	 * @generated
	 */
	EReference getDirectory_Directories();

	/**
	 * Returns the meta object for the container reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Directory#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the container reference '<em>Parent</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Directory#getParent()
	 * @see #getDirectory()
	 * @generated
	 */
	EReference getDirectory_Parent();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Named <em>Named</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Named</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Named
	 * @generated
	 */
	EClass getNamed();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity <em>Activity</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Activity</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Activity
	 * @generated
	 */
	EClass getActivity();

	/**
	 * Returns the meta object for the reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getOffer <em>Offer</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Offer</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Activity#getOffer()
	 * @see #getActivity()
	 * @generated
	 */
	EReference getActivity_Offer();

	/**
	 * Returns the meta object for the reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Activity#getSupportedBy <em>Supported By</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Supported By</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Activity#getSupportedBy()
	 * @see #getActivity()
	 * @generated
	 */
	EReference getActivity_SupportedBy();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Titled <em>Titled</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Titled</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Titled
	 * @generated
	 */
	EClass getTitled();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Titled#getName <em>Name</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Name</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Titled#getName()
	 * @see #getTitled()
	 * @generated
	 */
	EAttribute getTitled_Name();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Location <em>Location</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Location</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Location
	 * @generated
	 */
	EClass getLocation();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getValue <em>Value</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Value</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Location#getValue()
	 * @see #getLocation()
	 * @generated
	 */
	EAttribute getLocation_Value();

	/**
	 * Returns the meta object for the container reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Location#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the container reference '<em>Parent</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Location#getParent()
	 * @see #getLocation()
	 * @generated
	 */
	EReference getLocation_Parent();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Offer <em>Offer</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Offer</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Offer
	 * @generated
	 */
	EClass getOffer();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Offer#getPrice <em>Price</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Price</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Offer#getPrice()
	 * @see #getOffer()
	 * @generated
	 */
	EAttribute getOffer_Price();

	/**
	 * Returns the meta object for the container reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Offer#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the container reference '<em>Parent</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Offer#getParent()
	 * @see #getOffer()
	 * @generated
	 */
	EReference getOffer_Parent();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Job <em>Job</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Job</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Job
	 * @generated
	 */
	EClass getJob();

	/**
	 * Returns the meta object for the reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getEmployee <em>Employee</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Employee</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Job#getEmployee()
	 * @see #getJob()
	 * @generated
	 */
	EReference getJob_Employee();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getSince <em>Since</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Since</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Job#getSince()
	 * @see #getJob()
	 * @generated
	 */
	EAttribute getJob_Since();

	/**
	 * Returns the meta object for the container reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the container reference '<em>Parent</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Job#getParent()
	 * @see #getJob()
	 * @generated
	 */
	EReference getJob_Parent();

	/**
	 * Returns the meta object for the reference list '{@link org.mypsycho.emf.modit.dw.dummyworld.Job#getTeam <em>Team</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference list '<em>Team</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Job#getTeam()
	 * @see #getJob()
	 * @generated
	 */
	EReference getJob_Team();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Product <em>Product</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Product</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Product
	 * @generated
	 */
	EClass getProduct();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Service <em>Service</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Service</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Service
	 * @generated
	 */
	EClass getService();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Good <em>Good</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Good</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Good
	 * @generated
	 */
	EClass getGood();

	/**
	 * Returns the meta object for the reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getOffer <em>Offer</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Offer</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Good#getOffer()
	 * @see #getGood()
	 * @generated
	 */
	EReference getGood_Offer();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getBought <em>Bought</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Bought</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Good#getBought()
	 * @see #getGood()
	 * @generated
	 */
	EAttribute getGood_Bought();

	/**
	 * Returns the meta object for the attribute list '{@link org.mypsycho.emf.modit.dw.dummyworld.Good#getCost <em>Cost</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute list '<em>Cost</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Good#getCost()
	 * @see #getGood()
	 * @generated
	 */
	EAttribute getGood_Cost();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Detailed <em>Detailed</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Detailed</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Detailed
	 * @generated
	 */
	EClass getDetailed();

	/**
	 * Returns the meta object for the attribute '{@link org.mypsycho.emf.modit.dw.dummyworld.Detailed#getDescription <em>Description</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Description</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Detailed#getDescription()
	 * @see #getDetailed()
	 * @generated
	 */
	EAttribute getDetailed_Description();

	/**
	 * Returns the meta object for the reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Detailed#getHint <em>Hint</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Hint</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Detailed#getHint()
	 * @see #getDetailed()
	 * @generated
	 */
	EReference getDetailed_Hint();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.Purchase <em>Purchase</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Purchase</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Purchase
	 * @generated
	 */
	EClass getPurchase();

	/**
	 * Returns the meta object for the container reference '{@link org.mypsycho.emf.modit.dw.dummyworld.Purchase#getParent <em>Parent</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the container reference '<em>Parent</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Purchase#getParent()
	 * @see #getPurchase()
	 * @generated
	 */
	EReference getPurchase_Parent();

	/**
	 * Returns the meta object for the '{@link org.mypsycho.emf.modit.dw.dummyworld.Purchase#getOffer() <em>Get Offer</em>}' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the '<em>Get Offer</em>' operation.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.Purchase#getOffer()
	 * @generated
	 */
	EOperation getPurchase__GetOffer();

	/**
	 * Returns the meta object for class '{@link org.mypsycho.emf.modit.dw.dummyworld.WObject <em>WObject</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>WObject</em>'.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.WObject
	 * @generated
	 */
	EClass getWObject();

	/**
	 * Returns the meta object for the '{@link org.mypsycho.emf.modit.dw.dummyworld.WObject#getParent() <em>Get Parent</em>}' operation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the '<em>Get Parent</em>' operation.
	 * @see org.mypsycho.emf.modit.dw.dummyworld.WObject#getParent()
	 * @generated
	 */
	EOperation getWObject__GetParent();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	DwFactory getDwFactory();

	/**
	 * <!-- begin-user-doc -->
	 * Defines literals for the meta objects that represent
	 * <ul>
	 *   <li>each class,</li>
	 *   <li>each feature of each class,</li>
	 *   <li>each operation of each class,</li>
	 *   <li>each enum,</li>
	 *   <li>and each data type</li>
	 * </ul>
	 * <!-- end-user-doc -->
	 * @generated
	 */
	interface Literals {
		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl <em>Contact</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getContact()
		 * @generated
		 */
		EClass CONTACT = eINSTANCE.getContact();

		/**
		 * The meta object literal for the '<em><b>Locations</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference CONTACT__LOCATIONS = eINSTANCE.getContact_Locations();

		/**
		 * The meta object literal for the '<em><b>Owns</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference CONTACT__OWNS = eINSTANCE.getContact_Owns();

		/**
		 * The meta object literal for the '<em><b>Parent</b></em>' container reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference CONTACT__PARENT = eINSTANCE.getContact_Parent();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.PersonImpl <em>Person</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.PersonImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getPerson()
		 * @generated
		 */
		EClass PERSON = eINSTANCE.getPerson();

		/**
		 * The meta object literal for the '<em><b>Firstname</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute PERSON__FIRSTNAME = eINSTANCE.getPerson_Firstname();

		/**
		 * The meta object literal for the '<em><b>Lastname</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute PERSON__LASTNAME = eINSTANCE.getPerson_Lastname();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.CompanyImpl <em>Company</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.CompanyImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getCompany()
		 * @generated
		 */
		EClass COMPANY = eINSTANCE.getCompany();

		/**
		 * The meta object literal for the '<em><b>Employees</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference COMPANY__EMPLOYEES = eINSTANCE.getCompany_Employees();

		/**
		 * The meta object literal for the '<em><b>Offers</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference COMPANY__OFFERS = eINSTANCE.getCompany_Offers();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.DirectoryImpl <em>Directory</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DirectoryImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getDirectory()
		 * @generated
		 */
		EClass DIRECTORY = eINSTANCE.getDirectory();

		/**
		 * The meta object literal for the '<em><b>Contacts</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference DIRECTORY__CONTACTS = eINSTANCE.getDirectory_Contacts();

		/**
		 * The meta object literal for the '<em><b>Directories</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference DIRECTORY__DIRECTORIES = eINSTANCE.getDirectory_Directories();

		/**
		 * The meta object literal for the '<em><b>Parent</b></em>' container reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference DIRECTORY__PARENT = eINSTANCE.getDirectory_Parent();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.Named <em>Named</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.Named
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getNamed()
		 * @generated
		 */
		EClass NAMED = eINSTANCE.getNamed();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ActivityImpl <em>Activity</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ActivityImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getActivity()
		 * @generated
		 */
		EClass ACTIVITY = eINSTANCE.getActivity();

		/**
		 * The meta object literal for the '<em><b>Offer</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference ACTIVITY__OFFER = eINSTANCE.getActivity_Offer();

		/**
		 * The meta object literal for the '<em><b>Supported By</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference ACTIVITY__SUPPORTED_BY = eINSTANCE.getActivity_SupportedBy();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.TitledImpl <em>Titled</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.TitledImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getTitled()
		 * @generated
		 */
		EClass TITLED = eINSTANCE.getTitled();

		/**
		 * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute TITLED__NAME = eINSTANCE.getTitled_Name();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.LocationImpl <em>Location</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.LocationImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getLocation()
		 * @generated
		 */
		EClass LOCATION = eINSTANCE.getLocation();

		/**
		 * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute LOCATION__VALUE = eINSTANCE.getLocation_Value();

		/**
		 * The meta object literal for the '<em><b>Parent</b></em>' container reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference LOCATION__PARENT = eINSTANCE.getLocation_Parent();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.OfferImpl <em>Offer</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.OfferImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getOffer()
		 * @generated
		 */
		EClass OFFER = eINSTANCE.getOffer();

		/**
		 * The meta object literal for the '<em><b>Price</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute OFFER__PRICE = eINSTANCE.getOffer_Price();

		/**
		 * The meta object literal for the '<em><b>Parent</b></em>' container reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference OFFER__PARENT = eINSTANCE.getOffer_Parent();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl <em>Job</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getJob()
		 * @generated
		 */
		EClass JOB = eINSTANCE.getJob();

		/**
		 * The meta object literal for the '<em><b>Employee</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference JOB__EMPLOYEE = eINSTANCE.getJob_Employee();

		/**
		 * The meta object literal for the '<em><b>Since</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute JOB__SINCE = eINSTANCE.getJob_Since();

		/**
		 * The meta object literal for the '<em><b>Parent</b></em>' container reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference JOB__PARENT = eINSTANCE.getJob_Parent();

		/**
		 * The meta object literal for the '<em><b>Team</b></em>' reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference JOB__TEAM = eINSTANCE.getJob_Team();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ProductImpl <em>Product</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ProductImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getProduct()
		 * @generated
		 */
		EClass PRODUCT = eINSTANCE.getProduct();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ServiceImpl <em>Service</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.ServiceImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getService()
		 * @generated
		 */
		EClass SERVICE = eINSTANCE.getService();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.GoodImpl <em>Good</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.GoodImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getGood()
		 * @generated
		 */
		EClass GOOD = eINSTANCE.getGood();

		/**
		 * The meta object literal for the '<em><b>Offer</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference GOOD__OFFER = eINSTANCE.getGood_Offer();

		/**
		 * The meta object literal for the '<em><b>Bought</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute GOOD__BOUGHT = eINSTANCE.getGood_Bought();

		/**
		 * The meta object literal for the '<em><b>Cost</b></em>' attribute list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute GOOD__COST = eINSTANCE.getGood_Cost();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.DetailedImpl <em>Detailed</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DetailedImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getDetailed()
		 * @generated
		 */
		EClass DETAILED = eINSTANCE.getDetailed();

		/**
		 * The meta object literal for the '<em><b>Description</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute DETAILED__DESCRIPTION = eINSTANCE.getDetailed_Description();

		/**
		 * The meta object literal for the '<em><b>Hint</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference DETAILED__HINT = eINSTANCE.getDetailed_Hint();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.PurchaseImpl <em>Purchase</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.PurchaseImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getPurchase()
		 * @generated
		 */
		EClass PURCHASE = eINSTANCE.getPurchase();

		/**
		 * The meta object literal for the '<em><b>Parent</b></em>' container reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference PURCHASE__PARENT = eINSTANCE.getPurchase_Parent();

		/**
		 * The meta object literal for the '<em><b>Get Offer</b></em>' operation.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EOperation PURCHASE___GET_OFFER = eINSTANCE.getPurchase__GetOffer();

		/**
		 * The meta object literal for the '{@link org.mypsycho.emf.modit.dw.dummyworld.impl.WObjectImpl <em>WObject</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.WObjectImpl
		 * @see org.mypsycho.emf.modit.dw.dummyworld.impl.DwPackageImpl#getWObject()
		 * @generated
		 */
		EClass WOBJECT = eINSTANCE.getWObject();

		/**
		 * The meta object literal for the '<em><b>Get Parent</b></em>' operation.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EOperation WOBJECT___GET_PARENT = eINSTANCE.getWObject__GetParent();

	}

} //DwPackage
