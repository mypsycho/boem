package org.mypsycho.emf.modit.eef;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.eef.EEFWidgetDescription;
import org.eclipse.eef.EefPackage;
import org.eclipse.eef.common.ui.api.IEEFFormContainer;
import org.eclipse.eef.core.api.EEFExpressionUtils;
import org.eclipse.eef.core.api.EditingContextAdapter;
import org.eclipse.eef.core.api.controllers.AbstractEEFWidgetController;
import org.eclipse.eef.core.api.controllers.IEEFWidgetController;
import org.eclipse.eef.core.api.utils.EvalFactory;
import org.eclipse.eef.ide.ui.api.widgets.AbstractEEFWidgetLifecycleManager;
import org.eclipse.eef.ide.ui.api.widgets.EEFStyleHelper;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.sirius.common.interpreter.api.IInterpreter;
import org.eclipse.sirius.common.interpreter.api.IVariableManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.mypsycho.emf.modit.eef.EEFNativeWidget.ModelListener;
import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetDescription;
import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetStyle;
import org.osgi.framework.Bundle;

/**
 *
 * @author nperansin
 */
public class EEFNativeWidgetLifecycleManager extends AbstractEEFWidgetLifecycleManager {

	
	public static int VALIDATION_HORIZONTAL_INDENT = VALIDATION_MARKER_OFFSET;
	
	private EEFNativeWidgetDescription description;
	
	private Controller controller;
	
	private Control widget;
	
	/**
	 * Used to make the SelectionListener reentrant, to avoid infinite loops when we need to revert the UI state on
	 * error (as reverting the UI re-triggers the SelectionListener).
	 */
	private AtomicBoolean updateInProgress = new AtomicBoolean(false);

	
	/**
	 * 
	 * <p>
	 * 
	 * </p>
	 *
	 * @param variableManager
	 * @param interpreter
	 * @param editingContextAdapter
	 */
	public EEFNativeWidgetLifecycleManager(EEFNativeWidgetDescription description,
			IVariableManager variableManager, IInterpreter interpreter,
			EditingContextAdapter editingContextAdapter) {
		super(variableManager, interpreter, editingContextAdapter);
		this.description = description;
		
	}

	protected static void logError(String message, Throwable cause) {
		EEFNativeActivator.logError(message, cause);
	}
	
	@Override
	protected void createMainControl(Composite parent, IEEFFormContainer formContainer) {
		
		EEFNativeWidget impl;
		
		try {
			Bundle bundle = Platform.getBundle(description.getPluginId());
			if (bundle == null) {
				logError("Bundle " + description.getPluginId() + " does not exist", null);				
				return;
			}
			Class<?> widgetClass = bundle.loadClass(description.getClassName());
			impl = (EEFNativeWidget) widgetClass.newInstance();
			
		} catch (ClassCastException e) {
			logError(description.getClassName() + " does not implement " 
					+ EEFNativeWidget.class.getName(), e);
			return;
		} catch (ClassNotFoundException e) {
			logError(description.getClassName() + " cannot be found", e);
			return;
		} catch (InstantiationException | IllegalAccessException e) {
			logError(description.getClassName() + " cannot be instantiated", e);
			return;
		}

		impl.init(variableManager, interpreter);
		
		widget = impl.createControl(parent, formContainer);
		
		// create a widget using parent + container.getWidgetFactory()
		
		// 
		// container.getWidgetFactory().paintBordersFor(parent);
		// Finish by creating a controller containing widget reference.
		
		// AbstractEEFWidgetController is not connected to lifecycle but with a callback.
		
		controller = new Controller(impl);
	}

	@Override
	protected IEEFWidgetController getController() {
		return controller;
	}
	
	@Override
	protected Control getValidationControl() {
		// main widget
		return null;
	}

	@Override
	protected EEFWidgetDescription getWidgetDescription() {
		return description;
	}

