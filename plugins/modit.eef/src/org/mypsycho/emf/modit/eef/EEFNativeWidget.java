package org.mypsycho.emf.modit.eef;

import java.util.Map;
import java.util.function.Consumer;

import org.eclipse.eef.common.ui.api.IEEFFormContainer;
import org.eclipse.sirius.common.interpreter.api.IInterpreter;
import org.eclipse.sirius.common.interpreter.api.IVariableManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetStyle;

/**
 *
 * @author nperansin
 */
public interface EEFNativeWidget {

	/**
	 * This listener can receive value from the model not provided by this widget.
	 */
	interface ModelListener {
		
		void setValue(Object value);
		
		void setProperties(Map<? extends String, ? extends String> properties);
		
		void setStyle(EEFNativeWidgetStyle style);
	}
	
	void init(IVariableManager variableManager, IInterpreter interpreter);
	
	Control createControl(Composite parent, IEEFFormContainer formContainer);
	
	ModelListener startEditing(Consumer<Object> edit);
	
	void stopEditing();
	
	void setEnabled(boolean isEnabled);
}
