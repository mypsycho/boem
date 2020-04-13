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

import com.google.common.base.Objects;
import java.util.Set;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.sirius.business.api.session.SessionManager;
import org.eclipse.sirius.diagram.ContainerLayout;
import org.eclipse.sirius.diagram.EdgeArrows;
import org.eclipse.sirius.diagram.LineStyle;
import org.eclipse.sirius.diagram.description.ContainerMapping;
import org.eclipse.sirius.diagram.description.DiagramElementMapping;
import org.eclipse.sirius.diagram.description.EdgeMapping;
import org.eclipse.sirius.diagram.description.Layer;
import org.eclipse.sirius.diagram.description.NodeMapping;
import org.eclipse.sirius.diagram.description.style.ContainerStyleDescription;
import org.eclipse.sirius.diagram.description.style.EdgeStyleDescription;
import org.eclipse.sirius.diagram.description.style.SquareDescription;
import org.eclipse.sirius.viewpoint.description.SystemColor;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.mypsycho.emf.modit.dw.dummyworld.Activity;
import org.mypsycho.emf.modit.dw.dummyworld.Company;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.dw.dummyworld.Job;
import org.mypsycho.emf.modit.dw.dummyworld.Service;
import org.mypsycho.emf.modit.dw.dummyworld.design.DummyWorldDesign;
import org.mypsycho.modit.emf.sirius.api.AbstractDiagram;
import org.mypsycho.modit.emf.sirius.api.SiriusDesigns;

/**
 * Organization chart of company
 * 
 * @author nperansin
 */
@SuppressWarnings("all")
public class CompanyDiagram extends AbstractDiagram {
  private static final DwPackage PKG = DwPackage.eINSTANCE;
  
  public CompanyDiagram(final DummyWorldDesign parent) {
    super(parent, "Organization chart", Company.class);
  }
  
  @Override
  public void initContent(final Layer it) {
    EList<ContainerMapping> _containerMappings = it.getContainerMappings();
    final Procedure1<ContainerMapping> _function = (ContainerMapping it_1) -> {
      this.setSemanticCandidatesExpression(it_1, CompanyDiagram.PKG.getCompany_Employees());
      it_1.setChildrenPresentation(ContainerLayout.LIST);
      it_1.setStyle(this.<ContainerStyleDescription>createStyle(ContainerStyleDescription.class));
      EList<NodeMapping> _subNodeMappings = it_1.getSubNodeMappings();
      final Procedure1<NodeMapping> _function_1 = (NodeMapping it_2) -> {
        this.setDomainClass(it_2, Service.class);
        final Function1<Job, Set<Activity>> _function_2 = (Job it_3) -> {
          final Function1<EStructuralFeature.Setting, Boolean> _function_3 = (EStructuralFeature.Setting it_4) -> {
            EStructuralFeature _eStructuralFeature = it_4.getEStructuralFeature();
            EReference _activity_SupportedBy = CompanyDiagram.PKG.getActivity_SupportedBy();
            return Boolean.valueOf(Objects.equal(_eStructuralFeature, _activity_SupportedBy));
          };
          final Function1<EStructuralFeature.Setting, Activity> _function_4 = (EStructuralFeature.Setting it_4) -> {
            EObject _eObject = it_4.getEObject();
            return ((Activity) _eObject);
          };
          return IterableExtensions.<Activity>toSet(IterableExtensions.<EStructuralFeature.Setting, Activity>map(IterableExtensions.<EStructuralFeature.Setting>filter(SessionManager.INSTANCE.getSession(it_3).getSemanticCrossReferencer().getNonNavigableInverseReferences(it_3), _function_3), _function_4));
        };
        it_2.setSemanticCandidatesExpression(this.context.<Set<Activity>>expression(_function_2));
        it_2.setStyle(this.<SquareDescription>createStyle(SquareDescription.class));
      };
      NodeMapping _create = this.factory.<NodeMapping>create(NodeMapping.class, _function_1);
      _subNodeMappings.add(_create);
    };
    ContainerMapping _createAs = this.factory.<ContainerMapping>createAs(ContainerMapping.class, "company_Employees", _function);
    _containerMappings.add(_createAs);
    EList<EdgeMapping> _edgeMappings = it.getEdgeMappings();
    final Procedure1<EdgeMapping> _function_1 = (EdgeMapping it_1) -> {
      EList<DiagramElementMapping> _sourceMapping = it_1.getSourceMapping();
      ContainerMapping _ref = this.factory.<ContainerMapping>ref(ContainerMapping.class, "company_Employees");
      _sourceMapping.add(_ref);
      EList<DiagramElementMapping> _targetMapping = it_1.getTargetMapping();
      ContainerMapping _ref_1 = this.factory.<ContainerMapping>ref(ContainerMapping.class, "company_Employees");
      _targetMapping.add(_ref_1);
      it_1.setTargetFinderExpression(SiriusDesigns.encode(CompanyDiagram.PKG.getJob_Team()));
      final Procedure1<EdgeStyleDescription> _function_2 = (EdgeStyleDescription it_2) -> {
        it_2.setLineStyle(LineStyle.DASH_LITERAL);
        it_2.setTargetArrow(EdgeArrows.NO_DECORATION_LITERAL);
        it_2.setSourceArrow(EdgeArrows.INPUT_ARROW_LITERAL);
        EObject _get = this.context.getExtras().get("color:black");
        it_2.setStrokeColor(((SystemColor) _get));
      };
      it_1.setStyle(this.factory.<EdgeStyleDescription>create(EdgeStyleDescription.class, _function_2));
    };
    EdgeMapping _create = this.factory.<EdgeMapping>create(EdgeMapping.class, _function_1);
    _edgeMappings.add(_create);
  }
}
