package org.mypsycho.emf.modit

import java.nio.file.Paths
import org.eclipse.emf.common.util.URI

class ClassId {
    public val String pack
    public val String name

    new(String classname) {
        val index = classname.lastIndexOf('.')
        if (index != -1) {
            pack = classname.substring(0, index)
            name = classname.substring(index + 1)
        } else {
            pack = null
            name = classname
        }
    }
    
    new(String pack, String name) {
        this.pack = pack
        this.name = name
    }
    
    new (ClassId parent, URI id) {
        pack = parent.pack
        name = id.path          
    }

            
    def toPath() {
        Paths.get(pack?.replace('.', '/') ?: '.', name + ".xtend")
    }
    
    def qName() {
        if (pack !== null) pack + "." + name else name
    }
    
    override toString() {
        qName
    }
    
}
        