	@Override
	protected void setEnabled(boolean enable) {
		controller.implementation.setEnabled(enable);
	}

	
	@Override
	public void aboutToBeShown() {
		super.aboutToBeShown();

		controller.listener = controller.implementation
				.startEditing(value -> editValue(false, value));
		
		controller.newValueConsumer = value -> controller.listener.setValue(value);

		// addListener on widget.
		// Prefer listener with a delayed update
		//    - ignoring refresh (!container.isRenderingInProgress() && !updateInProgress.get())
		//    - mark as changed (dirty)
		//    - store change
		
		// on lost focus
		//    - if lockedByOtherInProgress.get() && !container.isRenderingInProgress() && isDirty
		//    update(value)
		
		// for text listen on key \n
		
		// add controller callback to update widget on new content.
		//    this callback must be used when controller receive a refresh order.
		//    the callback update the style.
		
		// impl refresh in controller : must call evaluation when callback is available.
		
		
		// update(value) in controller! -> 
		//   - using editingContextAdapter.performModelChange
		//   - put value into "newValue" variable map
		//   - EvalFactory.of(interpreter, variables).logIfBlank(eAttribute).call(editExpression)
		
	}
	
	/**
	 * Set the style.
	 */
	private void setStyle() {
		EEFStyleHelper styleHelper = new EEFStyleHelper(interpreter, variableManager);
		controller.listener.setStyle((EEFNativeWidgetStyle) styleHelper.getWidgetStyle(description));
	}
	
	private void editValue(boolean force, Object value) {
		boolean shouldUpdateWhileRendering = !container.isRenderingInProgress() || force;
		if (!widget.isDisposed() 
				&& shouldUpdateWhileRendering 
				// && isDirty 
				&& updateInProgress.compareAndSet(false, true)
				) {
			try {
				IStatus result = controller.updateValue(value);
				
				if (result != null && result.getSeverity() == IStatus.ERROR) {
					logError(result.getMessage(), result.getException());
					// Restore widget will last value
					controller.valueForwarder.accept(controller.referenceValue);
				} else {
					// save value 
					controller.referenceValue = value; 
					// maybe useless if refresh callback controller
					refresh();
				}
				// isDirty = false;
				setStyle();
			} finally {
				updateInProgress.set(false);
			}
		}
	}
	
	@Override
	public void aboutToBeHidden() {
		// remove listener
		// remove refreshCallback
		controller.implementation.stopEditing();
		controller.newValueConsumer = null;
		
		super.aboutToBeHidden();
	}
	
	private class Controller extends AbstractEEFWidgetController {
		
		EEFNativeWidget implementation;
		
		Consumer<Object> newValueConsumer;
		
		final Consumer<Object> valueForwarder = value -> {
			referenceValue = value;
			newValueConsumer.accept(value);
			setStyle();
		};
		
		// Not null when shown
		ModelListener listener;
		
		Object referenceValue = null;
		
		public Controller(EEFNativeWidget impl) {
			super(EEFNativeWidgetLifecycleManager.this.variableManager, 
					EEFNativeWidgetLifecycleManager.this.interpreter, 
					EEFNativeWidgetLifecycleManager.this.editingContextAdapter);
			implementation = impl;
		}

		@Override
		protected EEFWidgetDescription getDescription() {
			return description;
		}
		
		 
		@Override
		public void refresh() {
			super.refresh();

			if (newValueConsumer != null) {
				// Writing content into widget
				newEval().call(description.getValueExpression(), valueForwarder);
			}
		}
		

		public IStatus updateValue(final Object value) {
			return this.editingContextAdapter.performModelChange(() -> {
				String editExpression = description.getEditExpression();
				EAttribute eAttribute = EefPackage.Literals.EEF_TEXT_DESCRIPTION__EDIT_EXPRESSION;

				Map<String, Object> variables = new HashMap<String, Object>();
				variables.putAll(this.variableManager.getVariables());
				variables.put(EEFExpressionUtils.EEFText.NEW_VALUE, value);

				EvalFactory.of(this.interpreter, variables).logIfBlank(eAttribute).call(editExpression);
			});
		}
		
	}

}
