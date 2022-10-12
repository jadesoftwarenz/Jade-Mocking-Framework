jadeVersionNumber "22.0.00";
schemaDefinition
JadeMockSchema subschemaOf RootSchema completeDefinition;
constantDefinitions
	categoryDefinition JadeMockExceptions
		documentationText
		`Exception codes for the Jade Mock Framework.`
		MockError_MethodMockAlreadyCalled:Integer = 10001;
		documentationText
		`Method mock has already been called.`
		MockError_MockParameterValidationFailed:Integer = 10000;
		documentationText
		`Parameter validation failed. The errorText property contains more information.`
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
typeHeaders
	JadeMockSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	GJadeMockSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	JadeMockingFramework subclassOf Object abstract, transient, subschemaFinal, subclassTransientAllowed;
	JadeMethodMock subclassOf JadeMockingFramework transient, final, subschemaFinal, transientAllowed;
	JadeMock subclassOf JadeMockingFramework abstract, transient, subschemaFinal, subclassTransientAllowed;
	JadeClassMock subclassOf JadeMock transient, final, subschemaFinal, transientAllowed;
	JadeInterfaceMock subclassOf JadeMock transient, final, subschemaFinal, transientAllowed;
	JadeMockCallHistory subclassOf JadeMockingFramework transient, final, subschemaFinal, transientAllowed;
	JadeMockManager subclassOf JadeMockingFramework transient, final, subschemaFinal, transientAllowed;
	JadeMockParameters subclassOf JadeMockingFramework transient, subschemaFinal, transientAllowed, subclassTransientAllowed;
	JadeMockProperties subclassOf JadeMockingFramework transient, final, subschemaFinal, transientAllowed;
	SJadeMockSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	JadeMethodMockDict subclassOf MemberKeyDictionary loadFactor = 66, transient, final;
	JadeMockCallHistoriesByReceiverDict subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, transient, final;
	JadeMockAnyArray subclassOf Array;
interfaceDefs
	JadeMethodMockIF
	(
		documentationText
		`This interface defines the method that executes when a mocked method is called.`
	jadeMethodDefinitions
		methodMock(
			mockedMethod: Method; 
			receiver: Object input; 
			parameters: ParamListType io): Any;
		documentationText
`This method mocks a called to a mocked method. By default the method mock is actioned by the JadeMethodMock instance.`
	)
