/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.impl;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.emf.ecore.util.EcoreUtil;
import org.mypsycho.emf.modit.dw.dummyworld.Activity;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.dw.dummyworld.Job;
import org.mypsycho.emf.modit.dw.dummyworld.Service;
import org.mypsycho.emf.modit.dw.dummyworld.Subscription;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Activity</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ActivityImpl#getParent <em>Parent</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ActivityImpl#getSupportedBy <em>Supported By</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ActivityImpl#getCustomer <em>Customer</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ActivityImpl extends DetailedImpl implements Activity {
	/**
	 * The cached value of the '{@link #getSupportedBy() <em>Supported By</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getSupportedBy()
	 * @generated
	 * @ordered
	 */
	protected Job supportedBy;

	/**
	 * The cached value of the '{@link #getCustomer() <em>Customer</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getCustomer()
	 * @generated
	 * @ordered
	 */
	protected Subscription customer;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected ActivityImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return DwPackage.Literals.ACTIVITY;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Service getParent() {
		if (eContainerFeatureID() != DwPackage.ACTIVITY__PARENT) return null;
		return (Service)eInternalContainer();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetParent(Service newParent, NotificationChain msgs) {
		msgs = eBasicSetContainer((InternalEObject)newParent, DwPackage.ACTIVITY__PARENT, msgs);
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setParent(Service newParent) {
		if (newParent != eInternalContainer() || (eContainerFeatureID() != DwPackage.ACTIVITY__PARENT && newParent != null)) {
			if (EcoreUtil.isAncestor(this, newParent))
				throw new IllegalArgumentException("Recursive containment not allowed for " + toString()); //$NON-NLS-1$
			NotificationChain msgs = null;
			if (eInternalContainer() != null)
				msgs = eBasicRemoveFromContainer(msgs);
			if (newParent != null)
				msgs = ((InternalEObject)newParent).eInverseAdd(this, DwPackage.SERVICE__ACTIVITIES, Service.class, msgs);
			msgs = basicSetParent(newParent, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.ACTIVITY__PARENT, newParent, newParent));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Job getSupportedBy() {
		if (supportedBy != null && supportedBy.eIsProxy()) {
			InternalEObject oldSupportedBy = (InternalEObject)supportedBy;
			supportedBy = (Job)eResolveProxy(oldSupportedBy);
			if (supportedBy != oldSupportedBy) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, DwPackage.ACTIVITY__SUPPORTED_BY, oldSupportedBy, supportedBy));
			}
		}
		return supportedBy;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Job basicGetSupportedBy() {
		return supportedBy;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setSupportedBy(Job newSupportedBy) {
		Job oldSupportedBy = supportedBy;
		supportedBy = newSupportedBy;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.ACTIVITY__SUPPORTED_BY, oldSupportedBy, supportedBy));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Subscription getCustomer() {
		if (customer != null && customer.eIsProxy()) {
			InternalEObject oldCustomer = (InternalEObject)customer;
			customer = (Subscription)eResolveProxy(oldCustomer);
			if (customer != oldCustomer) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, DwPackage.ACTIVITY__CUSTOMER, oldCustomer, customer));
			}
		}
		return customer;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Subscription basicGetCustomer() {
		return customer;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetCustomer(Subscription newCustomer, NotificationChain msgs) {
		Subscription oldCustomer = customer;
		customer = newCustomer;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, DwPackage.ACTIVITY__CUSTOMER, oldCustomer, newCustomer);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setCustomer(Subscription newCustomer) {
		if (newCustomer != customer) {
			NotificationChain msgs = null;
			if (customer != null)
				msgs = ((InternalEObject)customer).eInverseRemove(this, DwPackage.SUBSCRIPTION__ACTIVITY, Subscription.class, msgs);
			if (newCustomer != null)
				msgs = ((InternalEObject)newCustomer).eInverseAdd(this, DwPackage.SUBSCRIPTION__ACTIVITY, Subscription.class, msgs);
			msgs = basicSetCustomer(newCustomer, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.ACTIVITY__CUSTOMER, newCustomer, newCustomer));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case DwPackage.ACTIVITY__PARENT:
				if (eInternalContainer() != null)
					msgs = eBasicRemoveFromContainer(msgs);
				return basicSetParent((Service)otherEnd, msgs);
			case DwPackage.ACTIVITY__CUSTOMER:
				if (customer != null)
					msgs = ((InternalEObject)customer).eInverseRemove(this, DwPackage.SUBSCRIPTION__ACTIVITY, Subscription.class, msgs);
				return basicSetCustomer((Subscription)otherEnd, msgs);
		}
		return super.eInverseAdd(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case DwPackage.ACTIVITY__PARENT:
				return basicSetParent(null, msgs);
			case DwPackage.ACTIVITY__CUSTOMER:
				return basicSetCustomer(null, msgs);
		}
		return super.eInverseRemove(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
		switch (eContainerFeatureID()) {
			case DwPackage.ACTIVITY__PARENT:
				return eInternalContainer().eInverseRemove(this, DwPackage.SERVICE__ACTIVITIES, Service.class, msgs);
		}
		return super.eBasicRemoveFromContainerFeature(msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case DwPackage.ACTIVITY__PARENT:
				return getParent();
			case DwPackage.ACTIVITY__SUPPORTED_BY:
				if (resolve) return getSupportedBy();
				return basicGetSupportedBy();
			case DwPackage.ACTIVITY__CUSTOMER:
				if (resolve) return getCustomer();
				return basicGetCustomer();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case DwPackage.ACTIVITY__PARENT:
				setParent((Service)newValue);
				return;
			case DwPackage.ACTIVITY__SUPPORTED_BY:
				setSupportedBy((Job)newValue);
				return;
			case DwPackage.ACTIVITY__CUSTOMER:
				setCustomer((Subscription)newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case DwPackage.ACTIVITY__PARENT:
				setParent((Service)null);
				return;
			case DwPackage.ACTIVITY__SUPPORTED_BY:
				setSupportedBy((Job)null);
				return;
			case DwPackage.ACTIVITY__CUSTOMER:
				setCustomer((Subscription)null);
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case DwPackage.ACTIVITY__PARENT:
				return getParent() != null;
			case DwPackage.ACTIVITY__SUPPORTED_BY:
				return supportedBy != null;
			case DwPackage.ACTIVITY__CUSTOMER:
				return customer != null;
		}
		return super.eIsSet(featureID);
	}

} //ActivityImpl
