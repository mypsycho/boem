package fr.ibp.odv.xad2.rcp.model

import fr.ibp.odv.xad2.model.equinoxeComposantsMetier.EquinoxeComposantsMetierPackage
import fr.ibp.odv.xad2.model.equinoxeCore.EquinoxeCorePackage
import fr.ibp.odv.xad2.model.equinoxeDialogue.EquinoxeDialoguePackage
import fr.ibp.odv.xad2.model.equinoxeProcedure.EquinoxeProcedurePackage
import org.mypsycho.emf.reflem.EmfContribution
import org.mypsycho.emf.reflem.EmfStretcher

class EqxModelExtensions {
    
    public enum Tab {
        conception, documentation, affichage, generation;
     }
    
    public static val EmfStretcher STRETCHER = EmfContribution.createStretcher(#{
        EquinoxeCorePackage.eINSTANCE -> null,
        EquinoxeComposantsMetierPackage.eINSTANCE -> null,
        EquinoxeDialoguePackage.eINSTANCE -> null,
        EquinoxeProcedurePackage.eINSTANCE -> null
    })


}
