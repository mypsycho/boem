/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.impl;

import java.util.Collection;
import java.util.Date;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.mypsycho.emf.modit.dw.dummyworld.Company;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.dw.dummyworld.Job;
import org.mypsycho.emf.modit.dw.dummyworld.JobType;
import org.mypsycho.emf.modit.dw.dummyworld.Person;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Job</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl#getEmployee <em>Employee</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl#getSince <em>Since</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl#getParent <em>Parent</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl#getTeam <em>Team</em>}</li>
 *   <li>{@link org.mypsycho.emf.modit.dw.dummyworld.impl.JobImpl#getType <em>Type</em>}</li>
 * </ul>
 *
 * @generated
 */
public class JobImpl extends TitledImpl implements Job {
	/**
	 * The cached value of the '{@link #getEmployee() <em>Employee</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getEmployee()
	 * @generated
	 * @ordered
	 */
	protected Person employee;

	/**
	 * The default value of the '{@link #getSince() <em>Since</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getSince()
	 * @generated
	 * @ordered
	 */
	protected static final Date SINCE_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getSince() <em>Since</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getSince()
	 * @generated
	 * @ordered
	 */
	protected Date since = SINCE_EDEFAULT;

	/**
	 * The cached value of the '{@link #getTeam() <em>Team</em>}' reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getTeam()
	 * @generated
	 * @ordered
	 */
	protected EList<Job> team;

	/**
	 * The default value of the '{@link #getType() <em>Type</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getType()
	 * @generated
	 * @ordered
	 */
	protected static final JobType TYPE_EDEFAULT = JobType.INTERNAL;

	/**
	 * The cached value of the '{@link #getType() <em>Type</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getType()
	 * @generated
	 * @ordered
	 */
	protected JobType type = TYPE_EDEFAULT;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected JobImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return DwPackage.Literals.JOB;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Person getEmployee() {
		if (employee != null && employee.eIsProxy()) {
			InternalEObject oldEmployee = (InternalEObject)employee;
			employee = (Person)eResolveProxy(oldEmployee);
			if (employee != oldEmployee) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, DwPackage.JOB__EMPLOYEE, oldEmployee, employee));
			}
		}
		return employee;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Person basicGetEmployee() {
		return employee;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setEmployee(Person newEmployee) {
		Person oldEmployee = employee;
		employee = newEmployee;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.JOB__EMPLOYEE, oldEmployee, employee));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Date getSince() {
		return since;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setSince(Date newSince) {
		Date oldSince = since;
		since = newSince;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.JOB__SINCE, oldSince, since));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Company getParent() {
		if (eContainerFeatureID() != DwPackage.JOB__PARENT) return null;
		return (Company)eInternalContainer();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetParent(Company newParent, NotificationChain msgs) {
		msgs = eBasicSetContainer((InternalEObject)newParent, DwPackage.JOB__PARENT, msgs);
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setParent(Company newParent) {
		if (newParent != eInternalContainer() || (eContainerFeatureID() != DwPackage.JOB__PARENT && newParent != null)) {
			if (EcoreUtil.isAncestor(this, newParent))
				throw new IllegalArgumentException("Recursive containment not allowed for " + toString()); //$NON-NLS-1$
			NotificationChain msgs = null;
			if (eInternalContainer() != null)
				msgs = eBasicRemoveFromContainer(msgs);
			if (newParent != null)
				msgs = ((InternalEObject)newParent).eInverseAdd(this, DwPackage.COMPANY__EMPLOYEES, Company.class, msgs);
			msgs = basicSetParent(newParent, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.JOB__PARENT, newParent, newParent));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EList<Job> getTeam() {
		if (team == null) {
			team = new EObjectResolvingEList<Job>(Job.class, this, DwPackage.JOB__TEAM);
		}
		return team;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public JobType getType() {
		return type;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setType(JobType newType) {
		JobType oldType = type;
		type = newType == null ? TYPE_EDEFAULT : newType;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, DwPackage.JOB__TYPE, oldType, type));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case DwPackage.JOB__PARENT:
				if (eInternalContainer() != null)
					msgs = eBasicRemoveFromContainer(msgs);
				return basicSetParent((Company)otherEnd, msgs);
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
			case DwPackage.JOB__PARENT:
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
			case DwPackage.JOB__PARENT:
				return eInternalContainer().eInverseRemove(this, DwPackage.COMPANY__EMPLOYEES, Company.class, msgs);
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
			case DwPackage.JOB__EMPLOYEE:
				if (resolve) return getEmployee();
				return basicGetEmployee();
			case DwPackage.JOB__SINCE:
				return getSince();
			case DwPackage.JOB__PARENT:
				return getParent();
			case DwPackage.JOB__TEAM:
				return getTeam();
			case DwPackage.JOB__TYPE:
				return getType();
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
			case DwPackage.JOB__EMPLOYEE:
				setEmployee((Person)newValue);
				return;
			case DwPackage.JOB__SINCE:
				setSince((Date)newValue);
				return;
			case DwPackage.JOB__PARENT:
				setParent((Company)newValue);
				return;
			case DwPackage.JOB__TEAM:
				getTeam().clear();
				getTeam().addAll((Collection<? extends Job>)newValue);
				return;
			case DwPackage.JOB__TYPE:
				setType((JobType)newValue);
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
			case DwPackage.JOB__EMPLOYEE:
				setEmployee((Person)null);
				return;
			case DwPackage.JOB__SINCE:
				setSince(SINCE_EDEFAULT);
				return;
			case DwPackage.JOB__PARENT:
				setParent((Company)null);
				return;
			case DwPackage.JOB__TEAM:
				getTeam().clear();
				return;
			case DwPackage.JOB__TYPE:
				setType(TYPE_EDEFAULT);
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
			case DwPackage.JOB__EMPLOYEE:
				return employee != null;
			case DwPackage.JOB__SINCE:
				return SINCE_EDEFAULT == null ? since != null : !SINCE_EDEFAULT.equals(since);
			case DwPackage.JOB__PARENT:
				return getParent() != null;
			case DwPackage.JOB__TEAM:
				return team != null && !team.isEmpty();
			case DwPackage.JOB__TYPE:
				return type != TYPE_EDEFAULT;
		}
		return super.eIsSet(featureID);
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
		result.append(" (since: "); //$NON-NLS-1$
		result.append(since);
		result.append(", type: "); //$NON-NLS-1$
		result.append(type);
		result.append(')');
		return result.toString();
	}

} //JobImpl
