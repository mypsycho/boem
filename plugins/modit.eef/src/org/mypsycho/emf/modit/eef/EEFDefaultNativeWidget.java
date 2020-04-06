package org.mypsycho.emf.modit.eef;

import java.util.Map;
import java.util.function.Consumer;

import org.eclipse.eef.common.ui.api.EEFWidgetFactory;
import org.eclipse.eef.common.ui.api.IEEFFormContainer;
import org.eclipse.eef.ide.ui.api.widgets.EEFStyleHelper;
import org.eclipse.eef.ide.ui.api.widgets.EEFStyleHelper.IEEFTextStyleCallback;
import org.eclipse.eef.ide.ui.internal.widgets.styles.EEFColor;
import org.eclipse.eef.ide.ui.internal.widgets.styles.EEFFont;
import org.eclipse.sirius.common.interpreter.api.IInterpreter;
import org.eclipse.sirius.common.interpreter.api.IVariableManager;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.mypsycho.emf.modit.eef.EefExtNative.EEFNativeWidgetStyle;

/**
 *
 * @author nperansin
 */
public class EEFDefaultNativeWidget implements EEFNativeWidget {

	
	protected IVariableManager variableManager;

	protected IInterpreter interpreter;
	
	protected Composite parent;
	
	protected Consumer<Object> edit;
	
	protected Control widget;
	
	protected class DefaultModelListener implements ModelListener {

		@Override
		public void setValue(Object value) {
			if (!parent.isDisposed()) {
				setValueFromModel(value);
			}
		}

		@Override
		public void setProperties(Map<? extends String, ? extends String> properties) {
			setContext(properties);
		}

		@SuppressWarnings("restriction") // limited commitment on eef mechanisms
		@Override
		public void setStyle(EEFNativeWidgetStyle style) {
			IEEFTextStyleCallback callback = getSyleCallback();
			if (callback == null || parent.isDisposed()) {
				return;
			}
			
			EEFStyleHelper styleHelper = new EEFStyleHelper(interpreter, variableManager);
			
			Font defaultFont = parent.getShell().getFont();
			
			if (style != null) {
				styleHelper.applyTextStyle(style.getFontNameExpression(), 
						style.getFontSizeExpression(), 
						style.getFontStyleExpression(),
						defaultFont, 
						style.getBackgroundColorExpression(), 
						style.getForegroundColorExpression(), 
						callback);
			} else { // no style in model
				// Set everything back to the default value
				callback.applyForegroundColor(new EEFColor((Color) null));
				callback.applyBackgroundColor(new EEFColor((Color) null));
				callback.applyFontStyle(false, false);
				callback.applyFont(new EEFFont(null, 0, 0) {
					@Override
					public Font getFont() {
						return null;
					}
				});
			}
		}
		
	}
	
	@Override
	public void init(IVariableManager variableManager, IInterpreter interpreter) {
		this.variableManager = variableManager;
		this.interpreter = interpreter;
	}
	
	
	@Override
	public Control createControl(Composite parent, IEEFFormContainer formContainer) {
		widget = doCreateControl(parent, formContainer.getWidgetFactory());
		
		GridData gridData = new GridData(SWT.FILL, SWT.CENTER, true, false);
		gridData.horizontalIndent = EEFNativeWidgetLifecycleManager.VALIDATION_HORIZONTAL_INDENT;
		widget.setLayoutData(gridData);
		
		return widget;
	}

	
	@Override
	public ModelListener startEditing(Consumer<Object> edit) {
		return new DefaultModelListener();
	}

	@Override
	public void stopEditing() {
		edit = null;
	}

	protected Control doCreateControl(Composite parent, EEFWidgetFactory factory) {
		return factory.createLabel(parent, "");
	}
	
	protected void setValueFromModel(Object value) {
		((Label) widget).setText(String.valueOf(value));
	}
	
	public void setContext(Map<? extends String, ? extends String> properties) {
		// nothing by default
	}
	
	protected IEEFTextStyleCallback getSyleCallback() {
		return new EEFNativeStyleCallback<Control>(widget);
	}

	void fireNewValue(Object value) {
		if (edit != null) {
			edit.accept(value);
		}
	}

	@Override
	public void setEnabled(boolean isEnabled) {
		widget.setEnabled(isEnabled);
	}

	
}
