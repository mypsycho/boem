package org.mypsycho.emf.modit.eef.widget;

import org.eclipse.eef.ide.ui.api.widgets.EEFStyleHelper.IEEFTextStyleCallback;
import org.eclipse.eef.ide.ui.internal.widgets.styles.EEFColor;
import org.eclipse.eef.ide.ui.internal.widgets.styles.EEFFont;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.widgets.Control;

/**
 *
 * @author nperansin
 */
@SuppressWarnings("restriction") // Oddly IEEFTextStyleCallback is API but not its parameters ...
// Some eclipse internal cargo cult
public class EEFNativeStyleCallback<C extends Control> implements IEEFTextStyleCallback {

	protected final C widget;
	
	
	protected EEFNativeStyleCallback(C widget) {
		this.widget = widget;
	}
	
	
	@Override
	public void applyForegroundColor(EEFColor color) {
		applyForegroundColor(color.getColor());
	}
	
	@Override
	public void applyBackgroundColor(EEFColor color) {
		applyBackgroundColor(color.getColor());
	}

	@Override
	public void applyFont(EEFFont font) {
		applyFont(font.getFont());
	}

	@Override
	public void applyFontStyle(boolean strikeout, boolean underline) {
	}

	
	protected void applyForegroundColor(Color color) {
		widget.setForeground(color);
	}


	protected void applyBackgroundColor(Color color) {
		widget.setBackground(color);
	}

	protected void applyFont(Font font) {
		widget.setFont(font);
	}

	
}
