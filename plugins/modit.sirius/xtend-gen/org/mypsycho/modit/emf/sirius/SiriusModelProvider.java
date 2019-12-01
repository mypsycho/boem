package org.mypsycho.modit.emf.sirius;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sirius.viewpoint.description.DescriptionPackage;
import org.eclipse.sirius.viewpoint.description.Group;
import org.eclipse.sirius.viewpoint.description.JavaExtension;
import org.eclipse.sirius.viewpoint.description.Viewpoint;
import org.eclipse.sirius.viewpoint.description.style.StylePackage;
import org.eclipse.sirius.viewpoint.description.tool.ToolPackage;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Conversions;
import org.eclipse.xtext.xbase.lib.Extension;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.Functions.Function2;
import org.eclipse.xtext.xbase.lib.Functions.Function3;
import org.eclipse.xtext.xbase.lib.Functions.Function4;
import org.eclipse.xtext.xbase.lib.Functions.Function5;
import org.eclipse.xtext.xbase.lib.Functions.Function6;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Pair;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure2;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure3;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure4;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure5;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure6;
import org.mypsycho.modit.emf.EModIt;
import org.mypsycho.modit.emf.sirius.MisActivator;
import org.mypsycho.modit.emf.sirius.SiriusModelProviderService;

@SuppressWarnings("all")
public abstract class SiriusModelProvider {
  public final static String SELF = "self";
  
  public final static Set<? extends EPackage> DEFAULT_PACKAGES = Collections.<EPackage>unmodifiableSet(CollectionLiterals.<EPackage>newHashSet(DescriptionPackage.eINSTANCE, StylePackage.eINSTANCE, ToolPackage.eINSTANCE, org.eclipse.sirius.diagram.description.DescriptionPackage.eINSTANCE, org.eclipse.sirius.diagram.description.tool.ToolPackage.eINSTANCE, org.eclipse.sirius.diagram.sequence.description.DescriptionPackage.eINSTANCE, org.eclipse.sirius.diagram.sequence.description.tool.ToolPackage.eINSTANCE, org.eclipse.sirius.table.metamodel.table.description.DescriptionPackage.eINSTANCE, org.eclipse.sirius.tree.description.DescriptionPackage.eINSTANCE));
  
  private final List<Object> expressions = new ArrayList<Object>();
  
  @Extension
  public final EModIt factory;
  
  public final Resource resource;
  
  private final int id;
  
  private final Group value;
  
  public SiriusModelProvider(final Iterable<? extends EPackage> descriptorPackages, final Resource rs) {
    this.factory = EModIt.using(((EPackage[])Conversions.unwrapArray(descriptorPackages, EPackage.class)));
    this.resource = rs;
    this.id = MisActivator.getInstance().registerProvider(this);
    this.value = this.factory.<Group>create(Group.class);
  }
  
  public SiriusModelProvider(final Resource rs) {
    this(SiriusModelProvider.DEFAULT_PACKAGES, rs);
  }
  
  public Group buildContent() {
    Group _xblockexpression = null;
    {
      this.init(this.value);
      final Consumer<Viewpoint> _function = (Viewpoint it) -> {
        EList<JavaExtension> _ownedJavaExtensions = it.getOwnedJavaExtensions();
        final Procedure1<JavaExtension> _function_1 = (JavaExtension it_1) -> {
          it_1.setQualifiedClassName(SiriusModelProviderService.class.getName());
        };
        JavaExtension _create = this.factory.<JavaExtension>create(JavaExtension.class, _function_1);
        _ownedJavaExtensions.add(_create);
      };
      this.value.getOwnedViewpoints().forEach(_function);
      this.factory.<Group>assemble(this.value);
      this.resource.getContents().add(this.value);
      _xblockexpression = this.value;
    }
    return _xblockexpression;
  }
  
  protected abstract void init(final Group it);
  
  public String expression(final Function1<? extends EObject, ?> callable) {
    return this.createExpression(SiriusModelProvider.SELF, 0, callable);
  }
  
  public String expression(final String variable, final Function1<? extends EObject, ?> callable) {
    return this.createExpression(variable, 0, callable);
  }
  
  public String expression(final String params, final Function2<? extends EObject, ?, ?> callable) {
    return this.createExpression(params, 1, callable);
  }
  
  public String expression(final String params, final Function3<? extends EObject, ?, ?, ?> callable) {
    return this.createExpression(params, 2, callable);
  }
  
