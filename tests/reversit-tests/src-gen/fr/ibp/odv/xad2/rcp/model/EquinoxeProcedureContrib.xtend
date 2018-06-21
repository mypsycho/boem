package fr.ibp.odv.xad2.rcp.model

import static org.mypsycho.emf.modit.reverit.test.EmfExtensions.Ext.*

import fr.ibp.odv.xad2.rcp.model.EqxModelExtensions.Tab
import org.mypsycho.emf.reflem.EmfContribution
import org.mypsycho.emf.reflem.EmfStretcher
import fr.ibp.odv.xad2.model.equinoxeProcedure.EquinoxeProcedurePackage

class EquinoxeProcedureContrib extends EmfContribution {
    
    static val extension EquinoxeProcedurePackage target = EquinoxeProcedurePackage.eINSTANCE
    
    new(EmfStretcher it) {
        super(it, target)
    }
    
    override run() {
      IORuleState_InputRules += multiline
      IORuleState_OutputRules += multiline
      messageState_MessageInterface += list
      pafAdapter_PublishData += Tab->Tab.generation
      pafAdapter_TaskChaining += Tab->Tab.generation
      pafAdapter_NextTaskId += Tab->Tab.generation
      pafAdapter_AdapterId += Tab->Tab.generation
      pafAdapter_ParentClass += Tab->Tab.generation
      popixState_PopixTransaction += list
      processComponent_CallingDynamicProcessComponent += list
      processComponent_DsName += Tab->Tab.generation
      processInterface_InputFormat += list
      processInterface_OutputFormat += list
      processOperationState_ProcessOperation += list
      processTransition_ExitAction += list
      processTransition_Errors += list
      subProcessState_Process += list
    }
}
