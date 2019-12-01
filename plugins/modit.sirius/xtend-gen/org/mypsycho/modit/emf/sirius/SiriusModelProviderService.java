package org.mypsycho.modit.emf.sirius;

import org.eclipse.emf.ecore.EObject;
import org.mypsycho.modit.emf.sirius.MisActivator;

@SuppressWarnings("all")
public class SiriusModelProviderService {
  public SiriusModelProviderService() {
    System.out.println("new ExtPvCustomService");
  }
  
  public static Object moditInvoke(final EObject it, final int providerId, final int methodId, final Object params) {
    return MisActivator.getInstance().getProvider(providerId).<Object, Object, Object, Object, Object, Object, Object>invoke(methodId, it, params);
  }
}
