/**
 */
package fr.obeo.dsl.dart.dart.impl;

import fr.obeo.dsl.dart.dart.Asset;
import fr.obeo.dsl.dart.dart.Component;
import fr.obeo.dsl.dart.dart.Constructor;
import fr.obeo.dsl.dart.dart.Controller;
import fr.obeo.dsl.dart.dart.DartFactory;
import fr.obeo.dsl.dart.dart.DartPackage;
import fr.obeo.dsl.dart.dart.Decorator;
import fr.obeo.dsl.dart.dart.Export;
import fr.obeo.dsl.dart.dart.Folder;
import fr.obeo.dsl.dart.dart.Formatter;
import fr.obeo.dsl.dart.dart.Function;
import fr.obeo.dsl.dart.dart.HTML;
import fr.obeo.dsl.dart.dart.Import;
import fr.obeo.dsl.dart.dart.Library;
import fr.obeo.dsl.dart.dart.Metadata;
import fr.obeo.dsl.dart.dart.Module;
import fr.obeo.dsl.dart.dart.Parameter;
import fr.obeo.dsl.dart.dart.Project;
import fr.obeo.dsl.dart.dart.Route;
import fr.obeo.dsl.dart.dart.Stylesheet;
import fr.obeo.dsl.dart.dart.Typedef;
import fr.obeo.dsl.dart.dart.Variable;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class DartFactoryImpl extends EFactoryImpl implements DartFactory {
	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static DartFactory init() {
		try {
			DartFactory theDartFactory = (DartFactory)EPackage.Registry.INSTANCE.getEFactory(DartPackage.eNS_URI);
			if (theDartFactory != null) {
				return theDartFactory;
			}
		}
		catch (Exception exception) {
			EcorePlugin.INSTANCE.log(exception);
		}
		return new DartFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public DartFactoryImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public EObject create(EClass eClass) {
		switch (eClass.getClassifierID()) {
			case DartPackage.PROJECT: return createProject();
			case DartPackage.ASSET: return createAsset();
			case DartPackage.FOLDER: return createFolder();
			case DartPackage.PACKAGE: return createPackage();
			case DartPackage.IMPORT: return createImport();
			case DartPackage.EXPORT: return createExport();
			case DartPackage.LIBRARY: return createLibrary();
			case DartPackage.METADATA: return createMetadata();
			case DartPackage.CLASS: return createClass();
			case DartPackage.VARIABLE: return createVariable();
			case DartPackage.CONSTRUCTOR: return createConstructor();
			case DartPackage.FUNCTION: return createFunction();
			case DartPackage.PARAMETER: return createParameter();
			case DartPackage.TYPEDEF: return createTypedef();
			case DartPackage.HTML: return createHTML();
			case DartPackage.STYLESHEET: return createStylesheet();
			case DartPackage.MODULE: return createModule();
			case DartPackage.CONTROLLER: return createController();
			case DartPackage.COMPONENT: return createComponent();
			case DartPackage.DECORATOR: return createDecorator();
			case DartPackage.FORMATTER: return createFormatter();
			case DartPackage.ROUTE: return createRoute();
			default:
				throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
		}
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Project createProject() {
		ProjectImpl project = new ProjectImpl();
		return project;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Asset createAsset() {
		AssetImpl asset = new AssetImpl();
		return asset;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Folder createFolder() {
		FolderImpl folder = new FolderImpl();
		return folder;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public fr.obeo.dsl.dart.dart.Package createPackage() {
		PackageImpl package_ = new PackageImpl();
		return package_;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Import createImport() {
		ImportImpl import_ = new ImportImpl();
		return import_;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Export createExport() {
		ExportImpl export = new ExportImpl();
		return export;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Library createLibrary() {
		LibraryImpl library = new LibraryImpl();
		return library;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Metadata createMetadata() {
		MetadataImpl metadata = new MetadataImpl();
		return metadata;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public fr.obeo.dsl.dart.dart.Class createClass() {
		ClassImpl class_ = new ClassImpl();
		return class_;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Variable createVariable() {
		VariableImpl variable = new VariableImpl();
		return variable;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Constructor createConstructor() {
		ConstructorImpl constructor = new ConstructorImpl();
		return constructor;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Function createFunction() {
		FunctionImpl function = new FunctionImpl();
		return function;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Parameter createParameter() {
		ParameterImpl parameter = new ParameterImpl();
		return parameter;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Typedef createTypedef() {
		TypedefImpl typedef = new TypedefImpl();
		return typedef;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public HTML createHTML() {
		HTMLImpl html = new HTMLImpl();
		return html;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Stylesheet createStylesheet() {
		StylesheetImpl stylesheet = new StylesheetImpl();
		return stylesheet;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Module createModule() {
		ModuleImpl module = new ModuleImpl();
		return module;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Controller createController() {
		ControllerImpl controller = new ControllerImpl();
		return controller;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Component createComponent() {
		ComponentImpl component = new ComponentImpl();
		return component;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Decorator createDecorator() {
		DecoratorImpl decorator = new DecoratorImpl();
		return decorator;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Formatter createFormatter() {
		FormatterImpl formatter = new FormatterImpl();
		return formatter;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Route createRoute() {
		RouteImpl route = new RouteImpl();
		return route;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public DartPackage getDartPackage() {
		return (DartPackage)getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	@Deprecated
	public static DartPackage getPackage() {
		return DartPackage.eINSTANCE;
	}

} //DartFactoryImpl
