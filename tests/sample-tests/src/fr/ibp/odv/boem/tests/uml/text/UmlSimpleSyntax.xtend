package fr.ibp.odv.boem.tests.uml.text

import org.eclipse.emf.ecore.EObject
import org.eclipse.uml2.uml.Classifier
import org.eclipse.uml2.uml.Generalization
import org.eclipse.uml2.uml.Interface
import org.eclipse.uml2.uml.NamedElement
import org.eclipse.uml2.uml.TypedElement
import org.mypsycho.modit.emf.EModIt
import org.eclipse.uml2.uml.Operation

class UmlSimpleSyntax {
    
    val extension EModIt factory
    
    new(EModIt factory) {
        this.factory = factory
    }

    def static token(String it, String value) {
        val pos = value.indexOf(it)
        if (pos != -1) value.substring(0, pos).trim -> value.substring(pos + length).trim
        else value -> null
    }

    def dispatch provideContent(String content, EObject it) {
        throw new UnsupportedOperationException('''«eClass.name» cannot handle content '«content»'.''')
    }
    
    def dispatch provideContent(String content, NamedElement it) {
        name = content
    }
    
    def dispatch provideContent(String content, Generalization it) {
        general = Interface.ref(content)
    }

    def dispatch provideContent(String content, Classifier target) {
        ":>".token(content) => [ 
            target.name = key
            if (value !== null) target.generalizations += Generalization.create(value)
        ]
    }
    
    def dispatch provideContent(String content, TypedElement target) {
        ":".token(content) => [ 
            target.name = key
            if (value !== null) target.type = Interface.create(value)
        ]
    }
        
    def dispatch provideContent(String content, Operation target) {
        ":".token(content) => [ 
            target.name = key
            if (value !== null) target.type = Interface.create(value)
        ]
    }
    
    
}