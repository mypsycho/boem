package org.mypsycho.emf.modit.reverit.test

import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxHyperlinkDescription
import fr.ibp.odv.xad2.rcp.properties.ext.sirius.eqxSiriusProperties.EqxSiriusPropertiesPackage
import org.eclipse.emf.common.util.Enumerator
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EAttribute
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EReference
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.sirius.diagram.description.filter.FilterPackage
import org.eclipse.sirius.properties.AbstractWidgetDescription
import org.eclipse.sirius.properties.Category
import org.eclipse.sirius.properties.CheckboxDescription
import org.eclipse.sirius.properties.CheckboxWidgetStyle
import org.eclipse.sirius.properties.ControlDescription
import org.eclipse.sirius.properties.CustomDescription
import org.eclipse.sirius.properties.CustomExpression
import org.eclipse.sirius.properties.CustomWidgetStyle
import org.eclipse.sirius.properties.GroupDescription
import org.eclipse.sirius.properties.GroupStyle
import org.eclipse.sirius.properties.HyperlinkWidgetStyle
import org.eclipse.sirius.properties.ListDescription
import org.eclipse.sirius.properties.ListWidgetStyle
import org.eclipse.sirius.properties.PageDescription
import org.eclipse.sirius.properties.PropertiesPackage
import org.eclipse.sirius.properties.SelectDescription
import org.eclipse.sirius.properties.SelectWidgetStyle
import org.eclipse.sirius.properties.TextAreaDescription
import org.eclipse.sirius.properties.TextDescription
import org.eclipse.sirius.properties.TextWidgetStyle
import org.eclipse.sirius.properties.TitleBarStyle
import org.eclipse.sirius.properties.ToggleStyle
import org.eclipse.sirius.properties.WidgetAction
import org.eclipse.sirius.properties.WidgetStyle
import org.eclipse.sirius.viewpoint.FontFormat
import org.eclipse.sirius.viewpoint.description.ColorDescription
import org.eclipse.sirius.viewpoint.description.DescriptionPackage
import org.eclipse.sirius.viewpoint.description.style.StylePackage
import org.eclipse.sirius.viewpoint.description.tool.ChangeContext
import org.eclipse.sirius.viewpoint.description.tool.InitialOperation
import org.eclipse.sirius.viewpoint.description.tool.ToolPackage
import org.mypsycho.emf.reflem.EmfAspect
import org.mypsycho.emf.reflem.EmfStretcher
import org.mypsycho.emf.modit.EModIt
import org.mypsycho.emf.modit.reverit.test.EmfExtensions.Ext

class SiriusGenerator {

    protected extension EModIt factory = EModIt.using(
        EqxSiriusPropertiesPackage.eINSTANCE,
        DescriptionPackage.eINSTANCE,
        FilterPackage.eINSTANCE,
        StylePackage.eINSTANCE,
        ToolPackage.eINSTANCE,
        PropertiesPackage.eINSTANCE,
        DescriptionPackage.eINSTANCE,
        ToolPackage.eINSTANCE
    )

    val Enum<?>[] tabs

    var EmfStretcher analysis
    
    public val disabled = getColor("gray")
    
    new(Class<? extends Enum<?>> tabEnum) {
        this.tabs = tabEnum.enumConstants
    }
    
    def aspect(EStructuralFeature it) {
        new EmfAspect.Specific(it, aspect(EContainingClass)) 
    }
    
    def aspect(EClass it) {
        analysis.onClass(it).aspect
    }
    
    def perform(EmfStretcher source) {
        analysis = source
        analysis.targets.map[ p | Category.create[
            name = p.name + "_Definition"
            groups += // Let create a group for each tab
                p.EClassifiers.filter(EClass) // Editable
                    .map[ tabs.map[ tab | toGroup(tab) ] ]
                    .flatten.filterNull
            ]
        ] + analysis.targets.map[ p | Category.create[
            name = p.name + "_Reference"
             // Let create a group for each tab
            pages += p.EClassifiers.filter(EClass).filter[ !abstract ] // Editable
                .map[ tabs.map[ tab | toPage(tab) ] ]
                .flatten.filterNull
            ]
        ]
    }
    
    def isControllable(EStructuralFeature it, Enum<?> tab) { // should be aspect driven ?
        val aspect = aspect(it)
        (aspect.get(it, tab.class, tabs.get(0)) == tab)
            && (aspect.get(it, Ext.shown, false) // forced
                || (!derived && !transient && !aspect.get(it, Ext.hidden, false)
                    && if (it instanceof EReference) !containment else true
                ))
    }
    
    def toPage(EClass source, Enum<?> tab) {
        val parts = analysis.onClass(source).inheritances.reverseView.map[
                // Not aspect for extra classes
                aspect.get(GroupDescription->tab, null)
            ].filterNull
        
        if (parts.empty) null
        else PageDescription.create [ 
            name = source.name + '_' + tab + '_Page'
            labelExpression = tab.name
            domainClass = source.EPackage.name + "." + source.name
            preconditionExpression = '''aql:self.oclIsTypeOf(«source.EPackage.name»::«source.name»)'''
            groups += parts
        ]
    }
    
    def toGroup(EClass source, Enum<?> tab) {
        val atts = source.EStructuralFeatures.filter[ isControllable(tab) ]
        if (atts.empty) null
        else GroupDescription.create [
            val eClass = source
            name = '''«eClass.name»_«tab»_Group'''
            domainClass = eClass.EPackage.name + "." + eClass.name
            controls += atts.map[ toControl ]
            style = GroupStyle.create[
                barStyle = TitleBarStyle.NO_TITLE
                toggleStyle = ToggleStyle.NONE
                expandedByDefault = true
            ]
            aspect(source) += (GroupDescription->tab) -> it
        ]
    }

    
    def toControl(EStructuralFeature att) {
        val it = createControl(att)
        name = '''«att.EContainingClass.name»_«att.name»_«name»'''
        labelExpression = att.name // TODO l10n
        
        helpExpression = att.aspect.get(Ext.help, null) // Gen model reap the doc off !!
        isEnabledExpression = if (!att.derived) "aql:self.isNotReadOnlyElement()" else "aql:false"
        it as ControlDescription 
    }
    
