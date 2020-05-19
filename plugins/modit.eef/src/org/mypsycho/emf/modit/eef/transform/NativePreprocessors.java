/*******************************************************************************
 * Copyright (c) 2020 Nicolas PERANSIN.
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Nicolas PERANSIN - initial API and implementation
 *******************************************************************************/
package org.mypsycho.emf.modit.eef.transform;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sirius.properties.core.api.PreconfiguredPreprocessor;
import org.mypsycho.emf.modit.eef.model.properties.propertynative.PropNativePackage;;

/**
 * This class should be more interesting if we want to defined some 'extends' properties.
 * 
 * @author nperansin
 */
public class NativePreprocessors {

	static final PropNativePackage PKG = PropNativePackage.eINSTANCE;
	
	static class EClassPreconfiguredPreprocessor extends PreconfiguredPreprocessor<EObject> {
	
		@SuppressWarnings({ "rawtypes", "unchecked" })
		protected EClassPreconfiguredPreprocessor(EClass eClass) {
			super((Class)eClass.getInstanceClass(), eClass); // Generics and Obeo :-)
		}
		
		@Override
	    public boolean canHandle(EObject description) {
	        return descriptionClass.equals(description.eClass().getInstanceClass());
	    }
		
	}
	
	public static class WidgetDescription extends EClassPreconfiguredPreprocessor {
		public WidgetDescription() {
			super(PKG.getNativeWidgetDescription());
		}
	}

	public static class WidgetStyle extends EClassPreconfiguredPreprocessor {
		public WidgetStyle() {
			super(PKG.getNativeWidgetStyle());
		}
	}

	public static class WidgetConditionalStyle extends EClassPreconfiguredPreprocessor {
		public WidgetConditionalStyle() {
			super(PKG.getNativeWidgetConditionalStyle());
		}
	}




}
