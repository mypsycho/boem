package org.mypsycho.emf.modit.eef.widget;

import org.eclipse.eef.EEFControlDescription;
import org.eclipse.eef.core.api.EditingContextAdapter;
import org.eclipse.eef.ide.ui.api.widgets.IEEFLifecycleManager;
import org.eclipse.eef.ide.ui.api.widgets.IEEFLifecycleManagerProvider;
import org.eclipse.sirius.common.interpreter.api.IInterpreter;
import org.eclipse.sirius.common.interpreter.api.IVariableManager;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EEFNativeWidgetDescription;

public class EEFNativeWidgetLifecycleManagerProvider implements IEEFLifecycleManagerProvider {

	@Override
	public boolean canHandle(EEFControlDescription controlDescription) {
		return controlDescription instanceof EEFNativeWidgetDescription;
	}

	@Override
	public IEEFLifecycleManager getLifecycleManager(EEFControlDescription controlDescription,
			IVariableManager variableManager, IInterpreter interpreter,
			EditingContextAdapter editingContextAdapter) {

		return canHandle(controlDescription)
				? new EEFNativeWidgetLifecycleManager(
						(EEFNativeWidgetDescription)controlDescription, 
						variableManager, interpreter, editingContextAdapter) 
				: null;
	}

}
