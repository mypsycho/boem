/**
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
 */
package org.mypsycho.emf.modit.dw.dummyworld.design;

import org.eclipse.emf.common.util.EList;
import org.eclipse.sirius.diagram.description.DiagramDescription;
import org.eclipse.sirius.viewpoint.description.Group;
import org.eclipse.sirius.viewpoint.description.RepresentationDescription;
import org.eclipse.sirius.viewpoint.description.Viewpoint;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.dw.dummyworld.design.CompanyDiagram;
import org.mypsycho.modit.emf.sirius.api.AbstractGroup;

/**
 * @author nperansin
 */
@SuppressWarnings("all")
public class DummyWorldDesign extends AbstractGroup {
  public DummyWorldDesign() {
    super(DwPackage.eINSTANCE);
  }
  
  @Override
  protected void initContent(final Group it) {
    EList<Viewpoint> _ownedViewpoints = it.getOwnedViewpoints();
    final Procedure1<Viewpoint> _function = (Viewpoint it_1) -> {
      it_1.setName("DummyWorld");
      it_1.setModelFileExtension("*.dw");
      EList<RepresentationDescription> _ownedRepresentations = it_1.getOwnedRepresentations();
      DiagramDescription _createContent = new CompanyDiagram(this).createContent();
      _ownedRepresentations.add(_createContent);
    };
    Viewpoint _create = this.factory.<Viewpoint>create(Viewpoint.class, _function);
    _ownedViewpoints.add(_create);
  }
}
