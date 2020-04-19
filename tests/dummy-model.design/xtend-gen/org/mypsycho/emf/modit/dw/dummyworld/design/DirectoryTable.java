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
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sirius.table.metamodel.table.DColumn;
import org.eclipse.sirius.table.metamodel.table.description.EditionTableDescription;
import org.eclipse.sirius.table.metamodel.table.description.FeatureColumnMapping;
import org.eclipse.sirius.table.metamodel.table.description.LineMapping;
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Conversions;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.Functions.Function2;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Pair;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure3;
import org.mypsycho.emf.modit.dw.dummyworld.Company;
import org.mypsycho.emf.modit.dw.dummyworld.Contact;
import org.mypsycho.emf.modit.dw.dummyworld.Directory;
import org.mypsycho.emf.modit.dw.dummyworld.DwFactory;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.dw.dummyworld.Location;
import org.mypsycho.emf.modit.dw.dummyworld.Person;
import org.mypsycho.modit.emf.sirius.api.AbstractEditionTable;
import org.mypsycho.modit.emf.sirius.api.AbstractGroup;
import org.mypsycho.modit.emf.sirius.api.AbstractRepresentation;
import org.mypsycho.modit.emf.sirius.api.AbstractTable;
import org.mypsycho.modit.emf.sirius.api.SiriusDesigns;

/**
 * Create a table of contact location.
 * <p>
 * It contains a tree of companies and
 * </p>
 * 
 * @author nperansin
 */
@SuppressWarnings("all")
public class DirectoryTable extends AbstractEditionTable {
  private static final DwPackage PKG = DwPackage.eINSTANCE;
  
  public DirectoryTable(final AbstractGroup context) {
    super(context, "Directory", Directory.class);
  }
  