membershipDefinitions
	JadeMethodMockDict of JadeMethodMock;
	JadeMockCallHistoriesByReceiverDict of JadeMockCallHistory;
	JadeMockAnyArray of Any;
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	JadeMockSchema completeDefinition
	(
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GJadeMockSchema completeDefinition
	(
	)
	JadeMockingFramework completeDefinition
	(
		documentationText
`An abstract grouping superclass in the framework schema for classes relating to mocking. Has no properties, constants, or methods. All subclasses have transient instance lifetimes and are final to the schema - user subclasses are not allowed.`
	jadeMethodDefinitions
		zNormaliseValue(any: Any): Any protected, typeMethod;
		documentationText
`Convert an Object reference to a String. All other data types are returned unchanged.`
		zUnnormaliseValue(any: Any): Object protected, typeMethod;
		documentationText
		`Convert a String to an Object reference.`
	externalMethodDefinitions
		isMockedObject(object: Object): Boolean is "mockIsMockedObject" in "jom" typeMethod;
		documentationText
		`Determines if the object specified has been instantiated by any JadeClassMock.`
	)
	JadeMethodMock completeDefinition
	(
		documentationText
`Represents a mockery of a single method. This will keep track of the calls to the mocked method. Has methods to mock behaviour and methods useful for validating the calls in testing.`
	attributeDefinitions
		zAlwaysReturnsSameValue:       Boolean protected;
		documentationText
		`A fixed value has been provided to mock the return value.`
		zAlwaysUpdatesParametersSameValues:Boolean protected;
		documentationText
		`Fixed values have been provided to mock Usage IO or Usage Output parameters.`
		zAlwaysUpdatesPropertiesSameValues:Boolean protected;
		documentationText
		`Fixed values have been specified to mock updates to properties.`
		zMockedReturnValues:           JadeMockAnyArray protected;
		documentationText
		`Values to use to mock the return value.`
	referenceDefinitions
		zMethodMockIF:                 JadeMethodMockIF  protected;
		documentationText
`The instance that implements the method mock that is called when the mocked method is called.`
		zMock:                         JadeMock   explicitEmbeddedInverse, protected;
		documentationText
		`JadeClassMock or JadeInterfaceMock this mock belongs to.`
		zMockCallHistories:            ObjectArray  implicitMemberInverse, protected;
		documentationText
		`History of mocked method calls. In call order.`
		zMockCallHistoriesByReceiver:  JadeMockCallHistoriesByReceiverDict  implicitMemberInverse, protected;
		documentationText
		`History of mocked method calls. In receiver order.`
		zMockedMethod:                 Method  protected;
		documentationText
		`The method that has been mocked.`
		zMockedParameters:             ObjectArray  implicitMemberInverse, protected;
		documentationText
		`Names and values to use to mock Usage IO or Usage Output parameter values.`
		zMockedProperties:             ObjectArray  implicitMemberInverse, protected;
		documentationText
		`Properties and values to use to mock updates to properties.`
		zMockedReturnValueTypes:       TypeColl  implicitMemberInverse, protected;
		documentationText
		`Types of the values to use to mock the return value.`
		zMyMethodToAction:             JadeMethod  protected;
		documentationText
		`A transient method used to fake out the mocked method.`
	jadeMethodDefinitions
		alwaysReturns(returnValue: Any): JadeMethodMock updating;
		documentationText
		`Set the value that will always be returned when the method mock is called.`
		alwaysUpdatesParameters(values: ParamListType): JadeMethodMock updating;
		documentationText
`Set the values for usage io/output parameters that will always be returned when the method mock is called.`
		alwaysUpdatesProperties(propertiesAndValues: ParamListType): JadeMethodMock updating;
		documentationText
`Set the values for properties that will always be returned when the method mock is called.`
		clearCallHistory();
		documentationText
		`Clear the call history of the mock.`
		create(
			mock: JadeMock; 
			mockedMethod: Method) updating;
		documentationText
		`Constructor for a method mock.`
		delete() updating;
		documentationText
		`Destructor for a method mock.`
		getCallCount(): Integer;
		documentationText
		`Get the number of times this method mock was called.`
		getCallHistory(
			callIndex: Integer; 
			receiver: Any output; 
			parameters: JadeMockAnyArray input);
		documentationText
		`Get the receiver and parameters for a given call index.`
		getMockedMethod(): Method;
		documentationText
		`Get the method that this method mock mocks.`
		returns(returnValue: Any): JadeMethodMock updating;
		documentationText
		`Set the value that will be returned when the method mock is called. `
		updatesParameters(values: ParamListType): JadeMethodMock updating;
		documentationText
`Set the values for usage io/output parameters that will be returned when the method mock is called.`
		updatesProperties(propertiesAndValues: ParamListType): JadeMethodMock updating;
		documentationText
`Set the values for properties that will be updated when the method mock is called.`
		wasReceived(): Boolean;
		documentationText
`Was the mocked method received at least once, by any instance, with any parameters.`
		wasReceivedBy(receiver: Object): Boolean;
		documentationText
`Was the mocked method received at least once, by the receiver, with any parameters.`
		wasReceivedByWith(
			receiver: Object; 
			parameters: ParamListType): Boolean;
		documentationText
`Was the mocked method received at least once, by the receiver, with the parameters.`
		wasReceivedOnce(): Boolean;
		documentationText
		`Was the mocked method received once, by any receiver, with any parameters.`
		wasReceivedOnceBy(receiver: Object): Boolean;
		documentationText
		`Was the mocked method received once, by the receiver, with any parameters.`
		wasReceivedOnceByWith(
			receiver: Object; 
			parameters: ParamListType): Boolean;
		documentationText
		`Was the mocked method received once, by the receiver, with the parameters.`
		wasReceivedOnceWith(parameters: ParamListType): Boolean;
		documentationText
		`Was the mocked method received once, by any receiver, with the parameters.`
		wasReceivedWith(parameters: ParamListType): Boolean;
		documentationText
`Was the mocked method received at least once, by any receiver, with the parameters.`
		whenCalledDoes(actions: String): JadeMethodMock updating;
		documentationText
		`Provide a specific action to execute when the method mock is called.`
		whenCalledInvoke(
			targetContext: ApplicationContext; 
			mockMethodIF: JadeMethodMockIF): JadeMethodMock updating;
		documentationText
		`Provide an instance that will mock the method call.`
		zMockMethodCall(
			mockedMethod: Method; 
			receiver: Object input; 
			parameters: ParamListType io): Any updating, protected;
		documentationText
		`Mock a call to a mocked method.`
		zMockParameters(
			callHistory: JadeMockCallHistory input; 
			actualParameters: ParamListType io) updating, protected;
		documentationText
`Save the actual parameter values passed to mocked method and update any usage io/output parameters.`
		zMockProperties(receiver: Object input) updating, protected;
		documentationText
		`Update any properties with mocked values.`
		zMockReturnValue(): Any updating, protected;
		documentationText
		`Get the return value for the method being mocked.`
		zReturns(returnValue: Any) updating, protected;
		documentationText
`Set the value that will be returned when the method mock is called. 
Common code for the returns() and alwaysReturns() methods.`
		zUpdatesParameters(parameterNamesAndValues: ParamListType) updating, protected;
		documentationText
`Set the values for usage io/output parameters that will always be returned when the method mock is called.
Common code for the updatesParameters() and alwaysUpdatesParameters() methods.`
		zUpdatesProperties(propertiesAndValues: ParamListType) updating, protected;
		documentationText
`Set the values for properties that will be updated when the method mock is called.
Common code for the updatesProperties() and alwaysUpdatesProperties() methods.`
	externalMethodDefinitions
		isMethodMockRegistered(
			mockedMethod: Method; 
			methodMock: JadeMethodMock): Boolean is "mockIsMethodMockRegistered" in "jom";
		documentationText
		`Determine if the method mock is registered for the method.`
		zRegisterMethodMock(
			mockedMethod: Method; 
			methodMock: JadeMethodMock) is "mockRegisterMethodMock" in "jom" protected;
		documentationText
		`Register the method mock with the Object Manager. `
		zRegisterMethodMockReceiver(
			targetContext: ApplicationContext; 
			receiver: JadeMethodMockIF) is "mockRegisterMethodMockReceiver" in "jom" protected;
		zUnregisterMethodMock(methodMock: JadeMethodMock) is "mockUnregisterMethodMock" in "jom" protected;
		documentationText
		`Unregister the method mock with the Object Manager. `
	implementInterfaces
		JadeMethodMockIF
		(
			methodMock is zMockMethodCall;
		)
	)
	JadeMock completeDefinition
	(
		documentationText
`An abstract superclass in the framework schema for class and interface mocks. This class implements behaviour common to classes and interfaces.`
	attributeDefinitions
		zInjectedMockedObjects:        StringArray protected;
		documentationText
`The injected instances being mocked.
Membership is String because Subobject references (exclusive collection) cannot be added to an Array.`
	referenceDefinitions
		zMethodMocks:                  JadeMethodMockDict   explicitInverse, protected;
		documentationText
		`The method mocks.`
		zMockManager:                  JadeMockManager   explicitEmbeddedInverse, protected;
		documentationText
		`The mock manager.`
		zMockedType:                   Type  protected;
		documentationText
		`The class or interface that owns this mock.`
	jadeMethodDefinitions
		getMethodMock(meth: Method): JadeMethodMock;
		documentationText
		`Get the method mock for the specified method.`
		getMockedType(): Type;
		documentationText
		`Get the class or interface that owns this mock.`
		injectMockedObject(mockedObject: Object): JadeMock updating, abstract;
		documentationText
		`Records the specified object for which nominated method calls are mocked.`
	)
	JadeClassMock completeDefinition
	(
		documentationText
`Inherits from JadeMock. For a class mock, the instance holds references to instances of the mocked class, and forwards requests to these objects, mocking methods as required. These instances can be instantiated by the class mock or injected by the user.`
	constantDefinitions
		MockClassInstancesLifetime_NotSpecified:Integer = 0;
		documentationText
		`Method mocking is not enabled for any instance of any lifetime of this class.`
		MockClassInstancesLifetime_Persistent:Integer = 1;
		documentationText
		`Method mocking is enabled for all persistent instances of this class.`
		MockClassInstancesLifetime_SharedTransient:Integer = 3;
		documentationText
		`Method mocking is enabled for all shared transient instances of this class.`
		MockClassInstancesLifetime_Transient:Integer = 2;
		documentationText
		`Method mocking is enabled for all transient instances of this class.`
	attributeDefinitions
		zInstancesLifetime:            Integer protected;
		documentationText
`Specifies the lifetime of instances that the method calls are mocked.
The value must be one or more of the following Integer class constants:
	MockClassInstancesLifetime_None
	MockClassInstancesLifetime_Persistent
	MockClassInstancesLifetime_Transient
	MockClassInstancesLifetime_SharedTransient`
	referenceDefinitions
		zMockedObjects:                ObjectSet  implicitMemberInverse, protected;
		documentationText
`Transient instances of the class being mocked that have been instantiated by this class mock.`
	jadeMethodDefinitions
		clearAllMethodMocks();
		documentationText
		`Deletes all the method mocks for the class.`
		create(
			mockManager: JadeMockManager; 
			mockedClass: Class) updating;
		documentationText
		`Constructor for a class mock.`
		delete() updating;
		deleteMockedObject(mockedObject: Object) updating;
		documentationText
		`Delete the mocked object.`
		injectMockedObject(mockedObject: Object): JadeClassMock updating;
		documentationText
		`Records the specified object for which nominated method calls are mocked.`
		instantiateMockedObject(): Object updating;
		documentationText
		`Instantiate an instance of type of the class being mocked.`
		isObjectInstantiated(object: Object): Boolean;
		documentationText
		`Determines if the object specified has been instantiated by the JadeClassMock.`
		mockAllInstances(lifetime: Integer): JadeClassMock updating;
		documentationText
		`Methods are mocked for all instances of the class with the given lifetimes.`
		mockAllMethodsUpToClass(topClass: Class): JadeClassMock;
		documentationText
`Mock all methods in the class being mocked and all superclasses up to the given class.`
		mockImportedMethod(importedMethod: JadeImportedMethod): JadeMethodMock;
		documentationText
		`Mock the exported method for a method that has been imported in a package.`
		mockMethod(meth: Method): JadeMethodMock;
		zRegisterMethodMocks(methodMock: JadeMethodMock) protected;
		documentationText
		`Register the method mock for all instances mocking this class.`
		zUnregisterMethodMocks(methodMock: JadeMethodMock) protected;
		documentationText
		`Unregister the method mock for all instances mocking this class.`
	externalMethodDefinitions
		isMethodMockRegisteredForInstance(
			mockedObject: Object; 
			mockedMethod: Method): Boolean is "mockIsMethodMockRegisteredForInstance" in "jom";
		documentationText
		`Determines if a mock for the method is registered for the instance`
		zInstantiateMockedObject(mockedClass: Class): Object is "mockInstantiateMockedObject" in "jom" protected;
		documentationText
		`Instantiate a transient instance of the class being mocked.`
		zRegisterMethodMockForClassInstances(
			classNumber: Integer; 
			lifetime: Integer; 
			mockedMethod: Method; 
			methodMock: JadeMethodMock) is "mockRegisterMethodMockForClassInstances" in "jom" protected;
		documentationText
`Register a method mock for the method for all instances of the class with the given lifetimes.`
		zRegisterMethodMockForInstance(
			mockedObject: Object; 
			mockedMethod: Method; 
			methodMock: JadeMethodMock) is "mockRegisterMethodMockForInstance" in "jom" protected;
		documentationText
		`Register a method mock for the method for the specified instance.`
		zUnregisterMethodMockForClassInstances(
			classNumber: Integer; 
			lifetime: Integer; 
			mockedMethod: Method; 
			methodMock: JadeMethodMock) is "mockUnregisterMethodMockForClassInstances" in "jom" protected;
		documentationText
`Unregister the method mock for the method for all instances of the class with the given lifetimes.`
		zUnregisterMethodMockForInstance(
			mockedObject: Object; 
			mockedMethod: Method; 
			methodMock: JadeMethodMock) is "mockUnregisterMethodMockForInstance" in "jom" protected;
		documentationText
		`Unregister the method mock for the method for the specified instance.`
	)
	JadeInterfaceMock completeDefinition
	(
		documentationText
`Inherits from JadeMock. For an interface mock, the instance is the mocked interface, requests are forwarded to this object, mocking methods as required. The instance is instantiated by the user. Instances of any other class that implements the interface can be injected by the user.`
	jadeMethodDefinitions
		create(
			mockManager: JadeMockManager; 
			mockedInterface: JadeInterface) updating;
		documentationText
		`Constructor for an interface mock.`
		delete() updating;
		documentationText
		`Destructor for an interface mock.`
		injectMockedObject(mockedInterfaceObject: JadeInterfaceMock): JadeInterfaceMock updating;
		documentationText
`Records the specified object for which nominated interface method calls are mocked.`
		zRegisterInterfaceMethodMocks(mockedInterfaceObject: JadeInterfaceMock) updating, protected;
		documentationText
`Registers method mocks for each interface method, including all superinterfaces.`
		zUnregisterInterfaceMethodMocks() updating, protected;
		documentationText
`Unregisters the method mocks for each interface method, including all superinterfaces.`
	externalMethodDefinitions
		isInterfaceMethodMockRegistered(
			mockedObject: Object; 
			mockedMethod: JadeInterfaceMethod): Boolean is "mockIsInterfaceMethodMockRegistered" in "jom";
		documentationText
		`Determines if a mock is registered for the interface method for the instance.`
		isInterfaceMockRegistered(
			mockedObject: Object; 
			mockedInterface: JadeInterface): Boolean is "mockIsInterfaceMockRegistered" in "jom";
		documentationText
		`Determines if an interface mock is registered for the instance.`
		zRegisterInterfaceMethodMock(
			mockedObject: Object; 
			mockedMethod: JadeInterfaceMethod; 
			methodMock: JadeMethodMock) is "mockRegisterInterfaceMethodMock" in "jom" protected;
		documentationText
		`Register a mock for the interface method for the specified instance.`
		zRegisterInterfaceMock(
			mockedObject: Object; 
			mockedInterface: JadeInterface) is "mockRegisterInterfaceMock" in "jom" protected;
		documentationText
		`Register an interface mock for the specified instance.`
		zUnregisterInterfaceMethodMock(
			mockedObject: Object; 
			mockedMethod: JadeInterfaceMethod; 
			methodMock: JadeMethodMock) is "mockUnregisterInterfaceMethodMock" in "jom" protected;
		documentationText
		`Unregister the mock for the interface method for the specified instance.`
		zUnregisterInterfaceMock(
			mockedObject: Object; 
			mockedInterface: JadeInterface) is "mockUnregisterInterfaceMock" in "jom" protected;
		documentationText
		`Unregister the interface mock for the specified instance.`
	)
	JadeMockCallHistory completeDefinition
	(
		documentationText
`Represents a recorded history for a single call to a method of a mock. An instance is created when a method being mocked is called. The instance records the time of the call, the receiver and the parameters.`
	attributeDefinitions
		zCallTime:                     TimeStamp protected;
		documentationText
		`The time the mocked method was called.`
		zParameters:                   JadeMockAnyArray protected;
		documentationText
		`The mocked method call parameters.`
		zReceiver:                     String[101] protected;
		documentationText
`The mocked method call receiver.
This property is a String because subobject references (exclusive collection) cannot be added to an Array.`
	referenceDefinitions
		zMockedMethod:                 Method  protected;
		documentationText
		`The method being mocked.`
	jadeMethodDefinitions
		addParameterValue(parameterValue: Any) updating;
		documentationText
		`Add the parameter value to the call history.`
		compareParameters(parametersToCheck: JadeMockAnyArray): Boolean;
		documentationText
		`Compare the parameters with a list of values.`
		copyParameters(parameters: JadeMockAnyArray input);
		documentationText
		`Copy the parameters to the specified collection.`
		create(
			receiver: Object; 
			mockedMethod: Method) updating;
		documentationText
		`Constructor for a mock method call history.`
		getMockedMethod(): Method;
		documentationText
		`Returns the method being mocked of this JadeMockCallInstance instance.`
		getReceiver(): Object;
		documentationText
		`Returns the receiver of this JadeMockCallInstance instance.`
	)
	JadeMockManager completeDefinition
	(
		documentationText
`Class to manage mocking framework classes. The framework requires a transient instance of this class to allow method mocks to be created. Multiple managers are allowed, but a single instance should be enough for any given test suite. The JadeMockManager instance owns the JadeClassMock instances, these instances are deleted when the JadeMockManager instance is deleted.`
	referenceDefinitions
		zMocks:                        ObjectSet   explicitInverse, protected;
		documentationText
		`Collection of classes and interfaces that are being mocked.`
	jadeMethodDefinitions
		createClassMock(mockedClass: Class): JadeClassMock;
		documentationText
		`Create a class mock for the Class.`
		createInterfaceMock(mockedInterface: JadeInterface): JadeInterfaceMock;
		documentationText
		`Create an interface mock for the Interface.`
		deleteClassMock(classMock: JadeClassMock io) updating;
		documentationText
		`Delete a Class mock.`
		deleteInterfaceMock(interfaceMock: JadeInterfaceMock io) updating;
		documentationText
		`Delete an interface mock.`
	externalMethodDefinitions
		create() is "mockManagerCreate" in "jom" updating;
		documentationText
		`Constructor for a mock manager.`
		delete() is "mockManagerDelete" in "jom" updating;
		documentationText
		`Destructor for a mock manager.`
	)
	JadeMockParameters completeDefinition
	(
		documentationText
`The parameter names and values used to update Usage IO and Usage Output parameters when the method mock is called.`
	attributeDefinitions
		parameterIndexes:              IntegerArray;
		documentationText
`The index of the Usage IO or Usage Output parameters to update when the method mock is called.`
		parameterValues:               JadeMockAnyArray;
		documentationText
`The values used to update the Usage IO and Usage Output parameters when the method mock is called.`
	referenceDefinitions
		parameterTypes:                TypeColl  implicitMemberInverse;
		documentationText
`The type of Usage IO and Usage Output parameters that are updated when the method mock is called.`
	)
	JadeMockProperties completeDefinition
	(
		documentationText
`The properties and values used to update properties when the method mock is called.`
	attributeDefinitions
		propertyValues:                JadeMockAnyArray;
		documentationText
		`The values used to update the properties when the method mock is called.`
	referenceDefinitions
		properties:                    PropertyColl  implicitMemberInverse;
		documentationText
		`The properties to update when the method mock is called.`
	)
	JadeTestCase completeDefinition
	(
	)
	SchemaEntity completeDefinition
	(
	)
	Feature completeDefinition
	(
	)
	Script completeDefinition
	(
	)
	Routine completeDefinition
	(
	jadeMethodDefinitions
		getParameter(
			parameterName: String; 
			index: Integer output): Parameter;
		documentationText
		`Returns the parameter with the given name defined on this Routine instance.`
		getParameters(): ParameterColl;
		documentationText
		`Returns the parameters defined on this Routine instance.`
	)
	Type completeDefinition
	(
	jadeMethodDefinitions
		getLocalMethods(): MethodNDict;
		documentationText
		`Returns the methods defined on this Type instance.`
	)
	JadeInterface completeDefinition
	(
	jadeMethodDefinitions
		withAllSuperInterfaces(superInterfaces: JadeInterfaceColl input);
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SJadeMockSchema completeDefinition
	(
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	JadeMethodMockDict completeDefinition
	(
		documentationText
		`Maintains the methods being mocked on the Class or Interface.`
	)
	JadeMockCallHistoriesByReceiverDict completeDefinition
	(
		documentationText
		`Maintains the history of mocked method calls.`
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	JadeMockAnyArray completeDefinition
	(
		documentationText
`Utility array class for storing values of different types. Object references must be converted to Strings by the caller because exclusive subobject references cannot be added to an Array.`
	)
memberKeyDefinitions
	JadeMethodMockDict completeDefinition
	(
		zMockedMethod;
	)
	JadeMockCallHistoriesByReceiverDict completeDefinition
	(
		zReceiver;
	)
inverseDefinitions
	zMethodMocks of JadeMock automatic parentOf zMock of JadeMethodMock manual;
	zMocks of JadeMockManager automatic parentOf zMockManager of JadeMock manual;

databaseDefinitions
	JadeMockSchemaDb
	(
	databaseFileDefinitions
		"JadeMockSchema";
	defaultFileDefinition "JadeMockSchema";
	classMapDefinitions
		GJadeMockSchema in "JadeMockSchema";
		JadeClassMock in "JadeMockSchema";
		JadeInterfaceMock in "JadeMockSchema";
		JadeMethodMock in "JadeMockSchema";
		JadeMethodMockDict in "JadeMockSchema";
		JadeMock in "JadeMockSchema";
		JadeMockAnyArray in "JadeMockSchema";
		JadeMockCallHistoriesByReceiverDict in "JadeMockSchema";
		JadeMockCallHistory in "JadeMockSchema";
		JadeMockManager in "JadeMockSchema";
		JadeMockParameters in "JadeMockSchema";
		JadeMockProperties in "JadeMockSchema";
		JadeMockingFramework in "JadeMockSchema";
		SJadeMockSchema in "_environ";
	)
exportedPackageDefinitions
	JadeMockPackage
	(

	exportedClassDefinitions
		JadeClassMock transientAllowed, transient 
		(
		exportedConstantDefinitions
			MockClassInstancesLifetime_NotSpecified;
			MockClassInstancesLifetime_Persistent;
			MockClassInstancesLifetime_SharedTransient;
			MockClassInstancesLifetime_Transient;
		exportedMethodDefinitions
			clearAllMethodMocks;
			create;
			deleteMockedObject;
			injectMockedObject;
			instantiateMockedObject;
			isMethodMockRegisteredForInstance;
			mockAllInstances;
			mockAllMethodsUpToClass;
			mockImportedMethod;
			mockMethod;
		)
		JadeInterfaceMock transientAllowed, transient 
		(
		exportedMethodDefinitions
			create;
			injectMockedObject;
			isInterfaceMethodMockRegistered;
			isInterfaceMockRegistered;
		)
		JadeMethodMock transientAllowed, transient 
		(
		exportedMethodDefinitions
			alwaysReturns;
			alwaysUpdatesParameters;
			alwaysUpdatesProperties;
			clearCallHistory;
			create;
			getCallCount;
			getCallHistory;
			getMockedMethod;
			isMethodMockRegistered;
			returns;
			updatesParameters;
			updatesProperties;
			wasReceived;
			wasReceivedBy;
			wasReceivedByWith;
			wasReceivedOnce;
			wasReceivedOnceBy;
			wasReceivedOnceByWith;
			wasReceivedOnceWith;
			wasReceivedWith;
			whenCalledDoes;
			whenCalledInvoke;
		)
		JadeMock transient 
		(
		exportedMethodDefinitions
			getMethodMock;
			getMockedType;
			injectMockedObject;
		)
		JadeMockAnyArray
		(
		)
		JadeMockManager transientAllowed, transient 
		(
		exportedMethodDefinitions
			createClassMock;
			createInterfaceMock;
			deleteClassMock;
			deleteInterfaceMock;
		)
		JadeMockingFramework transient 
		(
		exportedMethodDefinitions
			isMockedObject;
		)
	exportedInterfaceDefinitions
		JadeMethodMockIF
	)
typeSources
	JadeMockingFramework (
	jadeMethodSources
zNormaliseValue
{
zNormaliseValue(any : Any) : Any protected, typeMethod;

// --------------------------------------------------------------------------------
// Method:		JadeMockingFramework@zNormaliseValue()
//
// Purpose:		This method converts an Object reference to a String.
//				This is required in some situations because subobject references (exclusive collection) cannot be added to an Array.
//				
//				All other data types are returned unchanged.
//
// Parameters:	any - the value to convert.
//
// Returns:		The normalised value as a String.
// --------------------------------------------------------------------------------

begin
	if any.isKindOf(Object) then
		return selfType.getObjectStringForObject(any.Object);
	endif;
	
	return any;
end;
}
zUnnormaliseValue
{
zUnnormaliseValue(any : Any) : Object protected, typeMethod;

// --------------------------------------------------------------------------------
// Method:		JadeMockingFramework@zUnnormaliseValue()
//
// Purpose:		This method converts a String to an Object reference.
//				This is required in some situations because subobject references (exclusive collection) cannot be added to an Array.
//				
//				It is up to the caller of this method to ensure that the normalised value is an Object reference.
//
// Parameters:	any - the value to convert.
//
// Returns:		The unnormalised value as an Object Reference.
// --------------------------------------------------------------------------------

begin
	return any.String.asObject();
end;
}
	externalMethodSources
isMockedObject
{
isMockedObject(object : Object) : Boolean is mockIsMockedObject in jom typeMethod;

// --------------------------------------------------------------------------------
// Method:		JadeMockingFramework@isMockedObject()
//
// Purpose:		Determines if the object specified has been instantiated by any JadeClassMock.
//
// Parameters:	object - the instance.
//
// Returns:		Returns true if the object specified has been instantiated by any JadeClassMock, or false if it is not.
// --------------------------------------------------------------------------------
}
	)
	JadeMethodMock (
	jadeMethodSources
alwaysReturns
{
alwaysReturns(returnValue : Any) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::alwaysReturns()
//
// Purpose:		Set the value that will always be returned when the method mock is called.
//
// Parameters:	returnValue - the value to return.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - can only have one fixed return value
	if zMockedReturnValues.size() <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Fixed return value has already been specified");
	endif;
	// validation - make sure the method mock has not already been called
	if zMockCallHistories.size() <> 0 then
		SystemException.raise_(MockError_MethodMockAlreadyCalled, "Method mock has already been called");
	endif;

	zReturns(returnValue);
	
	zAlwaysReturnsSameValue := true;

	return self;
end;
}
alwaysUpdatesParameters
{
alwaysUpdatesParameters(values : ParamListType) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::alwaysUpdatesParameters()
//
// Purpose:		Set the values for usage io/output parameters that will always be returned when the method mock is called.
//
// Parameters:	propertiesAndValues - variable list of pairs of parameter names and values:
//					parameter		- the name of the parameter to update.
//					value			- the value to set.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - parameter values already specified
	if zMockedParameters.size() <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Fixed parameter values have already been specified");
	endif;
	// validation - make sure the method mock has not already been called
	if zMockCallHistories.size() <> 0 then
		SystemException.raise_(MockError_MethodMockAlreadyCalled, "Method mock has already been called");
	endif;
	
	zUpdatesParameters(values);

	zAlwaysUpdatesParametersSameValues := true;

	return self;
end;
}
alwaysUpdatesProperties
{
alwaysUpdatesProperties(propertiesAndValues : ParamListType) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::alwaysUpdatesProperties()
//
// Purpose:		Set the values for properties that will always be returned when the method mock is called.
//
// Parameters:	propertiesAndValues - variable list of pairs of properties and values:
//					property		- the property to update.
//					value			- the property value to set.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - properties already specified
	if zMockedProperties.size() <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Fixed parameter values have already been specified");
	endif;
	// validation - make sure the method mock has not already been called
	if zMockCallHistories.size() <> 0 then
		SystemException.raise_(MockError_MethodMockAlreadyCalled, "Method mock has already been called");
	endif;
	
	zUpdatesProperties(propertiesAndValues);
	
	zAlwaysUpdatesPropertiesSameValues  := true;

	return self;
end;
}
clearCallHistory
{
clearCallHistory();

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::clearCallHistory()
//
// Purpose:		Clear the call history of the mock.
// --------------------------------------------------------------------------------

begin
	self.zMockCallHistories.purge();
	self.zMockCallHistoriesByReceiver.clear();
end;
}
create
{
create(mock : JadeMock; mockedMethod : Method) updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::create()
//
// Purpose:		Constructor for a method mock.
//
//				Initialise default values.
//				Establish inverses.
//				Register the method mock with the Object Manager.
//
// Parameters:	mock 			- the class or interface mock creating the method mock.
//				mockedMethod	- the method being mocked.
// --------------------------------------------------------------------------------

begin
	self.zMockedMethod := mockedMethod;
	self.zAlwaysReturnsSameValue := false;
	self.zAlwaysUpdatesParametersSameValues := false;
	
	// by default, this instance implements the method mock that is called when the mocked method is called
	self.zMethodMockIF := self;

	self.zMock := mock;	// JadeClassMock or JadeInterfaceMock

	// register the method mock with the Object Manager
	zRegisterMethodMock(mockedMethod, self);
end;
}
delete
{
delete() updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::delete()
//
// Purpose:		Destructor for a method mock.
//
//				Delete captured data.
//				Unregister the method mock with the Object Manager.
// --------------------------------------------------------------------------------

begin
	if zMyMethodToAction <> null then
		process.deleteTransientMethod(zMyMethodToAction);
	endif;
	zMockCallHistories.purge();
	zMockedParameters.purge();
	zMockedProperties.purge();
	
	zUnregisterMethodMock(self);
end;
}
getCallCount
{
getCallCount() : Integer;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::getCallCount()
//
// Purpose:		Get the number of times this method mock was called.
//
// Returns:		The number of times this method mock was called.
// --------------------------------------------------------------------------------

begin
	return zMockCallHistories.size();
end;
}
getCallHistory
{
getCallHistory(callIndex : Integer; receiver : Any output; parameters : JadeMockAnyArray input);

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::getCallHistory()
//
// Purpose:		Get the receiver and parameters for a given call index.
//
// Parameters:	callIndex	- the index of the method call.
//				receiver	- the receiver for the method call (output).
//				parameters	- the parameter values for the method call (output).
//
// Returns:		The receiver and parameters for a given call index.
// --------------------------------------------------------------------------------

begin
	// validation - call index must be valid
	if callIndex < 1 or callIndex > zMockCallHistories.size() then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Invalid call level");
	endif;
	
	receiver := zMockCallHistories[ callIndex ].JadeMockCallHistory.getReceiver();
	
	parameters.clear();
	zMockCallHistories[ callIndex ].JadeMockCallHistory.copyParameters(parameters);
end;
}
getMockedMethod
{
getMockedMethod() : Method;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::getMockedMethod()
//
// Purpose:		Get the method that this method mock mocks.
//
// Returns:		The method that this method mock mocks.
// --------------------------------------------------------------------------------

begin
	return zMockedMethod;
end;
}
returns
{
returns(returnValue : Any) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::alwaysReturns()
//
// Purpose:		Set the value that will be returned when the method mock is called. 
//
//				This method can be called multiple times to return consecutive values.
//
// Parameters:	returnValue - the value to return.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - single fixed return value already specified
	if zAlwaysReturnsSameValue then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Fixed return value has already been specified");
	endif;
	// validation - make sure the method mock has not already been called
	if zMockCallHistories.size() <> 0 then
		SystemException.raise_(MockError_MethodMockAlreadyCalled, "Method mock has already been called");
	endif;

	zReturns(returnValue);

	return self;
end;
}
updatesParameters
{
updatesParameters(values : ParamListType) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::updatesParameters()
//
// Purpose:		Set the values for usage io/output parameters that will be returned when the method mock is called.
//
//				This method can be called multiple times to return consecutive values.
//
// Parameters:	propertiesAndValues - variable list of pairs of parameter names and values:
//					parameter		- the name of the parameter to update.
//					value			- the value to set.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - fixed parameter values already specified
	if zAlwaysUpdatesParametersSameValues then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Fixed parameter values have already been specified");
	endif;
	// validation - make sure the method mock has not already been called
	if zMockCallHistories.size() <> 0 then
		SystemException.raise_(MockError_MethodMockAlreadyCalled, "Method mock has already been called");
	endif;
	
	zUpdatesParameters(values);
	
	return self;
end;
}
updatesProperties
{
updatesProperties(propertiesAndValues : ParamListType) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::updatesProperties()
//
// Purpose:		Set the values for properties that will be updated when the method mock is called.
//
//				This method can be called multiple times to return consecutive values.
//
// Parameters:	propertiesAndValues - variable list of pairs of properties and values:
//					property		- the property to update.
//					value			- the property value to set.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - properties to udpate have already specified
	if zAlwaysUpdatesPropertiesSameValues then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Fixed parameter values have already been specified");
	endif;
	// validation - make sure the method mock has not already been called
	if zMockCallHistories.size() <> 0 then
		SystemException.raise_(MockError_MethodMockAlreadyCalled, "Method mock has already been called");
	endif;

	zUpdatesProperties(propertiesAndValues);
	
	return self;
end;
}
wasReceived
{
wasReceived() : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceived()
//
// Purpose:		Was the mocked method received at least once, by any instance, with any parameters.
//
// Returns:		True if the mocked method was received at least once, by any instance, with any parameters, otherwise false.
// --------------------------------------------------------------------------------

begin
	return not zMockCallHistories.isEmpty();
end;
}
wasReceivedBy
{
wasReceivedBy(receiver : Object) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceivedBy()
//
// Purpose:		Was the mocked method received at least once, by the receiver, with any parameters.
//
// Parameters:	receiver - the receiver.
//
// Returns:		True if the mocked method was received at least once, by the receiver, with any parameters, otherwise false.
// --------------------------------------------------------------------------------

begin
	return zMockCallHistoriesByReceiver[ zNormaliseValue(receiver).String ] <> null;
end;
}
wasReceivedByWith
{
wasReceivedByWith(receiver : Object; parameters : ParamListType) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceivedWithBy()
//
// Purpose:		Was the mocked method received at least once, by the receiver, with the parameters.
//
// Parameters:	receiver 	- the receiver.
//				parameters	- the parameters.
//
// Returns:		True if the mocked method was received at least once, by the receiver, with the parameters, otherwise false.
// --------------------------------------------------------------------------------

vars
	iterator				: Iterator;
	mockCallHistory 		: JadeMockCallHistory;
	anyArray 				: JadeMockAnyArray;
	i						: Integer;

begin
	iterator := zMockCallHistoriesByReceiver.createIterator();
	zMockCallHistoriesByReceiver.startKeyGeq(zNormaliseValue(receiver).String, iterator);
	if not iterator.next(mockCallHistory) or mockCallHistory.getReceiver() <> receiver then
		return false;
	endif;
	anyArray := create JadeMockAnyArray() transient;
	foreach i in 1 to app.getParamListTypeLength(parameters) do
		anyArray.add(zNormaliseValue(app.getParamListTypeEntry(i, parameters)));
	endforeach;
	foreach mockCallHistory in self.zMockCallHistories as JadeMockCallHistory do
		if mockCallHistory.compareParameters(anyArray) then
			return true;
		endif;
	endforeach;
	return false;
	
epilog
	delete iterator;
	delete anyArray;
end;
}
wasReceivedOnce
{
wasReceivedOnce() : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceivedOnce()
//
// Purpose:		Was the mocked method received once, by any receiver, with any parameters.
//
// Returns:		True if the mocked method was received once, by any receiver, with any parameters, otherwise false.
// --------------------------------------------------------------------------------

begin
	return zMockCallHistories.size() = 1;
end;
}
wasReceivedOnceBy
{
wasReceivedOnceBy(receiver : Object) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceivedOnceBy()
//
// Purpose:		Was the mocked method received once, by the receiver, with any parameters.
//
// Parameters:	receiver - the receiver.
//
// Returns:		True if the mocked method was received once, by the receiver, with any parameters, otherwise false.
// --------------------------------------------------------------------------------

vars
	iterator				: Iterator;
	mockCallHistory			: JadeMockCallHistory;

begin
	iterator := zMockCallHistoriesByReceiver.createIterator();
	zMockCallHistoriesByReceiver.startKeyGeq(zNormaliseValue(receiver).String, iterator);
	if not iterator.next(mockCallHistory) or mockCallHistory.getReceiver() <> receiver or mockCallHistory.getMockedMethod() <> zMockedMethod then
		return false;
	endif;
	return not iterator.next(mockCallHistory) or mockCallHistory.getReceiver() <> receiver or mockCallHistory.getMockedMethod() <> zMockedMethod;
	
epilog
	delete iterator;
end;
}
wasReceivedOnceByWith
{
wasReceivedOnceByWith(receiver : Object; parameters : ParamListType) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceivedOnceByWith()
//
// Purpose:		Was the mocked method received once, by the receiver, with the parameters.
//
// Parameters:	receiver 	- the receiver.
//				parameters	- the parameters.
//
// Returns:		True if the mocked method was received once, by the receiver, with the parameters, otherwise false.
// --------------------------------------------------------------------------------

vars
	anyArray 				: JadeMockAnyArray;
	iterator				: Iterator;
	mockCallHistory			: JadeMockCallHistory;
	nextMockCallHistory		: JadeMockCallHistory;
	i						: Integer;

begin
	anyArray := create JadeMockAnyArray() transient;
	foreach i in 1 to app.getParamListTypeLength(parameters) do
		// convert an oid to a string to allow for subobjects (exclusive collections)
		anyArray.add(zNormaliseValue(app.getParamListTypeEntry(i, parameters)));
	endforeach;
	iterator := zMockCallHistoriesByReceiver.createIterator();
	zMockCallHistoriesByReceiver.startKeyGeq(zNormaliseValue(receiver).String, iterator);
	if not iterator.next(mockCallHistory) or mockCallHistory.getReceiver() <> receiver or mockCallHistory.getMockedMethod ()<> zMockedMethod then
		return false;
	endif;
	if not iterator.next(nextMockCallHistory) or nextMockCallHistory.getReceiver() <> receiver or mockCallHistory.getMockedMethod() <> zMockedMethod then
		return zMockCallHistories.size() = 1 and zMockCallHistories.first().JadeMockCallHistory.compareParameters(anyArray);
	endif;
	return false;
	
epilog
	delete iterator;
end;
}
wasReceivedOnceWith
{
wasReceivedOnceWith(parameters : ParamListType) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceivedOnceBy()
//
// Purpose:		Was the mocked method received once, by any receiver, with the parameters.
//
// Parameters:	parameters	- the parameters.
//
// Returns:		True if the mocked method was received once, by any receiver, with the parameters, otherwise false.
// --------------------------------------------------------------------------------

vars
	anyArray 				: JadeMockAnyArray;
	i						: Integer;

begin
	anyArray := create JadeMockAnyArray() transient;
	foreach i in 1 to app.getParamListTypeLength(parameters) do
		// convert an oid to a string to allow for subobjects (exclusive collections)
		anyArray.add(zNormaliseValue(app.getParamListTypeEntry(i, parameters)));
	endforeach;
	return zMockCallHistories.size() = 1 and zMockCallHistories.first().JadeMockCallHistory.compareParameters(anyArray);
	
epilog
	delete anyArray;
end;
}
wasReceivedWith
{
wasReceivedWith(parameters : ParamListType) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::wasReceivedWith()
//
// Purpose:		Was the mocked method received at least once, by any receiver, with the parameters.
//
// Parameters:	parameters	- the parameters.
//
// Returns:		True if the mocked method was received once, by any receiver, with the parameters, otherwise false.
// --------------------------------------------------------------------------------

vars
	anyArray 				: JadeMockAnyArray;
	mockCallHistory 		: JadeMockCallHistory;
	i						: Integer;

begin
	anyArray := create JadeMockAnyArray() transient;
	foreach i in 1 to app.getParamListTypeLength(parameters) do
		// convert an oid to a string to allow for subobjects (exclusive collections)
		anyArray.add(zNormaliseValue(app.getParamListTypeEntry(i, parameters)));
	endforeach;
	foreach mockCallHistory in self.zMockCallHistories as JadeMockCallHistory do
		if mockCallHistory.compareParameters(anyArray) then
			return true;
		endif;
	endforeach;
	return false;
	
epilog
	delete anyArray;
end;
}
whenCalledDoes
{
whenCalledDoes(actions : String) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::whenCalledDoes()
//
// Purpose:		Provide a specific action to execute when the method mock is called.
//
//				The actions are specified as a JADE code snippet. A transient method is
//				created to execute this code.
//
// Parameters:	actions	- JADE code snippet to execute when the method mock is called.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

vars
	methodName				: String;
	source					: String;
	parameter				: Parameter;
	errorCode				: Integer;
	errorPosition			: Integer;
	errorLength				: Integer;

begin
	// validation - action already defined
	if zMyMethodToAction <> null then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Action already specified");
	endif;

	// construct a unique name for the method
	methodName := "_mockAction_" & zMock.getMockedType().number.String & "_" & zMockedMethod.number.String & "_" & getInstanceIdForObject64(self).String;
	source := "(";
	foreach parameter in zMockedMethod.getParameters() do
		if source <> "(" then
			source &= ";";
		endif;
		source &= parameter.format();
	endforeach;
	source := methodName & source & ")";
	if zMockedMethod.isTypeMethod() then
		source &= " typeMethod;" & CrLf;
	else 
		source &= " updating;" & CrLf;
	endif;
	// allow for constants or local variables
	if not((actions.length() > 9 and actions[ 1 : 9 ] = "constants") or (actions.length() > 4 and actions[ 1 : 4 ] = "vars")) then
		source &= "begin" & CrLf;
	endif;
	source &= actions;
	if not(actions.length() > 4 and actions[ actions.length() - 4 : end ] = "end;") then
		source &= CrLf & "end;";
	endif;

	zMyMethodToAction := process.createTransientMethod(methodName, zMock.getMockedType(), zMock.getMockedType().schema, source, false /*isWorkspaceMethod*/, null /*returnType*/, errorCode, errorPosition, errorLength);

	// error handling 
	if errorCode <> 0 or zMyMethodToAction = null then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Error " & errorCode.String & " compiling action - " & app.getMessageText(errorCode));
	endif;
	
	return self;
end;
}
whenCalledInvoke
{
whenCalledInvoke(targetContext : ApplicationContext; mockMethodIF : JadeMethodMockIF) : JadeMethodMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::whenCalledInvoke()
//
// Purpose:		Provide an instance that will mock the method call.
//
//				This method mock replaces the default mock zMockMethodCall().
//
// Parameters:	targetContext	- the application context in which to call the mock method.
//				mockMethodIF	- the method mock receiver.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - can not combine with fixed return value
	if zMockedReturnValues.size() <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked return value has been specified");
	endif;
	// validation - can not combine with updating parameters
	if zMockedParameters.size() <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked parameter values have been specified");
	endif;
	
	zMethodMockIF := mockMethodIF;
	
	zRegisterMethodMockReceiver(targetContext, zMethodMockIF);
	
	return self;
end;
}
zMockMethodCall
{
zMockMethodCall(mockedMethod : Method; receiver : Object input; parameters : ParamListType io) : Any updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zMockMethodCall()
//
// Purpose:		Mock a call to a mocked method.
//
//				This method implements the JadeMockSchema::JadeMethodMockIF::methodMock() interface method.
//				This method is called when a method being mocked is called.
//				The receiver and parameters are captured and any IO or Output parameters are updated.
//				Any properties are updated with mocked values.
//				An optional user-defined action is performed.
//				The return value is mocked.
//
// Parameters:	mockedMethod- the method being mocked.
//				receiver	- the receiver of the method call being mocked.
//				parameters	- the parameters to the method call being mocked (I/O).
//
// Returns:		The mocked return value.
// --------------------------------------------------------------------------------

vars
	callHistory				: JadeMockCallHistory;
	methodToActionReceiver	: Object;

begin
	callHistory := create JadeMockCallHistory(receiver, zMockedMethod) transient;
	zMockCallHistories.add(callHistory);
	
	// record the method call and receiver
	zMockCallHistoriesByReceiver.add(callHistory);
	
	// save the parameter values passed in and update any usage io/output parameters
	zMockParameters(callHistory, parameters);

	// mock any properties
	zMockProperties(receiver);

	if zMyMethodToAction <> null then
		// any return value is ignored
		if zMockedMethod.isTypeMethod() then
			methodToActionReceiver := zMock.getMockedType();
		else
			methodToActionReceiver := receiver;
		endif;
		if app.getParamListTypeLength(parameters) > 0 then
			process.executeTransientMethod(zMyMethodToAction, methodToActionReceiver, parameters);
		else
			process.executeTransientMethod(zMyMethodToAction, methodToActionReceiver);
		endif;
	endif;
	
	// get return value
	return zMockReturnValue();
end;
}
zMockParameters
{
zMockParameters(callHistory : JadeMockCallHistory input; actualParameters : ParamListType io) updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zMockParameters()
//
// Purpose:		Save the actual parameter values passed to mocked method and update any usage io/output parameters.
//
// Parameters:	callHistory 		- the call history for the method mock.
//				actualParameters	- the actual parameters to the method call being mocked (I/O).
// --------------------------------------------------------------------------------

vars
	callIndex				: Integer;
	updateParameters		: Boolean;
	mockParameters			: JadeMockParameters;
	parameterIndex			: Integer;
	parameterValue			: Any;
	parameterType			: Type;
	i						: Integer;

begin
	if zAlwaysUpdatesParametersSameValues then
		// always update same values
		callIndex := 1;
	else
		callIndex := zMockCallHistories.size();
	endif;
	
	// save the parameter values
	foreach i in 1 to app.getParamListTypeLength(actualParameters) do
		// convert an oid to a string to allow for subobjects (exclusive collections)
		callHistory.addParameterValue(zNormaliseValue(app.getParamListTypeEntry(i, actualParameters)));
	endforeach;

	// nothing more to do if we've run out of values
	if callIndex > zMockedParameters.size() then
		return;
	endif;

	// update usage io/output parameters
	mockParameters := zMockedParameters[ callIndex ].JadeMockParameters;
	foreach i in 1 to mockParameters.parameterIndexes.size() do
		parameterIndex := mockParameters.parameterIndexes[ i ];
		parameterValue := mockParameters.parameterValues[ i ];
		parameterType := mockParameters.parameterTypes[ i ];
		// oids are converted to strings to allow for subobject (exclusive collection) references
		if parameterType.isKindOf(Class) then
			parameterValue := zUnnormaliseValue(parameterValue);
		endif;
		app.setParamListTypeEntry(parameterIndex, parameterValue, actualParameters);
	endforeach;
end;
}
zMockProperties
{
zMockProperties(receiver : Object input) updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zMockProperties()
//
// Purpose:		Update any properties with mocked values.
//
// Parameters:	receiver - the receiver of the mocked method call.
// --------------------------------------------------------------------------------

vars
	callIndex				: Integer;
	mockPropertyValues		: JadeMockProperties;
	i						: Integer;

begin
	if zAlwaysUpdatesPropertiesSameValues then
		// always update same values
		callIndex := 1;
	else
		callIndex := zMockCallHistories.size();
	endif;
	
	// nothing to do if we've run out of values
	if callIndex > zMockedProperties.size() then
		return;
	endif;
	
	// update the properties
	mockPropertyValues := zMockedProperties[ callIndex ].JadeMockProperties;
	foreach i in 1 to mockPropertyValues.properties.size() do
		receiver.setPropertyValue(mockPropertyValues.properties[ i ].name, mockPropertyValues.propertyValues[ i ]);
	endforeach;
end;
}
zMockReturnValue
{
zMockReturnValue() : Any updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zMockParameters()
//
// Purpose:		Get the return value for the method being mocked.
//
// Returns:		The return value.
// --------------------------------------------------------------------------------

vars
	callIndex				: Integer;
	returnValue				: Any;

begin
	if zAlwaysReturnsSameValue then
		// only one return value
		callIndex := 1;
	else
		callIndex := zMockCallHistories.size();
	endif;
	
	// null return if return not set or not enough values
	if callIndex > zMockedReturnValues.size() then
		return null;
	endif;
	
	// multiple values specified - return the next one
	returnValue := zMockedReturnValues[ callIndex ];
	
	// oids are converted to strings to allow for subobject (exclusive collection) references
	if zMockedMethod.returnType.type.isKindOf(Class) or zMockedReturnValueTypes[ callIndex ].isKindOf(Class) then
		returnValue := zUnnormaliseValue(returnValue);
	endif;

	return returnValue;
end;
}
zReturns
{
zReturns(returnValue : Any) updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zReturns()
//
// Purpose:		Set the value that will be returned when the method mock is called. 
//
//				Common code for the returns() and alwaysReturns() methods.
//
// Parameters:	returnValue - the value to return.
// --------------------------------------------------------------------------------

vars
	returnValueType			: Type;
	returnType				: Type;

begin
	// validation - method must have a return value
	if zMockedMethod.returnType = null then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked method does not have a return value");
	endif;
	// validation - user defined method to invoke already specified
	if zMethodMockIF <> self then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Another method mock is defined");
	endif;
	returnValueType := returnValue.getType();
	returnType := zMockedMethod.returnType.type;
	// validation - the type of the value must be of the return type
	if returnType.isKindOf(PrimType) then
		if returnType <> Any and returnValueType <> returnType then
			SystemException.raise_(MockError_MockParameterValidationFailed, "Type of value differs to the type of the method return value");
		endif;
	elseif returnType.isKindOf(Class) then
		if not returnValueType.isKindOf(returnType.Class) then
			SystemException.raise_(MockError_MockParameterValidationFailed, "Type of value differs to the type of the method return value");
		endif;
	endif;

	// convert an oid to a string to allow for subobjects (exclusive collections)
	zMockedReturnValues.add(zNormaliseValue(returnValue));
	
	// save the type of the return value so that Objects can be converted back to correct type
	zMockedReturnValueTypes.add(returnValueType);
end;
}
zUpdatesParameters
{
zUpdatesParameters(parameterNamesAndValues : ParamListType) updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zUpdatesParameters()
//
// Purpose:		Set the values for usage io/output parameters that will always be returned when the method mock is called.
//
//				Common code for the updatesParameters() and alwaysUpdatesParameters() methods.
//
// Parameters:	parameterNamesAndValues - variable list of pairs of properties and values:
//					parameterName	- the name of the parameter to update.
//					value			- the value to set.
// --------------------------------------------------------------------------------

vars
	mockParameters			: JadeMockParameters;
	parameterName			: String;
	parameter				: Parameter;
	parameterIndex			: Integer;
	parameterValue			: Any;
	parameterType			: Type;
	valueType				: Type;
	i						: Integer;

begin
	// validation - method must have parameters
	if zMockedMethod.getParameters().size() = 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked method does not have parameters");
	endif;
	// validation - must be given a list of pair of parameter names and values
	if app.getParamListTypeLength(parameterNamesAndValues) = 0 or app.getParamListTypeLength(parameterNamesAndValues) mod 2 <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Invalid parameter name and value pairs");
	endif;
	// validation - user defined method to invoke already specified
	if zMethodMockIF <> self then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Another method mock is defined");
	endif;

	mockParameters := create JadeMockParameters() transient;
	zMockedParameters.add(mockParameters);
	
	foreach i in 1 to app.getParamListTypeLength(parameterNamesAndValues) step 2 do
		parameterName := app.getParamListTypeEntry(i, parameterNamesAndValues).String;
		parameterValue := app.getParamListTypeEntry(i + 1, parameterNamesAndValues);
		valueType := parameterValue.getType();
		parameter := zMockedMethod.getParameter(parameterName, parameterIndex);
		// validation - parameter must exist
		if parameter = null then
			SystemException.raise_(MockError_MockParameterValidationFailed, "Parameter " & parameterName & " is not defined");
		endif;
		parameterType := parameter.type; 
		// validation - parameter must be usage io or output
		if parameter.usage <> Parameter.Usage_IO and parameter.usage <> Parameter.Usage_Output then
			SystemException.raise_(MockError_MockParameterValidationFailed, "Parameter " & i.String & " is not be usage io or output");
		endif;
		// validation - value must be of the correct type
		if parameterType.isKindOf(PrimType) then
			if parameterType <> Any and parameterType <> valueType then
				SystemException.raise_(MockError_MockParameterValidationFailed, "Type of parameter value " & i.String & " differs to the type of the method parameter");
			endif;
		elseif parameterType.isKindOf(Class) then
			if not valueType.isKindOf(parameterType.Class) then
				SystemException.raise_(MockError_MockParameterValidationFailed, "Type of parameter value " & i.String & " differs to the type of the method parameter");
			endif;
		endif;

		mockParameters.parameterIndexes.add(parameterIndex);
		
		// convert an oid to a string to allow for subobjects (exclusive collections)
		mockParameters.parameterValues.add(zNormaliseValue(parameterValue));
		
		// save the type of the parameter value so that Objects can be converted back to correct type
		mockParameters.parameterTypes.add(valueType);
	endforeach;
end;
}
zUpdatesProperties
{
zUpdatesProperties(propertiesAndValues : ParamListType) updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zUpdatesProperties()
//
// Purpose:		Set the values for properties that will be updated when the method mock is called.
//
//				Common code for the updatesProperties() and alwaysUpdatesProperties() methods.
//
// Parameters:	propertiesAndValues - variable list of pairs of properties and values:
//					property		- the property to update.
//					value			- the property value to set.
// --------------------------------------------------------------------------------

vars
	mockProperties			: JadeMockProperties;
	property 				: Property;
	value 					: Any;
	i						: Integer;

begin
	// validation - user defined method to invoke already specified
	if zMethodMockIF <> self then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Another method mock is defined");
	endif;
	// validation - must be given a list of pair of properties and values
	if app.getParamListTypeLength(propertiesAndValues) = 0 or app.getParamListTypeLength(propertiesAndValues) mod 2 <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Invalid property and value pairs");
	endif;

	mockProperties := create JadeMockProperties() transient;
	zMockedProperties.add(mockProperties);

	foreach i in 1 to app.getParamListTypeLength(propertiesAndValues) step 2 do
		property := app.getParamListTypeEntry(i, propertiesAndValues).Property;
		value := app.getParamListTypeEntry(i + 1, propertiesAndValues);
		// validation - property must be defined on a class that inherits from the receiving class
		if not property.schemaType.inheritsFrom(zMock.getMockedType()) then
			SystemException.raise_(MockError_MockParameterValidationFailed, "Property " & i.String & " is not defined on a class that inherits from the receiving class");
		endif;
		// validation - value must be of the correct type
		if property.type.isKindOf(PrimType) then
			if property.type <> value.getType() then
				SystemException.raise_(MockError_MockParameterValidationFailed, "Type of property " & i.String & " differs to the type of the value");
			endif;
		elseif property.type.isKindOf(Class) then
			if not value.getType().isKindOf(property.type.Class) then
				SystemException.raise_(MockError_MockParameterValidationFailed, "Type of property " & i.String & " differs to the type of the value");
			endif;
		endif;
		
		mockProperties.properties.add(property);
		mockProperties.propertyValues.add(value);
	endforeach;
end;
}
	externalMethodSources
isMethodMockRegistered
{
isMethodMockRegistered(mockedMethod : Method; methodMock: JadeMethodMock) : Boolean is mockIsMethodMockRegistered in jom;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMocking::isMethodMockRegistered()
//
// Purpose:		Determine if the method mock is registered for the method.
//
// Parameters:	mockedMethod 	- the method.
//				methodMock		- the method mock.
//
// Returns:		Returns true if the method mock is registered for the method, or false if it is not.
// --------------------------------------------------------------------------------
}
zRegisterMethodMock
{
zRegisterMethodMock(mockedMethod : Method; methodMock : JadeMethodMock) is mockRegisterMethodMock in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zRegisterMethodMock()
//
// Purpose:		Register the method mock with the Object Manager. 
//
//				The class/interface mock associates each method mock with the instances that are mocking the method.
//
// Parameters:	mockedMethod	- the method being mocked.
//				methodMock		- the method mock.
// --------------------------------------------------------------------------------
}
zRegisterMethodMockReceiver
{
zRegisterMethodMockReceiver(targetContext : ApplicationContext; receiver : JadeMethodMockIF) is mockRegisterMethodMockReceiver in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zRegisterMethodMock()
//
// Purpose:		Set the instance that will receive the mock when the mocked method is called.
//
// Parameters:	targetContext	- the application context in which to call the mock method.
//				receiver		- the method mock receiver.
// --------------------------------------------------------------------------------
}
zUnregisterMethodMock
{
zUnregisterMethodMock(methodMock : JadeMethodMock) is mockUnregisterMethodMock in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeMethodMock::zRegisterMethodMock()
//
// Purpose:		Unregister the method mock with the Object Manager. 
//
// Parameters:	methodMock		- the method mock.
// --------------------------------------------------------------------------------
}
	)
	JadeMock (
	jadeMethodSources
getMethodMock
{
getMethodMock(meth : Method) : JadeMethodMock;

// --------------------------------------------------------------------------------
// Method:		JadeMock::getMethodMock()
//
// Purpose:		Get the method mock for the specified method.
//
// Parameters:	meth - the method being mocked.
//
// Returns:		The method mock for the specified method, null if not found.
// --------------------------------------------------------------------------------

begin
	return zMethodMocks.getAtKey(meth);
end;
}
getMockedType
{
getMockedType() : Type;

// --------------------------------------------------------------------------------
// Method:		JadeMock::getMockedType()
//
// Purpose:		Get the class or interface that owns this mock.
//
// Returns:		The class or interface that owns this mock.
// --------------------------------------------------------------------------------

begin
	return zMockedType;
end;
}
injectMockedObject
{
injectMockedObject(mockedObject: Object): JadeMock updating, abstract;

// --------------------------------------------------------------------------------
// Method:		JadeMock::injectMockedObject()
//
// Purpose:		Records the specified object for which nominated method calls are mocked.
//				This must be an instance of the class or interface for which methods are being mocked.
//				The lifetime of the instance can be persistent, transient or shared transient.
//				This instance will *not* be deleted when the class or interface mock is deleted.
//
// Parameters:	mockedObject	- the instance to inject for mocking.
//
// Returns:		The class or interface mock instance.
// --------------------------------------------------------------------------------
}
	)
	JadeClassMock (
	jadeMethodSources
clearAllMethodMocks
{
clearAllMethodMocks();

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::clearAllMethodMocks()
//
// Purpose:		Deletes all the method mocks for the class.
//
//				All method mocks are unregistered.
// --------------------------------------------------------------------------------

begin
	// validation - no methods mocked
	if zMethodMocks.size() = 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "No method mocks defined");
	endif;

	zMethodMocks.purge();
end;
}
create
{
create(mockManager : JadeMockManager; mockedClass : Class) updating;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::create()
//
// Purpose:		Constructor for a class mock.
//
// Parameters:	mockManager		- the JadeMockManager instance that is creating this class mock.
//				mockedClass		- the class being mocked.
// --------------------------------------------------------------------------------

begin
	self.zInstancesLifetime := MockClassInstancesLifetime_NotSpecified;
	self.zMockedType := mockedClass;
	self.zMockManager := mockManager;
end;
}
delete
{
delete() updating;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::delete()
//
// Purpose:		Destructor for a class mock.
//
//				Unregisters the method mocks for each method being mocked.
//				Delete any mocked objects that still exist. Destructors are not called.
//				Note: injected mocked instances are not deleted.
//
//				The method mocks collection is purged by way of a parent-child relationship.
// --------------------------------------------------------------------------------

vars
	mockedObject			: Object;
	methodMock				: JadeMethodMock;

begin
	// unregister the method mocks with the Object Manager
	foreach methodMock in zMethodMocks do
		zUnregisterMethodMocks(methodMock);
	endforeach;

	// delete any mocked objects that still exists. destructors are not called.
	foreach mockedObject in zMockedObjects do
		if app.isValidObject(mockedObject) then
			delete mockedObject;
		endif;
	endforeach;
end;
}
deleteMockedObject
{
deleteMockedObject(mockedObject : Object) updating;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::deleteMockedObject()
//
// Purpose:		Delete the mocked object.
//
// Parameters:	mockedObject	- the mocked instance to delete.
// --------------------------------------------------------------------------------

vars
	mockedInstance			: Object;

begin
	// remove the instance from the collection of mocked instances that have been created
	if not zMockedObjects.tryRemove(mockedObject) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Object has not been instantiated");
	endif;
	
	// now delete the instance
	mockedInstance := mockedObject;
	delete mockedInstance;
end;
}
injectMockedObject
{
injectMockedObject(mockedObject : Object) : JadeClassMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::injectMockedObject()
//
// Purpose:		Records the specified object for which nominated method calls are mocked.
//				This must be an instance of the class for which methods are being mocked.
//				The lifetime of the instance can be persistent, transient or shared transient.
//				This instance will *not* be deleted when the class mock is deleted.
//
// Parameters:	mockedObject	- the instance to inject for mocking.
//
// Returns:		The class mock instance.
// --------------------------------------------------------------------------------

vars
	methodMock				: JadeMethodMock;
	validLifetime			: Boolean;

begin
	// validation - null is not allowed
	if mockedObject = null then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Object being injected is null");
	endif;
	// validation - object being injected must be a subclass of the mock class
	if not mockedObject.isKindOf(zMockedType.Class) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Class of object being injected is invalid");
	endif;
	// validation - all instances not selected
	if zInstancesLifetime <> MockClassInstancesLifetime_NotSpecified then
		validLifetime := (isObjectPersistent(mockedObject) and zInstancesLifetime.bitAnd(MockClassInstancesLifetime_Persistent) <> 0) or
						 (isObjectTransient(mockedObject) and zInstancesLifetime.bitAnd(MockClassInstancesLifetime_Transient) <> 0) or
						 (isObjectSharedTransient(mockedObject) and zInstancesLifetime.bitAnd(MockClassInstancesLifetime_SharedTransient) <> 0);
		if not validLifetime then
			SystemException.raise_(MockError_MockParameterValidationFailed, "All instances of the Class are mocked");
		endif;
	endif;
	// validation - disallow injecting a locally instantiated object
	if zMockedObjects.includes(mockedObject) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Object being injected is already mocked");
	endif;
	// validation - disallow injecting a object already injected
	if zInjectedMockedObjects.includes(zNormaliseValue(mockedObject).String) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Object being injected has already been injected");
	endif;

	// save the oid of the injected object as a string to allow for subobjects (exclusive collections)
	zInjectedMockedObjects.add(zNormaliseValue(mockedObject).String);

	// register method mocks for the injected object
	foreach methodMock in zMethodMocks do
		zRegisterMethodMockForInstance(mockedObject, methodMock.getMockedMethod(), methodMock);
	endforeach;
	
	return self;
end;
}
instantiateMockedObject
{
instantiateMockedObject() : Object updating;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::instantiateMockedObject()
//
// Purpose:		Instantiate an instance of type of the class being mocked.
//
//				The constructors are *not* called - all properties are initialised to null.
//
//				This instance will be deleted when the class mock is deleted - destructors will not be called.
//
// Returns:		The instantiated instance.
// --------------------------------------------------------------------------------

vars
	mockedObject			: Object;
	methodMock				: JadeMethodMock;

begin
	// validation - mocked class not defined or mocked object already instantiated
	if zMockedType = null then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked class not defined");
	endif;
	// validation - all class instances not selected
	if zInstancesLifetime <> MockClassInstancesLifetime_NotSpecified then
		SystemException.raise_(MockError_MockParameterValidationFailed, "All instances of the class are being mocked");
	endif;
	// validation - class cannot be abstract
	if zMockedType.abstract then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked class is abstract");
	endif;
	// validation - instantiation of collections is not allowed - the collection blocks must be deleted by the destructor
	if zMockedType.inheritsFrom(Collection) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked class is a Collection");
	endif;
	
	// create the instance
	mockedObject := zInstantiateMockedObject(zMockedType.Class);
	
	// save the instance so it can be deleted in the destructor
	zMockedObjects.add(mockedObject);
	
	// register method mocks for the instantiated object
	foreach methodMock in zMethodMocks do
		zRegisterMethodMockForInstance(mockedObject, methodMock.getMockedMethod(), methodMock);
	endforeach;
	
	return mockedObject;
end;
}
isObjectInstantiated
{
isObjectInstantiated(object : Object) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::isObjectInstantiated()
//
// Purpose:		Determines if the object specified has been instantiated by the JadeClassMock.
//
// Parameters:	object - the instance.
//
// Returns:		Returns true if the object specified has been instantiated by the JadeClassMock, or false if it is not.
// --------------------------------------------------------------------------------

begin
	return zMockedObjects.includes(object);
end;
}
mockAllInstances
{
mockAllInstances(lifetime : Integer) : JadeClassMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::mockAllInstances()
//
// Purpose:		Methods are mocked for all instances of the class with the given lifetimes.
//
// Parameters:	lifetime	- specifies the lifetime of instances that the method calls are mocked.
//
//				The value of the lifetime parameter must be the sum of one or more of the following Integer JadeClassMock class constants:
//								- MockClassInstancesLifetime_Persistent
//								- MockClassInstancesLifetime_Transient
//								- MockClassInstancesLifetime_SharedTransient
//
// Returns:		The class mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - no mocked objects can be instantiated
	if zMockedObjects.size() <> 0 and zInjectedMockedObjects.size() <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Mocked instances are already specified");
	endif;
	// validation - lifetime already specified
	if zInstancesLifetime.bitAnd(lifetime) <> 0 then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Class lifetime has already been specified");
	endif;
	// validation - ensure valid lifetime 
	if lifetime <> MockClassInstancesLifetime_Persistent and lifetime <> MockClassInstancesLifetime_Transient and lifetime <> MockClassInstancesLifetime_SharedTransient then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Invalid class instance lifetime");
	endif;

	zInstancesLifetime := zInstancesLifetime.bitOr(lifetime);
	
	return self;
end;
}
mockAllMethodsUpToClass
{
mockAllMethodsUpToClass(topClass : Class) : JadeClassMock;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::mockAllMethodsUpToClass()
//
// Purpose:		Mock all methods in the class being mocked and all superclasses up to the given class.
//
//				Method mocks are created for methods on the root type and any subschema copies.
//
// Parameters:	topClass - mock all methods up to, and including, this class.
//
// Returns:		The class mock instance.
// --------------------------------------------------------------------------------

vars
	classes					: ClassColl;
	class					: Class;
	meth					: Method;

begin
	// validation - no mocked objects can be instantiated
	if not zMockedType.inheritsFrom(topClass) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "topClass is not related to the class being mocked");
	endif;

	// get all the necessary classes
	classes := create ClassColl() transient;
	zMockedType.Class.allSuperclassesUpTo(classes, topClass);
	classes.add(zMockedType.Class);

	// create mocks for all methods on each class
	foreach class in classes do
		// create mocks for the methods on this class
		foreach meth in class.getLocalMethods() do
			// skip the constructor and destructor
			if meth.isConstructor() or meth.isDestructor() then
				continue;
			endif;
			// skip systemOnly methods
			if meth.__systemOnly() then
				continue;
			endif;
			mockMethod(meth);
		endforeach;
		// if the class is a subschema copy include the methods on the roottype
		if class._isSubschemaCopy() then
			foreach meth in class.rootType().getLocalMethods() do
				// skip the constructor and destructor
				if meth.isConstructor() or meth.isDestructor() then
					continue;
				endif;
				// skip systemOnly methods
				if meth.__systemOnly() then
					continue;
				endif;
				mockMethod(meth);
			endforeach;
		endif;
	endforeach;
	
	return self;

epilog
	delete classes;
end;
}
mockImportedMethod
{
mockImportedMethod(importedMethod : JadeImportedMethod) : JadeMethodMock;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::mockImportedMethod()
//
// Purpose:		Mock the exported method for a method that has been imported in a package.
//
// Returns:		The method mock instance.
// -------------------------------------------------------------------------------

begin
	return mockMethod(importedMethod.exportedMethod.method);
end;
}
mockMethod
{
mockMethod(meth : Method) : JadeMethodMock;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::mockMethod()
//
// Purpose:		Mock the method for all instantiated and injected instances being mocked by this class.
//
// Parameters:	method - the method to mock.
//
// Returns:		The method mock instance.
// --------------------------------------------------------------------------------

vars
	methodMock				: JadeMethodMock;
	normalExit				: Boolean;

begin
	// validation - method must be on the class being mocked 
	if method.schemaType.isKindOf(zMockedType.Class) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Method is not defined on the class being mocked");
	endif;
	// validation - method cannot be a constructor or destructor
	if meth.isConstructor() or meth.isDestructor() then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Cannot mock a constructor or destructor");
	endif;
	// validation - method cannot be systemOnly
	if meth.__systemOnly() then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Cannot mock a systemOnly method");
	endif;

	methodMock := create JadeMethodMock(self, meth) transient;
	
	// register the method mock with the instances that are mocking the method.
	zRegisterMethodMocks(methodMock);
	
	normalExit := true;

	return methodMock;
	
epilog
	if not normalExit then
		// if something went wrong registering the method mock delete the instance now
		// to prevent unregistering the method mock twice when the class mock is deleted
		delete methodMock;
	endif;
end;
}
zRegisterMethodMocks
{
zRegisterMethodMocks(methodMock : JadeMethodMock) protected;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::zRegisterMethodMock()
//
// Purpose:		Register the method mock for all instances mocking this class.
//
//				The method mock is registered for either all instantiated and injected instances
//				of all instances of the class with the previously specified lifetimes.
//
// Parameters:	methodMock		- the method mock to register.
// --------------------------------------------------------------------------------

vars
	mockedMethod			: Method;
	mockedObject			: Object;
	oidString				: String;

begin
	mockedMethod := methodMock.getMockedMethod();
	if mockedMethod.isTypeMethod() then
		// register the method mock for a type method against the class the method is defined on
		zRegisterMethodMockForInstance(mockedMethod.schemaType, mockedMethod, methodMock);
	else
		if zInstancesLifetime = MockClassInstancesLifetime_NotSpecified then
			// register the method mock for all instantiated instances
			foreach mockedObject in zMockedObjects do
				zRegisterMethodMockForInstance(mockedObject, mockedMethod, methodMock);
			endforeach;
			// register the method mock for all injected instances
			foreach oidString in zInjectedMockedObjects do
				zRegisterMethodMockForInstance(zUnnormaliseValue(oidString), mockedMethod, methodMock);
			endforeach;
		else
			// register the method mock for all instances of the class with the previously specified lifetimes
			zRegisterMethodMockForClassInstances(zMockedType.number, zInstancesLifetime, mockedMethod, methodMock);
		endif;
	endif;
end;
}
zUnregisterMethodMocks
{
zUnregisterMethodMocks(methodMock : JadeMethodMock) protected;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::zUnRegisterMethodMock()
//
// Purpose:		Unregister the method mock for all instances mocking this class.
//
//				The method mock is unregistered for either all instantiated and injected instances
//				of all instances of the class with the previously specified lifetimes.
//
// Parameters:	methodMock		- the method mock to unregister.
// --------------------------------------------------------------------------------

vars
	mockedMethod			: Method;
	mockedObject			: Object;
	oidString				: String;

begin
	mockedMethod := methodMock.getMockedMethod();
	if mockedMethod.isTypeMethod() then
		// unregister the method mock for a type method from the class the method is defined on
		zUnregisterMethodMockForInstance(mockedMethod.schemaType, mockedMethod, methodMock);
	else
		if zInstancesLifetime = MockClassInstancesLifetime_NotSpecified then
			// unregister the method mock for all instantiated instances
			foreach mockedObject in zMockedObjects do
				zUnregisterMethodMockForInstance(mockedObject, mockedMethod, methodMock);
			endforeach;
			// unregister the method mock for all injected instances
			foreach oidString in zInjectedMockedObjects do
				zUnregisterMethodMockForInstance(zUnnormaliseValue(oidString), mockedMethod, methodMock);
			endforeach;
		else
			// unregister the method mock for all instances of the class with the previously specified lifetimes
			zUnregisterMethodMockForClassInstances(zMockedType.number, zInstancesLifetime, mockedMethod, methodMock);
		endif;
	endif;
end;
}
	externalMethodSources
isMethodMockRegisteredForInstance
{
isMethodMockRegisteredForInstance(mockedObject : Object; mockedMethod : Method) : Boolean is mockIsMethodMockRegisteredForInstance in jom;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::isMethodMockRegisteredForInstance()
//
// Purpose:		Determines if a mock for the method is registered for the instance.
//
// Parameters:	mockedMethod 	- the method.
//				methodMock		- the method mock.
//
// Returns:		Returns true if a mock for the method is registered for the instance, or false if it is not.
// --------------------------------------------------------------------------------
}
zInstantiateMockedObject
{
zInstantiateMockedObject(mockedClass : Class) : Object is mockInstantiateMockedObject in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::zInstantiateMockedObject()
//
// Purpose:		Instantiate a transient instance of the class being mocked. Constructors are not called.
//
// Parameters:	mockedClass	- the Class of the instance to create.
//
// Returns:		The instantiated instance.
// --------------------------------------------------------------------------------
}
zRegisterMethodMockForClassInstances
{
zRegisterMethodMockForClassInstances(classNumber : Integer; lifetime : Integer; mockedMethod : Method; methodMock : JadeMethodMock) is mockRegisterMethodMockForClassInstances in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::zRegisterMethodMockForClassInstances()
//
// Purpose:		Register a method mock for the method for all instances of the class with the given lifetimes.
//
// Parameters:	classNumber		- the number of Class for which method calls are to be mocked.
//				lifetime		- specifies the lifetime of instances that the method calls are mocked.
//				mockedMethod	- the method to mock.
//				methodMock		- the method mock for the method being mocked.
//
//				The value of the lifetime parameter must be the sum of one or more of the following Integer JadeClassMock class constants:
//								- MockClassInstancesLifetime_Persistent
//								- MockClassInstancesLifetime_Transient
//								- MockClassInstancesLifetime_SharedTransient
// --------------------------------------------------------------------------------
}
zRegisterMethodMockForInstance
{
zRegisterMethodMockForInstance(mockedObject : Object; mockedMethod : Method; methodMock : JadeMethodMock) is mockRegisterMethodMockForInstance in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::zRegisterMethodMockForInstance()
//
// Purpose:		Register a method mock for the method for the specified instance.
//
// Parameters:	mockedObject	- the instance for which method calls are to be mocked.
//				mockedMethod	- the method to mock.
//				methodMock		- the method mock for the method being mocked.
// --------------------------------------------------------------------------------
}
zUnregisterMethodMockForClassInstances
{
zUnregisterMethodMockForClassInstances(classNumber : Integer; lifetime : Integer; mockedMethod : Method; methodMock : JadeMethodMock) is mockUnregisterMethodMockForClassInstances in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::zUnregisterMethodMockForClassInstances()
//
// Purpose:		Unregister the method mock for the method for all instances of the class with the given lifetimes.
//
// Parameters:	classNumber		- the number of Class for which method calls are to being mocked.
//				lifetime		- specifies the lifetime of instances that the method calls are mocked.
//				mockedMethod	- the method being mocked.
//				methodMock		- the method mock for the method being mocked.
//
//				The value of the lifetime parameter must be the sum of one or more of the following Integer JadeClassMock class constants:
//								- MockClassInstancesLifetime_Persistent
//								- MockClassInstancesLifetime_Transient
//								- MockClassInstancesLifetime_SharedTransient
// --------------------------------------------------------------------------------
}
zUnregisterMethodMockForInstance
{
zUnregisterMethodMockForInstance(mockedObject : Object; mockedMethod : Method; methodMock : JadeMethodMock) is mockUnregisterMethodMockForInstance in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeClassMock::zUnegisterMethodMockForInstance()
//
// Purpose:		Unregister the method mock for the method for the specified instance.
//
// Parameters:	mockedObject	- the instance for which method calls are being mocked.
//				mockedMethod	- the method being mocked.
//				methodMock		- the method mock for the method being mocked.
// --------------------------------------------------------------------------------
}
	)
	JadeInterfaceMock (
	jadeMethodSources
create
{
create(mockManager : JadeMockManager; mockedInterface : JadeInterface) updating;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::create()
//
// Purpose:		Constructor for an interface mock.
//
//				Registers method mocks for each interface method, including all superinterfaces.
//
// Parameters:	mockManager		- the JadeMockManager instance that is creating this interface mock.
//				mockedInterface	- the interface being mocked.
// --------------------------------------------------------------------------------

begin
	self.zMockedType := mockedInterface;
	self.zMockManager := mockManager;
	
	// register method mocks for each interface method, including all superinterfaces
	zRegisterInterfaceMethodMocks(self);
end;
}
delete
{
delete() updating;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::delete()
//
// Purpose:		Destructor for an interface mock.
//
//				Unregisters the method mocks for each interface method, including all superinterfaces.
//
//				The method mocks collection is purged by way of a parent-child relationship.
// --------------------------------------------------------------------------------

begin
	// unregister the method mocks for each interface method, including all superinterfaces
	zUnregisterInterfaceMethodMocks();
end;
}
injectMockedObject
{
injectMockedObject(mockedInterfaceObject : JadeInterfaceMock) : JadeInterfaceMock updating;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::injectMockedInterfaceObject()
//
// Purpose:		Records the specified mocked interface instance for which nominated interface method calls are mocked.
//				This must be an existing interface mock instance.
//				This instance will *not* be deleted when the interface mock is deleted.
//
// Parameters:	mockedInterfaceObject	- the mocked interface instance to inject for mocking.
//
// Returns:		The interface mock instance.
// --------------------------------------------------------------------------------

begin
	// validation - null is not allowed
	if mockedInterfaceObject = null then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Object being injected is null");
	endif;
	// validation - object being injected must be a mocked interface instance
	if not mockedInterfaceObject.isKindOf(JadeInterfaceMock) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Class of object being injected is invalid");
	endif;
	// validation - disallow injecting a locally instantiated object
	if mockedInterfaceObject = self then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Object being injected is already mocked");
	endif;
	// validation - disallow injecting a object already injected
	if zInjectedMockedObjects.includes(zNormaliseValue(mockedInterfaceObject).String) then
		SystemException.raise_(MockError_MockParameterValidationFailed, "Object being injected has already been injected");
	endif;

	// save the oid of the injected object as a string to allow for subobjects (exclusive collections)
	zInjectedMockedObjects.add(zNormaliseValue(mockedInterfaceObject).String);

	// register method mocks for the injected object
	zRegisterInterfaceMethodMocks(mockedInterfaceObject);
	
	return self;
end;
}
zRegisterInterfaceMethodMocks
{
zRegisterInterfaceMethodMocks(mockedInterfaceObject : JadeInterfaceMock) updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::zRegisterInterfaceMethodMocks()
//
// Purpose:		Registers method mocks for each interface method, including all superinterfaces.
//
// Parameters:	mockedObject	- the mocked interface instance for which method calls are to be mocked.
// --------------------------------------------------------------------------------

vars
	mockedMethod			: JadeInterfaceMethod;
	methodMock				: JadeMethodMock;
	interfaces				: JadeInterfaceColl;
	interface				: JadeInterface;
	receiver				: Object;

begin
	// populate a collection with this interface and all superinterfaces
	interfaces := create JadeInterfaceColl() transient;
	zMockedType.JadeInterface.withAllSuperInterfaces(interfaces);

	foreach interface in interfaces do
		// skip this interface is a mock has already been registered for this interface
		if isInterfaceMockRegistered(mockedInterfaceObject, interface) then
			continue;
		endif;
		
		// register an interface mock for each interface
		zRegisterInterfaceMock(mockedInterfaceObject, interface);

		// register an interface method mock for the created instance for each interface method
		foreach mockedMethod in interface.getLocalMethods() as JadeInterfaceMethod do
			methodMock := create JadeMethodMock(mockedInterfaceObject, mockedMethod) transient;
			if mockedMethod.isTypeMethod() then
				// register the method mock for a type method against the class of the mock instance
				receiver := mockedInterfaceObject.class();
			else
				receiver := mockedInterfaceObject;
			endif;
			zRegisterInterfaceMethodMock(receiver, mockedMethod, methodMock);
		endforeach;
	endforeach;
	
epilog
	delete interfaces;
end;
}
zUnregisterInterfaceMethodMocks
{
zUnregisterInterfaceMethodMocks() updating, protected;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::zUnregisterInterfaceMethodMocks()
//
// Purpose:		Unregisters the method mocks for each interface method, including all superinterfaces.
//
//				The method mocks collection is purged by way of a parent-child relationship.
// --------------------------------------------------------------------------------

vars
	interfaces				: JadeInterfaceColl;
	interface				: JadeInterface;
	methodMock				: JadeMethodMock;
	oidString				: String;
	mockedInterfaceObject 	: JadeInterfaceMock;
	receiver				: Object;

begin
	// populate a collection with this interface and all superinterfaces
	interfaces := create JadeInterfaceColl() transient;
	zMockedType.JadeInterface.withAllSuperInterfaces(interfaces);

	// unregister the interface mock for this interface and all superinterfaces
	foreach interface in interfaces do
		// skip this interface if the mock has already been unregistered 
		if not isInterfaceMockRegistered(self, interface) then
			continue;
		endif;
		
		zUnregisterInterfaceMock(self, interface);
	endforeach;

	// unregister the interface and method mocks for all injected interface instances
	foreach oidString in zInjectedMockedObjects do
		mockedInterfaceObject := zUnnormaliseValue(oidString).JadeInterfaceMock;
		foreach interface in interfaces do
			// skip this interface if the mock has already been unregistered 
			if not isInterfaceMockRegistered(mockedInterfaceObject, interface) then
				continue;
			endif;

			zUnregisterInterfaceMock(mockedInterfaceObject, interface);
		endforeach;
	endforeach;
	
	// unregister the interface method mocks for the instance mocking the interface method
	foreach methodMock in zMethodMocks do
		if methodMock.getMockedMethod().isTypeMethod() then
			// register the method mock for a type method against the class of the mock instance
			receiver := self.class();
		else
			receiver := self;
		endif;

		zUnregisterInterfaceMethodMock(receiver, methodMock.getMockedMethod().JadeInterfaceMethod, methodMock);
	endforeach;

epilog
	delete interfaces;
end;
}
	externalMethodSources
isInterfaceMethodMockRegistered
{
isInterfaceMethodMockRegistered(mockedObject : Object; mockedMethod : JadeInterfaceMethod) : Boolean is mockIsInterfaceMethodMockRegistered in jom;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::isInterfaceMethodMockRegistered()
//
// Purpose:		Determines if a mock is registered for the interface method for the instance.
//
// Parameters:	mockedMethod 	- the method.
//				methodMock		- the method mock.
//
// Returns:		Returns true if a mock is registered for the interface method for the instance, or false if it is not.
// --------------------------------------------------------------------------------
}
isInterfaceMockRegistered
{
isInterfaceMockRegistered(mockedObject : Object; mockedInterface : JadeInterface) : Boolean is mockIsInterfaceMockRegistered in jom;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::isInterfaceMockRegistered()
//
// Purpose:		Determines if an interface mock is registered for the instance.
//
// Parameters:	mockedObject 	- the instance.
//				mockedInterface	- the interface mock.
//
// Returns:		Returns true if an interface mock is registered for the instance, or false if it is not.
// --------------------------------------------------------------------------------
}
zRegisterInterfaceMethodMock
{
zRegisterInterfaceMethodMock(mockedObject : Object; mockedMethod : JadeInterfaceMethod; methodMock : JadeMethodMock) is mockRegisterInterfaceMethodMock in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::zRegisterInterfaceMethodMock()
//
// Purpose:		Register a mock for the interface method for the specified instance.
//
// Parameters:	mockedObject	- the instance that mocks the interface.
//				mockedMethod	- the interface method being mocked.
//				methodMock		- the method mock that mocks this interface method.
// --------------------------------------------------------------------------------
}
zRegisterInterfaceMock
{
zRegisterInterfaceMock(mockedObject : Object; mockedInterface : JadeInterface) is mockRegisterInterfaceMock in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::zRegisterInterfaceMock()
//
// Purpose:		Register an interface mock for the specified instance.
//
// Parameters:	mockedObject	- the instance that mocks the interface.
//				mockedInterface	- the interface being mocked.
// --------------------------------------------------------------------------------
}
zUnregisterInterfaceMethodMock
{
zUnregisterInterfaceMethodMock(mockedObject : Object; mockedMethod : JadeInterfaceMethod; methodMock : JadeMethodMock) is mockUnregisterInterfaceMethodMock in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::zUnRegisterInterfaceMethodMock()
//
// Purpose:		Unregister the mock for the interface method for the specified instance.
//
// Parameters:	mockedObject	- the instance that mocks the interface.
//				mockedMethod	- the interface method being mocked.
//				methodMock		- the method mock that mocks this interface method.
// --------------------------------------------------------------------------------
}
zUnregisterInterfaceMock
{
zUnregisterInterfaceMock(mockedObject : Object; mockedInterface : JadeInterface) is mockUnregisterInterfaceMock in jom protected;

// --------------------------------------------------------------------------------
// Method:		JadeInterfaceMock::zRegisterInterfaceMethodMock()
//
// Purpose:		Unregister the interface mock for the specified instance.
//
// Parameters:	mockedObject	- the instance that mocks the interface.
//				mockedInterface	- the interface being mocked.
// --------------------------------------------------------------------------------
}
	)
	JadeMockCallHistory (
	jadeMethodSources
addParameterValue
{
addParameterValue(parameterValue : Any) updating;

// --------------------------------------------------------------------------------
// Method:		JadeMockCallHistory::addParameterValue()
//
// Purpose:		Add the parameter value to the call history.
//
// Parameters:	parameterValue - the parameter value.
// --------------------------------------------------------------------------------

begin
	zParameters.add(parameterValue);
end;
}
compareParameters
{
compareParameters(parametersToCheck : JadeMockAnyArray) : Boolean;

// --------------------------------------------------------------------------------
// Method:		JadeMockCallHistory::compareParameters()
//
// Purpose:		Compare the parameters with a list of values.
//
// Parameters:	parametersToCheck - the list of values to check.
//
// Returns:		Returns true if the parameters match the specified list of values.
// --------------------------------------------------------------------------------

vars
	i						: Integer;

begin
	if zParameters.size() <> parametersToCheck.size() then
		return false;
	endif;
	
	// O(n^2) but both collections will always be small, usually 2-5 items, maximum 128
	foreach i in 1 to zParameters.size() do
		if zParameters[ i ] <> parametersToCheck[ i ] then
			return false;
		endif;
	endforeach;
	
	return true;
end;
}
copyParameters
{
copyParameters(parameters : JadeMockAnyArray input);

// --------------------------------------------------------------------------------
// Method:		JadeMockCallHistory::copyParameters()
//
// Purpose:		Copy the parameters to the specified collection.
//
// Parameters:	parameters - the collection to copy the parameters to.
// --------------------------------------------------------------------------------

begin
	zParameters.copy(parameters);
end;
}
create
{
create(receiver : Object; mockedMethod : Method) updating;

// --------------------------------------------------------------------------------
// Method:		JadeMockCallHistory::create()
//
// Purpose:		Constructor for a mock method call history.
//
// Parameters:	receiver		- the receiver of the method call being mocked.
//				mockedMethod	- the method being mocked.
//
//				Save the time the method was called.
// --------------------------------------------------------------------------------

vars
	now						: TimeStamp;

begin
	zCallTime := now;
	
	// save the receiver as a string to allow for subobjects (exclusive collections)
	zReceiver := zNormaliseValue(receiver).String;
	zMockedMethod := mockedMethod;
end;
}
getMockedMethod
{
getMockedMethod() : Method;

// --------------------------------------------------------------------------------
// Method:		JadeMockCallHistory::getParameters()
//
// Purpose:		Returns the method being mocked of this JadeMockCallInstance instance.
//
// Returns:		The method being mocked of this JadeMockCallInstance instance.
// --------------------------------------------------------------------------------

begin
	return zMockedMethod;
end;
}
getReceiver
{
getReceiver() : Object;

// --------------------------------------------------------------------------------
// Method:		JadeMockCallHistory::getReceiver()
//
// Purpose:		Returns the receiver of this JadeMockCallInstance instance.
//
// Returns:		The receiver of this JadeMockCallInstance instance.
// --------------------------------------------------------------------------------

begin
	// this property is a String because Subobject references (exclusive collection) cannot be added to an Array.
	return zUnnormaliseValue(zReceiver);
end;
}
	)
	JadeMockManager (
	jadeMethodSources
createClassMock
{
createClassMock(mockedClass : Class) : JadeClassMock;

// --------------------------------------------------------------------------------
// Method:		JadeMockManager::createClassMock()
//
// Purpose:		Create a class mock for the Class.
//
// Parameters:	mockedClass - the Class to mock.
//
// Returns:		The created class mock instance.
// --------------------------------------------------------------------------------

begin
	return create JadeClassMock(self, mockedClass);
end;
}
createInterfaceMock
{
createInterfaceMock(mockedInterface : JadeInterface) : JadeInterfaceMock;

// --------------------------------------------------------------------------------
// Method:		JadeMockManager::createInterfaceMock()
//
// Purpose:		Create an interface mock for the Interface.
//
// Parameters:	mockedInterface - the Interface to mock.
//
// Returns:		The created interface mock instance.
// --------------------------------------------------------------------------------

begin
	return create JadeInterfaceMock(self, mockedInterface);
end;
}
deleteClassMock
{
deleteClassMock(classMock : JadeClassMock io) updating;

// --------------------------------------------------------------------------------
// Method:		JadeMockManager::deleteClassMock()
//
// Purpose:		Delete a Class mock.
//
// Parameters:	classMock - the class mock to delete.
// --------------------------------------------------------------------------------

begin
	delete classMock;
end;
}
deleteInterfaceMock
{
deleteInterfaceMock(interfaceMock : JadeInterfaceMock io) updating;

// --------------------------------------------------------------------------------
// Method:		JadeMockManager::deleteInterfaceMock()
//
// Purpose:		Delete an interface mock.
//
// Parameters:	interfaceMock - the interface mock to delete.
// --------------------------------------------------------------------------------

begin
	delete interfaceMock;
end;
}
	externalMethodSources
create
{
create() is mockManagerCreate in jom updating;

// --------------------------------------------------------------------------------
// Method:		JadeMockManager::create()
//
// Purpose:		Constructor for a mock manager.
//
//				Mock initialisation : fetch the class and feature numbers for the mocking framework classes.
//				Security : check ini file to ensure mocking is allowed.
// --------------------------------------------------------------------------------
}
delete
{
delete() is mockManagerDelete in jom updating;

// --------------------------------------------------------------------------------
// Method:		JadeMockManager::delete()
//
// Purpose:		Destructor for a mock manager.
//
//				The zMocks collection is purged by way of a parent-child relationship.
// --------------------------------------------------------------------------------
}
	)
	Routine (
	jadeMethodSources
getParameter
{
getParameter(parameterName : String; index : Integer output) : Parameter;

// --------------------------------------------------------------------------------
// Method:		Routine::getParameter()
//
// Purpose:		Returns the parameter with the given name defined on this Routine instance.
//
// Parameters:	name - the name of the parameter.
//				index - the relative index of the parameter;
//
// Returns:		The parameter with the given name defined on this Routine instance.
// --------------------------------------------------------------------------------

vars
	parameter				: Parameter;
	
begin
	foreach parameter in parameters do
		index += 1;
		if parameter.name = parameterName then
			return parameter;
		endif;
	endforeach;
	
	// not found
	return null;
end;
}
getParameters
{
getParameters() : ParameterColl;

// --------------------------------------------------------------------------------
// Method:		Routine::getParameters()
//
// Purpose:		Returns the parameters defined on this Routine instance.
//
// Returns:		The parameters defined on this Routine instance.
// --------------------------------------------------------------------------------

begin
	return parameters;
end;
}
	)
	Type (
	jadeMethodSources
getLocalMethods
{
getLocalMethods() : MethodNDict;

// --------------------------------------------------------------------------------
// Method:		Type::getLocalMethods()
//
// Purpose:		Returns the methods defined on this Type instance.
//
// Returns:		The methods defined on this Type instance.
// --------------------------------------------------------------------------------

begin
	return methods;
end;
}
	)
	JadeInterface (
	jadeMethodSources
withAllSuperInterfaces
{
withAllSuperInterfaces(superInterfaces : JadeInterfaceColl input);

// --------------------------------------------------------------------------------
// Method:		JadeInterface::withAllSuperInterfaces()
//
// Purpose:		Populates a collection with this interface and all superinterfaces.
//
// Parameters:	superInterfaces	- the interface collection to populate.
// --------------------------------------------------------------------------------

vars
	interface				: JadeInterface;

begin
	foreach interface in superinterfaces do
		if superInterfaces.includes(interface) then
			continue;
		endif;
		interface.withAllSuperInterfaces(superInterfaces);
		superInterfaces.tryAdd(interface);
	endforeach;
	superInterfaces.tryAdd(self);
end;
}
	)
	JadeMethodMockIF (
	jadeMethodSources
methodMock
{
methodMock(mockedMethod : Method; receiver : Object input; parameters : ParamListType io) : Any;
}
	)
