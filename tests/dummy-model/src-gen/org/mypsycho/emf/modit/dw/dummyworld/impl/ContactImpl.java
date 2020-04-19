/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.impl;

import java.util.Collection;

import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.mypsycho.emf.modit.dw.dummyworld.Contact;
import org.mypsycho.emf.modit.dw.dummyworld.Detailed;
import org.mypsycho.emf.modit.dw.dummyworld.Directory;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.dw.dummyworld.Location;
import org.mypsycho.emf.modit.dw.dummyworld.Purchase;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Contact</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl#getDescription <em>Description</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl#getHint <em>Hint</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl#getLocations <em>Locations</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl#getOwns <em>Owns</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.ContactImpl#getParent <em>Parent</em>}</li>
 * </ul>
 *
 * @generated
 */
public abstract class ContactImpl extends WObjectImpl implements Contact {
	/**
	 * The default value of the '{@link #getDescription() <em>Description</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getDescription()
	 * @generated
	 * @ordered
	 */
	protected static final String DESCRIPTION_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getDescription() <em>Description</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getDescription()
	 * @generated
	 * @ordered
	 */
	protected String description = DESCRIPTION_EDEFAULT;

	/**
	 * The cached value of the '{@link #getHint() <em>Hint</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getHint()
	 * @generated
	 * @ordered
	 */
	protected Map.Entry<String, String> hint;

	/**
	 * The cached value of the '{@link #getLocations() <em>Locations</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getLocations()
	 * @generated
	 * @ordered
	 */
	protected EList<Location> locations;

