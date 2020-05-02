/**
 */
package org.mypsycho.emf.modit.dw.dummyworld.provider;


import java.util.Collection;
import java.util.List;

import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.ViewerNotification;
import org.mypsycho.emf.modit.dw.dummyworld.Contact;
import org.mypsycho.emf.modit.dw.dummyworld.DwFactory;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;

/**
 * This is the item provider adapter for a {@link org.mypsycho.emf.modit.dw.dummyworld.Contact} object.
 * <!-- begin-user-doc -->
 * <!-- end-user-doc -->
 * @generated
 */
public class ContactItemProvider 
	extends WObjectItemProvider {
	/**
	 * This constructs an instance from a factory and a notifier.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ContactItemProvider(AdapterFactory adapterFactory) {
		super(adapterFactory);
	}

	/**
	 * This returns the property descriptors for the adapted class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
		if (itemPropertyDescriptors == null) {
			super.getPropertyDescriptors(object);

			addDescriptionPropertyDescriptor(object);
			addHintsPropertyDescriptor(object);
		}
		return itemPropertyDescriptors;
	}

	/**
	 * This adds a property descriptor for the Description feature.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected void addDescriptionPropertyDescriptor(Object object) {
		itemPropertyDescriptors.add
			(createItemPropertyDescriptor
				(((ComposeableAdapterFactory)adapterFactory).getRootAdapterFactory(),
				 getResourceLocator(),
				 getString("_UI_Detailed_description_feature"), //$NON-NLS-1$
				 getString("_UI_PropertyDescriptor_description", "_UI_Detailed_description_feature", "_UI_Detailed_type"), //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
				 DwPackage.Literals.DETAILED__DESCRIPTION,
				 true,
				 true,
				 false,
				 ItemPropertyDescriptor.GENERIC_VALUE_IMAGE,
				 getString("_UI_CommentsPropertyCategory"), //$NON-NLS-1$
				 null));
	}

	/**
	 * This adds a property descriptor for the Hints feature.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected void addHintsPropertyDescriptor(Object object) {
		itemPropertyDescriptors.add
			(createItemPropertyDescriptor
				(((ComposeableAdapterFactory)adapterFactory).getRootAdapterFactory(),
				 getResourceLocator(),
				 getString("_UI_Detailed_hints_feature"), //$NON-NLS-1$
				 getString("_UI_PropertyDescriptor_description", "_UI_Detailed_hints_feature", "_UI_Detailed_type"), //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
				 DwPackage.Literals.DETAILED__HINTS,
				 true,
				 false,
				 true,
				 null,
				 getString("_UI_CommentsPropertyCategory"), //$NON-NLS-1$
				 null));
	}

	/**
	 * This specifies how to implement {@link #getChildren} and is used to deduce an appropriate feature for an
	 * {@link org.eclipse.emf.edit.command.AddCommand}, {@link org.eclipse.emf.edit.command.RemoveCommand} or
	 * {@link org.eclipse.emf.edit.command.MoveCommand} in {@link #createCommand}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Collection<? extends EStructuralFeature> getChildrenFeatures(Object object) {
		if (childrenFeatures == null) {
			super.getChildrenFeatures(object);
			childrenFeatures.add(DwPackage.Literals.CONTACT__LOCATIONS);
			childrenFeatures.add(DwPackage.Literals.CONTACT__OWNS);
		}
		return childrenFeatures;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EStructuralFeature getChildFeature(Object object, Object child) {
		// Check the type of the specified child object and return the proper feature to use for
		// adding (see {@link AddCommand}) it as a child.

		return super.getChildFeature(object, child);
	}

	/**
	 * This returns the label text for the adapted class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String getText(Object object) {
		String label = crop(((Contact)object).getDescription());
		return label == null || label.length() == 0 ?
			getString("_UI_Contact_type") : //$NON-NLS-1$
			getString("_UI_Contact_type") + " " + label; //$NON-NLS-1$ //$NON-NLS-2$
	}

	/**
	 * This handles model notifications by calling {@link #updateChildren} to update any cached
	 * children and by creating a viewer notification, which it passes to {@link #fireNotifyChanged}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void notifyChanged(Notification notification) {
		updateChildren(notification);

		switch (notification.getFeatureID(Contact.class)) {
			case DwPackage.CONTACT__DESCRIPTION:
				fireNotifyChanged(new ViewerNotification(notification, notification.getNotifier(), false, true));
				return;
			case DwPackage.CONTACT__LOCATIONS:
			case DwPackage.CONTACT__OWNS:
				fireNotifyChanged(new ViewerNotification(notification, notification.getNotifier(), true, false));
				return;
		}
		super.notifyChanged(notification);
	}

	/**
	 * This adds {@link org.eclipse.emf.edit.command.CommandParameter}s describing the children
	 * that can be created under this object.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected void collectNewChildDescriptors(Collection<Object> newChildDescriptors, Object object) {
		super.collectNewChildDescriptors(newChildDescriptors, object);

		newChildDescriptors.add
			(createChildParameter
				(DwPackage.Literals.CONTACT__LOCATIONS,
				 DwFactory.eINSTANCE.createLocation()));

		newChildDescriptors.add
			(createChildParameter
				(DwPackage.Literals.CONTACT__OWNS,
				 DwFactory.eINSTANCE.createGood()));

		newChildDescriptors.add
			(createChildParameter
				(DwPackage.Literals.CONTACT__OWNS,
				 DwFactory.eINSTANCE.createSubscription()));
	}

}
