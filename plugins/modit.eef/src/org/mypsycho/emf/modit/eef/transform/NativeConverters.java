package org.mypsycho.emf.modit.eef.transform;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sirius.properties.core.api.DefaultDescriptionConverter;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativeFactory;
import org.mypsycho.emf.modit.eef.model.eef.eefextnative.EefNativePackage;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetConditionalStyle;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetDescription;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.NativeWidgetStyle;

public class NativeConverters {

	static final EefNativeFactory FCT = EefNativeFactory.eINSTANCE;
	static final EefNativePackage PKG = EefNativePackage.eINSTANCE;
	
	static class EClassConverter extends DefaultDescriptionConverter<EObject> {
	    
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public EClassConverter(Class<?extends EObject> siriusClass, EClass eefEClass) {
	        super((Class)siriusClass, eefEClass);
	    }
	    
		@Override
		protected EFactory getEFactory() {
			return EefNativeFactory.eINSTANCE;
		}
	    
	}
	
	
	static class WidgetDescription extends EClassConverter {
	    public WidgetDescription() {
	    	super(NativeWidgetDescription.class, PKG.getEEFNativeWidgetDescription());
	    }
	}

	static class WidgetStyle extends EClassConverter {
	    public WidgetStyle() {
	    	super(NativeWidgetStyle.class, PKG.getEEFNativeWidgetStyle());
	    }
	}

	static class WidgetConditionalStyle extends EClassConverter {
	    public WidgetConditionalStyle() {
	    	super(NativeWidgetConditionalStyle.class, PKG.getEEFNativeWidgetConditionalStyle());
	    }
	}
    
    
}
