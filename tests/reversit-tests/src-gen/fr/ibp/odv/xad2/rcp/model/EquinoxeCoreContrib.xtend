package fr.ibp.odv.xad2.rcp.model

import static org.mypsycho.emf.modit.reverit.test.EmfExtensions.Ext.*

import fr.ibp.odv.xad2.rcp.model.EqxModelExtensions.Tab
import org.mypsycho.emf.reflem.EmfContribution
import org.mypsycho.emf.reflem.EmfStretcher
import fr.ibp.odv.xad2.model.equinoxeCore.EquinoxeCorePackage

class EquinoxeCoreContrib extends EmfContribution {
    
    static val extension EquinoxeCorePackage target = EquinoxeCorePackage.eINSTANCE
    
    new(EmfStretcher it) {
        super(it, target)
    }
    
    override run() {
      abstractConstrainedMethod_Precondition += multiline
      abstractConstrainedMethod_Postcondition += multiline
      abstractError_QualifiedName += shown
      abstractError_Domain += shown
      abstractExtendedReturningMethod_ReturnTypeDocumentation += #[ Tab->Tab.documentation, multiline ]
      abstractReturningMethod_ReturnTypeDocumentation += #[ Tab->Tab.documentation, multiline ]
      abstractRootElement_StandardGeneration += Tab->Tab.generation
      abstractRootElement_ErrorGeneration += Tab->Tab.generation
      abstractType_AllAttributes += hidden
      basicType_MomTypeClass += Tab->Tab.generation
      basicType_MomTypeArguments += Tab->Tab.generation
      basicType_Cloneable += Tab->Tab.generation
      basicType_JavaClassName += Tab->Tab.generation
      cbo_JavaClassName += Tab->Tab.generation
      cbo_UseCboFactory += Tab->Tab.generation
      cbo_Cloneable += Tab->Tab.generation
      cbo_TypeMomParDefaut += list
      converter_PatronParDefaut += list
      converter_Constants += multiline
      ctInterface_SuperType += list
      documentableElement_Documentation += #[ Tab->Tab.documentation, multiline ]
      enumeration_SuperType += hidden
      enumerationValue_Description += #[ Tab->Tab.documentation, multiline ]
      ibpNamedElementDeprecable_CommentsDeprecated += #[ Tab->Tab.documentation, multiline ]
      momTypedElement_TypeMom += #[ Tab->Tab.generation, list ]
      momTypedElement_MomTypeLg += Tab->Tab.generation
      momTypedElement_ConversionMode += Tab->Tab.generation
      momTypedElement_UseDefaultsUnused += Tab->Tab.generation
      momTypedElement_CobolNames += #[ Tab->Tab.generation, multiline ]
      momTypedElement_CobolFormats += #[ Tab->Tab.generation, multiline ]
      typeCollection_MultiplicityMomMax += Tab->Tab.generation
      typesGroup_JavaPackageName += Tab->Tab.generation
      wsOperation_PossibleErrors += list
      wsOperation_TransactionalMode += Tab->Tab.generation
    }
}
