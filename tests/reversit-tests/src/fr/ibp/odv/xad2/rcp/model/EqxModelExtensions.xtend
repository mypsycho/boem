package fr.ibp.odv.xad2.rcp.model

import fr.ibp.odv.xad2.model.equinoxeComposantsMetier.EquinoxeComposantsMetierPackage
import fr.ibp.odv.xad2.model.equinoxeCore.EquinoxeCorePackage
import fr.ibp.odv.xad2.model.equinoxeDialogue.EquinoxeDialoguePackage
import fr.ibp.odv.xad2.model.equinoxeProcedure.EquinoxeProcedurePackage
import org.mypsycho.emf.reflem.EmfContribution
import org.mypsycho.emf.reflem.EmfStretcher

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