	/**
	 * The cached value of the '{@link #getOwns() <em>Owns</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getOwns()
	 * @generated
	 * @ordered
	 */
	protected EList<Purchase> owns;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected ContactImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return DwPackage.Literals.CONTACT;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getDescription() {
		return description;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setDescription(String newDescription) {
		String oldDescription = description;
		description = newDescription;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.CONTACT__DESCRIPTION, oldDescription, description));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public Map.Entry<String, String> getHint() {
		if (hint != null && ((EObject)hint).eIsProxy()) {
			InternalEObject oldHint = (InternalEObject)hint;
			hint = (Map.Entry<String, String>)eResolveProxy(oldHint);
			if (hint != oldHint) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, DwPackage.CONTACT__HINT, oldHint, hint));
			}
		}
		return hint;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Map.Entry<String, String> basicGetHint() {
		return hint;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setHint(Map.Entry<String, String> newHint) {
		Map.Entry<String, String> oldHint = hint;
		hint = newHint;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.CONTACT__HINT, oldHint, hint));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EList<Location> getLocations() {
		if (locations == null) {
			locations = new EObjectContainmentWithInverseEList<Location>(Location.class, this, DwPackage.CONTACT__LOCATIONS, DwPackage.LOCATION__PARENT);
		}
		return locations;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EList<Purchase> getOwns() {
		if (owns == null) {
			owns = new EObjectContainmentWithInverseEList<Purchase>(Purchase.class, this, DwPackage.CONTACT__OWNS, DwPackage.PURCHASE__PARENT);
		}
		return owns;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Directory getParent() {
		if (eContainerFeatureID() != DwPackage.CONTACT__PARENT) return null;
		return (Directory)eInternalContainer();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetParent(Directory newParent, NotificationChain msgs) {
		msgs = eBasicSetContainer((InternalEObject)newParent, DwPackage.CONTACT__PARENT, msgs);
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setParent(Directory newParent) {
		if (newParent != eInternalContainer() || (eContainerFeatureID() != DwPackage.CONTACT__PARENT && newParent != null)) {
			if (EcoreUtil.isAncestor(this, newParent))
				throw new IllegalArgumentException("Recursive containment not allowed for " + toString()); //$NON-NLS-1$
			NotificationChain msgs = null;
			if (eInternalContainer() != null)
				msgs = eBasicRemoveFromContainer(msgs);
			if (newParent != null)
				msgs = ((InternalEObject)newParent).eInverseAdd(this, DwPackage.DIRECTORY__CONTACTS, Directory.class, msgs);
			msgs = basicSetParent(newParent, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.CONTACT__PARENT, newParent, newParent));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case DwPackage.CONTACT__LOCATIONS:
				return ((InternalEList<InternalEObject>)(InternalEList<?>)getLocations()).basicAdd(otherEnd, msgs);
			case DwPackage.CONTACT__OWNS:
				return ((InternalEList<InternalEObject>)(InternalEList<?>)getOwns()).basicAdd(otherEnd, msgs);
			case DwPackage.CONTACT__PARENT:
				if (eInternalContainer() != null)
					msgs = eBasicRemoveFromContainer(msgs);
				return basicSetParent((Directory)otherEnd, msgs);
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
			case DwPackage.CONTACT__LOCATIONS:
				return ((InternalEList<?>)getLocations()).basicRemove(otherEnd, msgs);
			case DwPackage.CONTACT__OWNS:
				return ((InternalEList<?>)getOwns()).basicRemove(otherEnd, msgs);
			case DwPackage.CONTACT__PARENT:
				return basicSetParent(null, msgs);
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
			case DwPackage.CONTACT__PARENT:
				return eInternalContainer().eInverseRemove(this, DwPackage.DIRECTORY__CONTACTS, Directory.class, msgs);
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
			case DwPackage.CONTACT__DESCRIPTION:
				return getDescription();
			case DwPackage.CONTACT__HINT:
				if (resolve) return getHint();
				return basicGetHint();
			case DwPackage.CONTACT__LOCATIONS:
				return getLocations();
			case DwPackage.CONTACT__OWNS:
				return getOwns();
			case DwPackage.CONTACT__PARENT:
				return getParent();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case DwPackage.CONTACT__DESCRIPTION:
				setDescription((String)newValue);
				return;
			case DwPackage.CONTACT__HINT:
				setHint((Map.Entry<String, String>)newValue);
				return;
			case DwPackage.CONTACT__LOCATIONS:
				getLocations().clear();
				getLocations().addAll((Collection<? extends Location>)newValue);
				return;
			case DwPackage.CONTACT__OWNS:
				getOwns().clear();
				getOwns().addAll((Collection<? extends Purchase>)newValue);
				return;
			case DwPackage.CONTACT__PARENT:
				setParent((Directory)newValue);
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
			case DwPackage.CONTACT__DESCRIPTION:
				setDescription(DESCRIPTION_EDEFAULT);
				return;
			case DwPackage.CONTACT__HINT:
				setHint((Map.Entry<String, String>)null);
				return;
			case DwPackage.CONTACT__LOCATIONS:
				getLocations().clear();
				return;
			case DwPackage.CONTACT__OWNS:
				getOwns().clear();
				return;
			case DwPackage.CONTACT__PARENT:
				setParent((Directory)null);
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
			case DwPackage.CONTACT__DESCRIPTION:
				return DESCRIPTION_EDEFAULT == null ? description != null : !DESCRIPTION_EDEFAULT.equals(description);
			case DwPackage.CONTACT__HINT:
				return hint != null;
			case DwPackage.CONTACT__LOCATIONS:
				return locations != null && !locations.isEmpty();
			case DwPackage.CONTACT__OWNS:
				return owns != null && !owns.isEmpty();
			case DwPackage.CONTACT__PARENT:
				return getParent() != null;
		}
		return super.eIsSet(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
		if (baseClass == Detailed.class) {
			switch (derivedFeatureID) {
				case DwPackage.CONTACT__DESCRIPTION: return DwPackage.DETAILED__DESCRIPTION;
				case DwPackage.CONTACT__HINT: return DwPackage.DETAILED__HINT;
				default: return -1;
			}
		}
		return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
		if (baseClass == Detailed.class) {
			switch (baseFeatureID) {
				case DwPackage.DETAILED__DESCRIPTION: return DwPackage.CONTACT__DESCRIPTION;
				case DwPackage.DETAILED__HINT: return DwPackage.CONTACT__HINT;
				default: return -1;
			}
		}
		return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String toString() {
		if (eIsProxy()) return super.toString();

		StringBuilder result = new StringBuilder(super.toString());
		result.append(" (description: "); //$NON-NLS-1$
		result.append(description);
		result.append(')');
		return result.toString();
	}

} //ContactImpl
