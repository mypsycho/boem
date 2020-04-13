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

import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sirius.table.metamodel.table.description.CrossTableDescription;
import org.eclipse.sirius.table.metamodel.table.description.LineMapping;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Conversions;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Pair;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure3;
import org.mypsycho.emf.modit.dw.dummyworld.Company;
import org.mypsycho.emf.modit.dw.dummyworld.Contact;
import org.mypsycho.emf.modit.dw.dummyworld.Directory;
import org.mypsycho.emf.modit.dw.dummyworld.DwFactory;
import org.mypsycho.emf.modit.dw.dummyworld.DwPackage;
import org.mypsycho.emf.modit.dw.dummyworld.Person;
import org.mypsycho.modit.emf.sirius.api.AbstractCrossTable;
import org.mypsycho.modit.emf.sirius.api.AbstractGroup;

/**
 * @author nperansin
 */
@SuppressWarnings("all")
public class DirectoryTable extends AbstractCrossTable {
  private static final DwPackage PKG = DwPackage.eINSTANCE;
  
  public DirectoryTable(final AbstractGroup context) {
    super(context, "Directory", Directory.class);
  }
  
  @Override
  public void initContent(final CrossTableDescription it) {
    final List<Boolean> first = Collections.<Boolean>unmodifiableList(CollectionLiterals.<Boolean>newArrayList(Boolean.valueOf(true)));
    final Function1<DwFactory, Company> _function = (DwFactory it_1) -> {
      return it_1.createCompany();
    };
    Pair<String, Function1<DwFactory, Company>> _mappedTo = Pair.<String, Function1<DwFactory, Company>>of("Companies", _function);
    final Function1<DwFactory, Person> _function_1 = (DwFactory it_1) -> {
      return it_1.createPerson();
    };
    Pair<String, Function1<DwFactory, Person>> _mappedTo_1 = Pair.<String, Function1<DwFactory, Person>>of("People", _function_1);
    final Consumer<Pair<String, ? extends Function1<? super DwFactory, ? extends Contact>>> _function_2 = (Pair<String, ? extends Function1<? super DwFactory, ? extends Contact>> descr) -> {
      final String title = descr.getKey();
      final Function1<? super DwFactory, ? extends Contact> doCreate = descr.getValue();
      EList<LineMapping> _ownedLineMappings = it.getOwnedLineMappings();
      final Procedure1<LineMapping> _function_3 = (LineMapping it_1) -> {
        this.setDomainClass(it_1, Directory.class);
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
        this.addLineCreation(it_1, "Company", "DirectoryContact", _function_5);
      };
      LineMapping _create = this.factory.<LineMapping>create(LineMapping.class, _function_3);
      _ownedLineMappings.add(_create);
    };
    Collections.<Pair<String, ? extends Function1<? super DwFactory, ? extends Contact>>>unmodifiableList(CollectionLiterals.<Pair<String, ? extends Function1<? super DwFactory, ? extends Contact>>>newArrayList(_mappedTo, _mappedTo_1)).forEach(_function_2);
    final Consumer<String> _function_3 = (String locationId) -> {
    };
    ((List<String>)Conversions.doWrapArray("Mail,Address,Website".split(","))).forEach(_function_3);
  }
}
