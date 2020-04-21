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
package org.mypsycho.modit.emf.sample.uml;

import org.eclipse.uml2.uml.resource.UMLResource;

/**
 * Utility class to handle problematic visibility for tests.
 *
 * @author nperansin
 */
public class Umls {

	@SuppressWarnings("restriction") // always internal
	public static UMLResource.Factory createResourceFactory() {
		return new org.eclipse.uml2.uml.internal.resource.UMLResourceFactoryImpl();
	}
	
}