    def dispatch AbstractWidgetDescription createControl(EAttribute att) {
        val type = att.EAttributeType.instanceClass
        val expr = "feature:" + att.name
        if (String == type && att.aspect.get(Ext.multiline, false)) TextAreaDescription.create [
            name = "TxtArea" // should be area
            valueExpression = expr
            initialOperation = createEdt(att).value
            style = initStyle(TextWidgetStyle.create, att)
        ] else if (String == type) TextDescription.create [
            name = "Txt"
            valueExpression = expr
            initialOperation = createEdt(att).value
            style = initStyle(TextWidgetStyle.create, att)
        ] else if (Integer == type || Integer.TYPE == type) CustomDescription.create [
            name = "Eqx_Spinner"
            customExpressions += siriusCustom("valueExpression", expr)
            customExpressions += siriusCustom("valueSetter", createEdt(att).key)
            style = initStyle(CustomWidgetStyle.create, att)
        ] else if (Boolean == type || Boolean.TYPE == type) CheckboxDescription.create [
            name = "Check"
            valueExpression = expr
            initialOperation = createEdt(att).value
            style = initStyle(CheckboxWidgetStyle.create, att)
        ] else if (Enumerator.isAssignableFrom(type)) SelectDescription.create[
            name = "Enum"
            valueExpression = expr
            initialOperation = createEdt(att).value
            style = initStyle(SelectWidgetStyle.create, att)

            val enumType = att.EAttributeType
            candidatesExpression = '''aql:«enumType.EPackage.name»::«enumType.name».eLiterals->collect(e|e.instance)'''
            candidateDisplayExpression = "aql:candidate.toString()" // XXX Should be label provider
        ]
    }
    
    // TODO l10n
    val edtTree1 = "..." -> "eqxSetFromTreeView(*)"
    val edtList1 = "..." -> "eqxSetFromListView(*)"
    val edtUns = "Retirer" -> "eqxUnset(*)"

    val edtTreeN = "Ajouter" -> "eqxAddFromTreeView(*,true)"
    val edtListN = "Ajouter" -> "eqxAddFromListView(*,true)"
    val edtRmv = "Retirer" -> "eqxRemove(*,selection)"
    val edtUp = "Monter" -> "performMoveCommandUp(*,selection)"
    val edtDown = "Descendre" -> "performMoveCommandDown(*,selection)"
    
    def createEdt(EReference att, Pair<String, String> type) {
        WidgetAction.create[
            labelExpression = type.key
            initialOperation = InitialOperation.create[
                firstModelOperations = ChangeContext.create[
                    browseExpression = "aql:self." 
                        + type.value.replace("*", "'"+ att.name +"'") 
                ]
            ]
        ]
    }
    
    def dispatch AbstractWidgetDescription createControl(EReference att) {
        val expr = "feature:" + att.name
        val disp = "aql:value.getEqxLabel()"
        
        if (att.many) ListDescription.create [
            valueExpression = expr
            displayExpression = disp
            style = initStyle(ListWidgetStyle.create, att)
            
            // Navigation
            onClickOperation = att.createNav
            val edtAdd = if (att.aspect.get(Ext.list, false)) edtListN else edtTreeN
            actions += #[ att.createEdt(edtAdd), att.createEdt(edtRmv) ]
            if (att.ordered) {
                actions += #[ att.createEdt(edtUp), att.createEdt(edtDown) ]
            }

        ] else EqxHyperlinkDescription.create [
            valueExpression = expr
            displayExpression = disp
            style = initStyle(HyperlinkWidgetStyle.create, att)
            // Navigation
            initialOperation = att.createNav
            val edtSet = if (att.aspect.get(Ext.list, false)) edtList1 else edtTree1
            actions += #[ att.createEdt(edtSet), att.createEdt(edtUns) ]
        ]

    }

    def <S extends WidgetStyle> initStyle(S it, EStructuralFeature f) {
        var used = if (f.derived) {
            labelFontFormat += FontFormat.ITALIC_LITERAL
            labelForegroundColor= disabled
            true
        } else false
        used = if (f.lowerBound > 0) {
            labelFontFormat += FontFormat.BOLD_LITERAL
            true
        } else false || used // no pre-empty evaluation
        if (used) it else null
    }
    
    def createEdt(EAttribute it) {
        val expression = "aql:self.eqxPut('" + name + "',newValue)"
        expression -> InitialOperation.create[
            firstModelOperations = ChangeContext.create[
                browseExpression = expression
            ]
        ]
    }
        
    def createNav(EReference it) {
        val card = if (many) "DoubleClick(onClickEventKind)" else "()"
        InitialOperation.create[
            firstModelOperations = ChangeContext.create[
                browseExpression = "aql:selection.selectInEqxExplorerView" + card
            ]
        ]
    }

    def siriusCustom(String prop, String value) {
        CustomExpression.create[
            name = prop
            customExpression = value
        ]
    }
    
    static val rs = new ResourceSetImpl()
    static def  getColor(String name) {
        val id = URI.createURI("environment:/viewpoint#//@systemColors/@entries[ name='"+name+"' ]")
        rs.getEObject(id, true) as ColorDescription
    } 
    
    
}