package fr.ibp.odv.xad2.rcp.model

import static org.mypsycho.emf.modit.reverit.test.EmfExtensions.Ext.*

import fr.ibp.odv.xad2.rcp.model.EqxModelExtensions.Tab
import org.mypsycho.emf.reflem.EmfContribution
import org.mypsycho.emf.reflem.EmfStretcher
import fr.ibp.odv.xad2.model.equinoxeComposantsMetier.EquinoxeComposantsMetierPackage

class EquinoxeComposantsMetierContrib extends EmfContribution {
    
    static val extension EquinoxeComposantsMetierPackage target = EquinoxeComposantsMetierPackage.eINSTANCE
    
    new(EmfStretcher it) {
        super(it, target)
    }
    
    override run() {
      abstractBoAttribute_JdbcRowName += Tab->Tab.generation
      abstractBusinessComponent_LegacyEjb += Tab->Tab.generation
      abstractBusinessComponent_MomGeneration += Tab->Tab.generation
      abstractBusinessComponent_JdbcGeneration += Tab->Tab.generation
      abstractBusinessComponent_SqljGeneration += Tab->Tab.generation
      abstractBusinessObject_CheckValidity += multiline
      abstractBusinessObject_ReferencedViews += shown
      abstractBusinessObject_AllAttributes += hidden
      boBoAttribute_Generate_multiple_finder += Tab->Tab.generation
      boBoAttribute_Service_id += Tab->Tab.generation
      boBoAttribute_Queue += Tab->Tab.generation
      boBoAttribute_SendQueue += Tab->Tab.generation
      boBoAttribute_ReplyQueue += Tab->Tab.generation
      boBoAttribute_Version += Tab->Tab.generation
      boBoAttribute_Priority += Tab->Tab.generation
      boBoAttribute_MomMax += hidden
      boMethod_PagedOutput += #[ Tab->Tab.generation, shown ]
      boMethod_PaginationKeyName += Tab->Tab.generation
      boMethod_PaginationKeySize += Tab->Tab.generation
      boMethod_ConversionMode += Tab->Tab.generation
      boMethod_ParametrePagineEnEntree += #[ Tab->Tab.generation, list ]
      boMethod_Programid += Tab->Tab.generation
      boMethod_QueueName += Tab->Tab.generation
      boMethod_SendQueue += Tab->Tab.generation
      boMethod_ReplyQueue += Tab->Tab.generation
      boMethod_Version += Tab->Tab.generation
      boMethod_Priority += Tab->Tab.generation
      boMethod_Multiplicity += Tab->Tab.generation
      boMethod_PagedInput += Tab->Tab.generation
      boMethod_PagedInputSize += Tab->Tab.generation
      boView_DefaultView += hidden
      boViewAttribute_ReferencedAttribute += list
      boViewAttribute_Type += shown
      boViewAttribute_Derived += shown
      boViewFAttribute_BusinessObject += shown
      bsp_DsName += Tab->Tab.generation
      businessInterfaceMethod_Exceptions += Tab->Tab.generation
      businessInterfaceMethod_TransactionalMode += Tab->Tab.generation
      businessInterfaceMethod_Type += list
      businessObject_DaoDataAccess += Tab->Tab.generation
      businessObject_QueryDataAccess += Tab->Tab.generation
      businessObject_CreateProgramId += Tab->Tab.generation
      businessObject_CreateQueue += Tab->Tab.generation
      businessObject_CreateVersion += Tab->Tab.generation
      businessObject_CreatePriority += Tab->Tab.generation
      businessObject_ReadProgramid += Tab->Tab.generation
      businessObject_ReadQueue += Tab->Tab.generation
      businessObject_ReadVersion += Tab->Tab.generation
      businessObject_ReadPriority += Tab->Tab.generation
      businessObject_UpdateProgramid += Tab->Tab.generation
      businessObject_UpdateQueue += Tab->Tab.generation
      businessObject_UpdateVersion += Tab->Tab.generation
      businessObject_UpdatePriority += Tab->Tab.generation
      businessObject_ProgramidDelete += Tab->Tab.generation
      businessObject_DeleteQueue += Tab->Tab.generation
      businessObject_DeleteVersion += Tab->Tab.generation
      businessObject_DeletePriority += Tab->Tab.generation
      businessObject_SendQueue += Tab->Tab.generation
      businessObject_LuwSendQueue += Tab->Tab.generation
      businessObject_ReplyQueue += Tab->Tab.generation
      businessObject_SqljPriority += Tab->Tab.generation
      businessObject_DsName += Tab->Tab.generation
      businessObject_OwnSequence += Tab->Tab.generation
      businessObject_OldBoRef += Tab->Tab.generation
      businessObject_AlternativeBoInheritance += Tab->Tab.generation
      businessServiceProviderMethod_Exceptions += Tab->Tab.generation
      CMR_UseJmsConfiguration += Tab->Tab.generation
      CMR_SendQueue += Tab->Tab.generation
      CMR_LuwSendQueue += Tab->Tab.generation
      CMR_ReplyQueue += Tab->Tab.generation
      CMR_ConversionMode += Tab->Tab.generation
      caConnector_ConnectorId += Tab->Tab.generation
      cmteCollectorPackage_Name += hidden
      cmteFacadePackage_RealisationDe += shown
      cmteInterfacePackage_ProxyImplementationStrategy += Tab->Tab.generation
      connectorMethod_RemoteServiceName += Tab->Tab.generation
      facadeMethod_ThrowsExceptions += Tab->Tab.generation
      facadeRealization_DsName += Tab->Tab.generation
      facadeRealizationGroup_RemoteAccess += shown
      interfaceCm_ProxyImplementationStrategy += Tab->Tab.generation
    }
}
