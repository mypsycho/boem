/* 
 * Copyright (c) Huawei Technologies Co., Ltd. 2012-2020. All rights reserved.
 */
package org.mypsycho.emf.modit.eef.widget;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.eef.EEFConditionalStyle;
import org.eclipse.eef.EEFCustomWidgetConditionalStyle;
import org.eclipse.eef.EEFCustomWidgetDescription;
import org.eclipse.eef.EEFWidgetStyle;
import org.eclipse.eef.ide.ui.api.widgets.EEFStyleHelper;
import org.eclipse.eef.util.EEFConditionalStyleToWidgetStyleSwitch;
import org.eclipse.eef.util.EEFDescriptionToConditionalStylesSwitch;
import org.eclipse.emf.ecore.util.Switch;
import org.eclipse.sirius.common.interpreter.api.IInterpreter;
import org.eclipse.sirius.common.interpreter.api.IVariableManager;

/**
 * Style helper handling custom widget.
 * 
 * @since 2020-07-23
 */
final class EEFCustomStyleHelper extends EEFStyleHelper {
    
    /**
     * Default constructor.
     * 
     * @param interpreter of expression
     * @param variableManager of invocation
     */
    EEFCustomStyleHelper(IInterpreter interpreter, IVariableManager variableManager) {
        super(interpreter, variableManager);
    }

    @Override
    protected Switch<List<EEFConditionalStyle>> getDescriptionToConditionalStylesSwitch() {
        return new EEFDescriptionToConditionalStylesSwitch() {
            @Override
            public List<EEFConditionalStyle> caseEEFCustomWidgetDescription(
                    EEFCustomWidgetDescription object) {
                List<EEFConditionalStyle> styles = new ArrayList<>();
                styles.addAll(object.getConditionalStyles());
                return styles;
            }
        };
    }

    @Override
    protected Switch<EEFWidgetStyle> getConditionalStyleToWidgetStyleSwitch() {
        return new EEFConditionalStyleToWidgetStyleSwitch() {
            @Override
            public EEFWidgetStyle caseEEFCustomWidgetConditionalStyle(
                    EEFCustomWidgetConditionalStyle object) {
                return object.getStyle();
            }
        };
    }
}