  public String expression(final String params, final Function4<? extends EObject, ?, ?, ?, ?> callable) {
    return this.createExpression(params, 3, callable);
  }
  
  public String expression(final String params, final Function5<? extends EObject, ?, ?, ?, ?, ?> callable) {
    return this.createExpression(params, 4, callable);
  }
  
  public String expression(final String params, final Function6<? extends EObject, ?, ?, ?, ?, ?, ?> callable) {
    return this.createExpression(params, 5, callable);
  }
  
  public String expression(final Procedure1<? extends EObject> callable) {
    return this.createExpression(SiriusModelProvider.SELF, 0, callable);
  }
  
  public String expression(final String variable, final Procedure1<? extends EObject> callable) {
    return this.createExpression(variable, 0, callable);
  }
  
  public String expression(final String params, final Procedure2<? extends EObject, ?> callable) {
    return this.createExpression(params, 1, callable);
  }
  
  public String expression(final String params, final Procedure3<? extends EObject, ?, ?> callable) {
    return this.createExpression(params, 2, callable);
  }
  
  public String expression(final String params, final Procedure4<? extends EObject, ?, ?, ?> callable) {
    return this.createExpression(params, 3, callable);
  }
  
  public String expression(final String params, final Procedure5<? extends EObject, ?, ?, ?, ?> callable) {
    return this.createExpression(params, 4, callable);
  }
  
  public String expression(final String params, final Procedure6<? extends EObject, ?, ?, ?, ?, ?> callable) {
    return this.createExpression(params, 5, callable);
  }
  
  private String createExpression(final String signature, final int size, final Object callable) {
    String _xblockexpression = null;
    {
      final Pair<String, String> params = this.toInvokeParams(signature, (size + 1));
      final int methodId = this.expressions.size();
      this.expressions.add(callable);
      StringConcatenation _builder = new StringConcatenation();
      _builder.append("aql:");
      String _key = params.getKey();
      _builder.append(_key);
      _builder.append(".moditInvoke(");
      _builder.append(this.id);
      _builder.append(", ");
      _builder.append(methodId);
      _builder.append(", Sequence{");
      String _value = params.getValue();
      _builder.append(_value);
      _builder.append("})");
      _xblockexpression = _builder.toString();
    }
    return _xblockexpression;
  }
  
