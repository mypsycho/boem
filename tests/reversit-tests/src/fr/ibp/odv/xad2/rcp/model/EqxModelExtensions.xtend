package fr.ibp.odv.xad2.rcp.model

import org.mypsycho.modit.emf.stretch.EmfContribution
import org.mypsycho.modit.emf.stretch.EmfStretcher

class EqxModelExtensions {
    
    enum Tab {
        conception, documentation, affichage, generation;
     }
    
    public static val EmfStretcher STRETCHER = EmfContribution.createStretcher(#{
        EquinoxeCorePackage.eINSTANCE -> EquinoxeCoreContrib,
        EquinoxeComposantsMetierPackage.eINSTANCE -> EquinoxeComposantsMetierContrib,
        EquinoxeDialoguePackage.eINSTANCE -> EquinoxeDialogueContrib,
        EquinoxeProcedurePackage.eINSTANCE -> EquinoxeProcedureContrib
    })

}