  @Override
  public void initContent(final EditionTableDescription it) {
    final List<Boolean> first = Collections.<Boolean>unmodifiableList(CollectionLiterals.<Boolean>newArrayList(Boolean.valueOf(true)));
    Pair<String, String> _mappedTo = Pair.<String, String>of("Companies", "Company");
    final Function1<DwFactory, Company> _function = (DwFactory it_1) -> {
      return it_1.createCompany();
    };
    Pair<Pair<String, String>, Function1<DwFactory, Company>> _mappedTo_1 = Pair.<Pair<String, String>, Function1<DwFactory, Company>>of(_mappedTo, _function);
    Pair<String, String> _mappedTo_2 = Pair.<String, String>of("People", "Person");
    final Function1<DwFactory, Person> _function_1 = (DwFactory it_1) -> {
      return it_1.createPerson();
    };
    Pair<Pair<String, String>, Function1<DwFactory, Person>> _mappedTo_3 = Pair.<Pair<String, String>, Function1<DwFactory, Person>>of(_mappedTo_2, _function_1);
    final Consumer<Pair<Pair<String, String>, ? extends Function1<? super DwFactory, ? extends Contact>>> _function_2 = (Pair<Pair<String, String>, ? extends Function1<? super DwFactory, ? extends Contact>> descr) -> {
      final String title = descr.getKey().getKey();
      final String creationTitle = descr.getKey().getValue();
      final Function1<? super DwFactory, ? extends Contact> doCreate = descr.getValue();
      EList<LineMapping> _ownedLineMappings = it.getOwnedLineMappings();
      final Procedure1<LineMapping> _function_3 = (LineMapping it_1) -> {
        this.setDomainClass(it_1, Directory.class);
        it_1.setSemanticCandidatesExpression(SiriusDesigns.IDENTITY);
        it_1.setHeaderLabelExpression(title);
        Boolean _head = IterableExtensions.<Boolean>head(first);
        if ((boolean) _head) {
          EList<LineMapping> _ownedSubLines = it_1.getOwnedSubLines();
          final Procedure1<LineMapping> _function_4 = (LineMapping it_2) -> {
            this.setDomainClass(it_2, Contact.class);
            this.setSemanticCandidatesExpression(it_2, DirectoryTable.PKG.getDirectory_Contacts());
            it_2.setHeaderLabelExpression(this.context.getItemProviderLabel());
          };
          LineMapping _createAs = this.factory.<LineMapping>createAs(LineMapping.class, "DirectoryContact", _function_4);
          _ownedSubLines.add(_createAs);
          first.set(0, Boolean.valueOf(false));
        } else {
          EList<LineMapping> _reusedSubLines = it_1.getReusedSubLines();
          LineMapping _ref = this.factory.<LineMapping>ref(LineMapping.class, "DirectoryContact");
          _reusedSubLines.add(_ref);
        }
        final Procedure3<EObject, EObject, EObject> _function_5 = (EObject root, EObject element, EObject container) -> {
          if (element!=null) {
            element.toString();
          }
          EList<Contact> _contacts = ((Directory) root).getContacts();
          Contact _apply = doCreate.apply(DirectoryTable.PKG.getDwFactory());
          _contacts.add(_apply);
        };
        this.addLineCreation(it_1, creationTitle, "DirectoryContact", _function_5);
      };
      LineMapping _create = this.factory.<LineMapping>create(LineMapping.class, _function_3);
      _ownedLineMappings.add(_create);
    };
    Collections.<Pair<Pair<String, String>, ? extends Function1<? super DwFactory, ? extends Contact>>>unmodifiableList(CollectionLiterals.<Pair<Pair<String, String>, ? extends Function1<? super DwFactory, ? extends Contact>>>newArrayList(_mappedTo_1, _mappedTo_3)).forEach(_function_2);
    final Consumer<String> _function_3 = (String locationId) -> {
      EList<FeatureColumnMapping> _ownedColumnMappings = it.getOwnedColumnMappings();
      final Procedure1<FeatureColumnMapping> _function_4 = (FeatureColumnMapping it_1) -> {
        it_1.setName(locationId);
        this.setFeature(it_1, DirectoryTable.PKG.getContact_Locations());
        it_1.setHeaderLabelExpression(locationId);
        final Function2<EObject, DColumn, String> _function_5 = (EObject it_2, DColumn col) -> {
          String _xifexpression = null;
          if ((it_2 instanceof Contact)) {
            final Function1<Location, Boolean> _function_6 = (Location it_3) -> {
              String _name = it_3.getName();
              String _label = col.getLabel();
              return Boolean.valueOf(Objects.equal(_name, _label));
            };
            Location _findFirst = IterableExtensions.<Location>findFirst(((Contact)it_2).getLocations(), _function_6);
            String _value = null;
            if (_findFirst!=null) {
              _value=_findFirst.getValue();
            }
            _xifexpression = _value;
          }
          return _xifexpression;
        };
        it_1.setLabelExpression(this.context.<String>expression(AbstractRepresentation.params(AbstractTable.LINE, AbstractTable.COl_VIEW), _function_5));
        final Function1<EObject, Boolean> _function_6 = (EObject it_2) -> {
          return Boolean.valueOf((it_2 instanceof Contact));
        };
        it_1.setCanEdit(this.context.<Boolean>expression(AbstractTable.LINE, _function_6));
        final Procedure1<ChangeContext> _function_7 = (ChangeContext it_2) -> {
          final Procedure3<Contact, DColumn, String> _function_8 = (Contact it_3, DColumn col, String value) -> {
            Location _elvis = null;
            final Function1<Location, Boolean> _function_9 = (Location it_4) -> {
              String _name = it_4.getName();
              String _label = col.getLabel();
              return Boolean.valueOf(Objects.equal(_name, _label));
            };
            Location _findFirst = IterableExtensions.<Location>findFirst(it_3.getLocations(), _function_9);
            if (_findFirst != null) {
              _elvis = _findFirst;
            } else {
              Location _xblockexpression = null;
              {
                final Location newLoc = DirectoryTable.PKG.getDwFactory().createLocation();
                newLoc.setName(col.getLabel());
                EList<Location> _locations = it_3.getLocations();
                _locations.add(newLoc);
                _xblockexpression = newLoc;
              }
              _elvis = _xblockexpression;
            }
            _elvis.setValue(value);
          };
          it_2.setBrowseExpression(this.context.expression(AbstractRepresentation.params(AbstractTable.LINE, AbstractTable.COl_VIEW, AbstractTable.EDIT_VALUE), _function_8));
        };
        it_1.setDirectEdit(this.createLabelEdit(_function_7));
      };
      FeatureColumnMapping _create = this.factory.<FeatureColumnMapping>create(FeatureColumnMapping.class, _function_4);
      _ownedColumnMappings.add(_create);
    };
    ((List<String>)Conversions.doWrapArray("Mail,Phone,Address,Web site".split(","))).forEach(_function_3);
  }
}