  public <P0 extends Object, P1 extends Object, P2 extends Object, P3 extends Object, P4 extends Object, P5 extends Object, R extends Object> R invoke(final int methodId, final EObject value, final Object params) {
    R _xblockexpression = null;
    {
      final List<Object> values = ((List<Object>) params);
      values.add(0, value);
      final Object it = this.expressions.get(methodId);
      R _switchResult = null;
      boolean _matched = false;
      if (it instanceof Function1) {
        _matched=true;
        Object _get = values.get(0);
        _switchResult = ((Function1<P0, R>)it).apply(((P0) _get));
      }
      if (!_matched) {
        if (it instanceof Function2) {
          _matched=true;
          Object _get = values.get(0);
          Object _get_1 = values.get(1);
          _switchResult = ((Function2<P0, P1, R>)it).apply(((P0) _get), ((P1) _get_1));
        }
      }
      if (!_matched) {
        if (it instanceof Function3) {
          _matched=true;
          Object _get = values.get(0);
          Object _get_1 = values.get(1);
          Object _get_2 = values.get(2);
          _switchResult = ((Function3<P0, P1, P2, R>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2));
        }
      }
      if (!_matched) {
        if (it instanceof Function4) {
          _matched=true;
          Object _get = values.get(0);
          Object _get_1 = values.get(1);
          Object _get_2 = values.get(2);
          Object _get_3 = values.get(3);
          _switchResult = ((Function4<P0, P1, P2, P3, R>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2), ((P3) _get_3));
        }
      }
      if (!_matched) {
        if (it instanceof Function5) {
          _matched=true;
          Object _get = values.get(0);
          Object _get_1 = values.get(1);
          Object _get_2 = values.get(2);
          Object _get_3 = values.get(3);
          Object _get_4 = values.get(4);
          _switchResult = ((Function5<P0, P1, P2, P3, P4, R>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2), ((P3) _get_3), ((P4) _get_4));
        }
      }
      if (!_matched) {
        if (it instanceof Function6) {
          _matched=true;
          Object _get = values.get(0);
          Object _get_1 = values.get(1);
          Object _get_2 = values.get(2);
          Object _get_3 = values.get(3);
          Object _get_4 = values.get(4);
          Object _get_5 = values.get(5);
          _switchResult = ((Function6<P0, P1, P2, P3, P4, P5, R>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2), ((P3) _get_3), ((P4) _get_4), ((P5) _get_5));
        }
      }
      if (!_matched) {
        Object _xblockexpression_1 = null;
        {
          boolean _matched_1 = false;
          if (it instanceof Procedure1) {
            _matched_1=true;
            Object _get = values.get(0);
            ((Procedure1<P0>)it).apply(((P0) _get));
          }
          if (!_matched_1) {
            if (it instanceof Procedure2) {
              _matched_1=true;
              Object _get = values.get(0);
              Object _get_1 = values.get(1);
              ((Procedure2<P0, P1>)it).apply(((P0) _get), ((P1) _get_1));
            }
          }
          if (!_matched_1) {
            if (it instanceof Procedure3) {
              _matched_1=true;
              Object _get = values.get(0);
              Object _get_1 = values.get(1);
              Object _get_2 = values.get(2);
              ((Procedure3<P0, P1, P2>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2));
            }
          }
          if (!_matched_1) {
            if (it instanceof Procedure4) {
              _matched_1=true;
              Object _get = values.get(0);
              Object _get_1 = values.get(1);
              Object _get_2 = values.get(2);
              Object _get_3 = values.get(3);
              ((Procedure4<P0, P1, P2, P3>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2), ((P3) _get_3));
            }
          }
          if (!_matched_1) {
            if (it instanceof Procedure5) {
              _matched_1=true;
              Object _get = values.get(0);
              Object _get_1 = values.get(1);
              Object _get_2 = values.get(2);
              Object _get_3 = values.get(3);
              Object _get_4 = values.get(4);
              ((Procedure5<P0, P1, P2, P3, P4>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2), ((P3) _get_3), ((P4) _get_4));
            }
          }
          if (!_matched_1) {
            if (it instanceof Procedure6) {
              _matched_1=true;
              Object _get = values.get(0);
              Object _get_1 = values.get(1);
              Object _get_2 = values.get(2);
              Object _get_3 = values.get(3);
              Object _get_4 = values.get(4);
              Object _get_5 = values.get(5);
              ((Procedure6<P0, P1, P2, P3, P4, P5>)it).apply(((P0) _get), ((P1) _get_1), ((P2) _get_2), ((P3) _get_3), ((P4) _get_4), ((P5) _get_5));
            }
          }
          if (!_matched_1) {
            String _string = it.getClass().toString();
            throw new UnsupportedOperationException(_string);
          }
          _xblockexpression_1 = null;
        }
        _switchResult = ((R)_xblockexpression_1);
      }
      _xblockexpression = _switchResult;
    }
    return _xblockexpression;
  }
  
  protected String params(final String... params) {
    return IterableExtensions.join(((Iterable<?>)Conversions.doWrapArray(params)), ",");
  }
  
  /**
   * @param it
   * @param size
   */
  protected Pair<String, String> toInvokeParams(final String it, final int size) {
    Pair<String, String> _xblockexpression = null;
    {
      final String[] values = it.split(",");
      Pair<String, String> _xifexpression = null;
      int _length = values.length;
      boolean _equals = (_length == size);
      if (_equals) {
        String _params = this.params();
        _xifexpression = Pair.<String, String>of(SiriusModelProvider.SELF, _params);
      } else {
        Pair<String, String> _xifexpression_1 = null;
        int _length_1 = values.length;
        boolean _equals_1 = (_length_1 == (size + 1));
        if (_equals_1) {
          String _get = values[0];
          String _join = IterableExtensions.join(IterableExtensions.<String>tail(((Iterable<String>)Conversions.doWrapArray(values))), ",");
          _xifexpression_1 = Pair.<String, String>of(_get, _join);
        } else {
          StringConcatenation _builder = new StringConcatenation();
          _builder.append("Arguments [");
          _builder.append(it);
          _builder.append("] does not match signature size (");
          _builder.append(size);
          _builder.append(")\"");
          throw new IllegalArgumentException(_builder.toString());
        }
        _xifexpression = _xifexpression_1;
      }
      _xblockexpression = _xifexpression;
    }
    return _xblockexpression;
  }
}
