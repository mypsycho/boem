/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.impl;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

import org.mypsycho.emf.modit.dw.dummyworld.Contact;
import org.mypsycho.emf.modit.dw.dummyworld.Directory;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Directory</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.DirectoryImpl#getContacts <em>Contacts</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.DirectoryImpl#getDirectories <em>Directories</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.DirectoryImpl#getParent <em>Parent</em>}</li>
 * </ul>
 *
 * @generated
 */
public class DirectoryImpl extends TitledImpl implements Directory {
	/**
	 * The cached value of the '{@link #getContacts() <em>Contacts</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getContacts()
	 * @generated
	 * @ordered
	 */
	protected EList<Contact> contacts;

	/**
	 * The cached value of the '{@link #getDirectories() <em>Directories</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getDirectories()
	 * @generated
	 * @ordered
	 */
	protected EList<Directory> directories;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected DirectoryImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return DwPackage.Literals.DIRECTORY;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EList<Contact> getContacts() {
		if (contacts == null) {
			contacts = new EObjectContainmentWithInverseEList<Contact>(Contact.class, this, DwPackage.DIRECTORY__CONTACTS, DwPackage.CONTACT__PARENT);
		}
		return contacts;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EList<Directory> getDirectories() {
		if (directories == null) {
			directories = new EObjectContainmentWithInverseEList<Directory>(Directory.class, this, DwPackage.DIRECTORY__DIRECTORIES, DwPackage.DIRECTORY__PARENT);
		}
		return directories;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Directory getParent() {
		if (eContainerFeatureID() != DwPackage.DIRECTORY__PARENT) return null;
		return (Directory)eInternalContainer();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetParent(Directory newParent, NotificationChain msgs) {
		msgs = eBasicSetContainer((InternalEObject)newParent, DwPackage.DIRECTORY__PARENT, msgs);
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setParent(Directory newParent) {
		if (newParent != eInternalContainer() || (eContainerFeatureID() != DwPackage.DIRECTORY__PARENT && newParent != null)) {
			if (EcoreUtil.isAncestor(this, newParent))
				throw new IllegalArgumentException("Recursive containment not allowed for " + toString()); //$NON-NLS-1$
			NotificationChain msgs = null;
			if (eInternalContainer() != null)
				msgs = eBasicRemoveFromContainer(msgs);
			if (newParent != null)
				msgs = ((InternalEObject)newParent).eInverseAdd(this, DwPackage.DIRECTORY__DIRECTORIES, Directory.class, msgs);
			msgs = basicSetParent(newParent, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.DIRECTORY__PARENT, newParent, newParent));
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
			case DwPackage.DIRECTORY__CONTACTS:
				return ((InternalEList<InternalEObject>)(InternalEList<?>)getContacts()).basicAdd(otherEnd, msgs);
			case DwPackage.DIRECTORY__DIRECTORIES:
				return ((InternalEList<InternalEObject>)(InternalEList<?>)getDirectories()).basicAdd(otherEnd, msgs);
			case DwPackage.DIRECTORY__PARENT:
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
			case DwPackage.DIRECTORY__CONTACTS:
				return ((InternalEList<?>)getContacts()).basicRemove(otherEnd, msgs);
			case DwPackage.DIRECTORY__DIRECTORIES:
				return ((InternalEList<?>)getDirectories()).basicRemove(otherEnd, msgs);
			case DwPackage.DIRECTORY__PARENT:
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
			case DwPackage.DIRECTORY__PARENT:
				return eInternalContainer().eInverseRemove(this, DwPackage.DIRECTORY__DIRECTORIES, Directory.class, msgs);
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
			case DwPackage.DIRECTORY__CONTACTS:
				return getContacts();
			case DwPackage.DIRECTORY__DIRECTORIES:
				return getDirectories();
			case DwPackage.DIRECTORY__PARENT:
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
			case DwPackage.DIRECTORY__CONTACTS:
				getContacts().clear();
				getContacts().addAll((Collection<? extends Contact>)newValue);
				return;
			case DwPackage.DIRECTORY__DIRECTORIES:
				getDirectories().clear();
				getDirectories().addAll((Collection<? extends Directory>)newValue);
				return;
			case DwPackage.DIRECTORY__PARENT:
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
			case DwPackage.DIRECTORY__CONTACTS:
				getContacts().clear();
				return;
			case DwPackage.DIRECTORY__DIRECTORIES:
				getDirectories().clear();
				return;
			case DwPackage.DIRECTORY__PARENT:
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
			case DwPackage.DIRECTORY__CONTACTS:
				return contacts != null && !contacts.isEmpty();
			case DwPackage.DIRECTORY__DIRECTORIES:
				return directories != null && !directories.isEmpty();
			case DwPackage.DIRECTORY__PARENT:
				return getParent() != null;
		}
		return super.eIsSet(featureID);
	}

} //DirectoryImpl
