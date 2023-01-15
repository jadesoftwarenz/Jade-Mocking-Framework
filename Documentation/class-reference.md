# Jade Mocking Framework Class Reference

This document describes the classes in the **JadeMockSchema** which implements the Jade Mocking Framework.

## Class JadeClassMock

Inherits from JadeMock. For a class mock, the instance holds references to instances of the mocked class, and forwards requests to these objects, mocking methods as required. These instances can be instantiated by the class mock or injected by the user.

### Constants 

#### MockClassInstancesLifetime_NotSpecified : Integer = 0

Method mocking is not enabled for any instance of any lifetime of this class.

#### MockClassInstancesLifetime_Persistent : Integer = 1

Method mocking is enabled for all persistent instances of this class.

#### MockClassInstancesLifetime_SharedTransient : Integer = 3

Method mocking is enabled for all shared transient instances of this class.

#### MockClassInstancesLifetime_Transient : Integer = 2

Method mocking is enabled for all transient instances of this class.

### Properties 

#### zInstancesLifetime : Integer protected

Specifies the lifetime of instances that the method calls are mocked.
The value must be one or more of the following Integer class constants:
	MockClassInstancesLifetime_None
	MockClassInstancesLifetime_Persistent
	MockClassInstancesLifetime_Transient
	MockClassInstancesLifetime_SharedTransient

#### zMockedObjects : ObjectSet protected

Transient instances of the class being mocked that have been instantiated by this class mock.

### Methods 

#### clearAllMethodMocks

Deletes all the method mocks for the class.

 All method mocks are unregistered.
```
    clearAllMethodMocks();
```

#### create

Constructor for a class mock.

```
    create(mockManager : JadeMockManager; mockedClass : Class) updating;
```

Parameters: 

- mockManager - the JadeMockManager instance that is creating this class mock.
-  mockedClass - the class being mocked.

#### delete

Destructor for a class mock.

 Unregisters the method mocks for each method being mocked.
 Delete any mocked objects that still exist. Destructors are not called.
 Note: injected mocked instances are not deleted.

 The method mocks collection is purged by way of a parent-child relationship.
```
    delete() updating;
```

#### deleteMockedObject

Delete the mocked object.

```
    deleteMockedObject(mockedObject : Object) updating;
```

Parameters: 

- mockedObject - the mocked instance to delete.

#### injectMockedObject

Records the specified object for which nominated method calls are mocked.
 This must be an instance of the class for which methods are being mocked.
 The lifetime of the instance can be persistent, transient or shared transient.
 This instance will *not* be deleted when the class mock is deleted.

```
    injectMockedObject(mockedObject : Object) : JadeClassMock updating;
```

Parameters: 

- mockedObject - the instance to inject for mocking.

Returns: 

The class mock instance.

#### instantiateMockedObject

Instantiate an instance of type of the class being mocked.

 The constructors are *not* called - all properties are initialised to null.

 This instance will be deleted when the class mock is deleted - destructors will not be called.

```
    instantiateMockedObject() : Object updating;
```

Returns: 

The instantiated instance.

#### isMethodMockRegisteredForInstance

Determines if a mock for the method is registered for the instance.

```
    isMethodMockRegisteredForInstance(mockedObject : Object; mockedMethod : Method) : Boolean is mockIsMethodMockRegisteredForInstance in jom;
```

Parameters: 

- mockedMethod - the method.
-  methodMock - the method mock.

Returns: 

Returns true if a mock for the method is registered for the instance, or false if it is not.

#### isObjectInstantiated

Determines if the object specified has been instantiated by the JadeClassMock.

```
    isObjectInstantiated(object : Object) : Boolean;
```

Parameters: 

- object - the instance.

Returns: 

Returns true if the object specified has been instantiated by the JadeClassMock, or false if it is not.

#### mockAllInstances

Methods are mocked for all instances of the class with the given lifetimes.

```
    mockAllInstances(lifetime : Integer) : JadeClassMock updating;
```

Parameters: 

- lifetime - specifies the lifetime of instances that the method calls are mocked.

 The value of the lifetime parameter must be the sum of one or more of the following Integer JadeClassMock class constants:
 - MockClassInstancesLifetime_Persistent
 - MockClassInstancesLifetime_Transient
 - MockClassInstancesLifetime_SharedTransient

Returns: 

The class mock instance.

#### mockAllMethodsUpToClass

Mock all methods in the class being mocked and all superclasses up to the given class.

 Method mocks are created for methods on the root type and any subschema copies.

```
    mockAllMethodsUpToClass(topClass : Class) : JadeClassMock;
```

Parameters: 

- topClass - mock all methods up to, and including, this class.

Returns: 

The class mock instance.

#### mockImportedMethod

Mock the exported method for a method that has been imported in a package.

```
    mockImportedMethod(importedMethod : JadeImportedMethod) : JadeMethodMock;
```

Returns: 

The method mock instance.

#### mockMethod

Mock the method for all instantiated and injected instances being mocked by this class.

```
    mockMethod(meth : Method) : JadeMethodMock;
```

Parameters: 

- method - the method to mock.

Returns: 

The method mock instance.

#### zInstantiateMockedObject

Instantiate a transient instance of the class being mocked. Constructors are not called.

```
    zInstantiateMockedObject(mockedClass : Class) : Object protected;
```

Parameters: 

- mockedClass - the Class of the instance to create.

Returns: 

The instantiated instance.

#### zRegisterMethodMockForClassInstances

Register a method mock for the method for all instances of the class with the given lifetimes.

```
    zRegisterMethodMockForClassInstances(classNumber : Integer; lifetime : Integer; mockedMethod : Method; methodMock : JadeMethodMock) protected;
```

Parameters: 

- classNumber - the number of Class for which method calls are to be mocked.
-  lifetime - specifies the lifetime of instances that the method calls are mocked.
-  mockedMethod - the method to mock.
-  methodMock - the method mock for the method being mocked.

 The value of the lifetime parameter must be the sum of one or more of the following Integer JadeClassMock class constants:
 - MockClassInstancesLifetime_Persistent
 - MockClassInstancesLifetime_Transient
 - MockClassInstancesLifetime_SharedTransient

#### zRegisterMethodMockForInstance

Register a method mock for the method for the specified instance.

```
    zRegisterMethodMockForInstance(mockedObject : Object; mockedMethod : Method; methodMock : JadeMethodMock) protected;
```

Parameters: 

- mockedObject - the instance for which method calls are to be mocked.
-  mockedMethod - the method to mock.
-  methodMock - the method mock for the method being mocked.

#### zRegisterMethodMocks

Register the method mock for all instances mocking this class.

 The method mock is registered for either all instantiated and injected instances
 of all instances of the class with the previously specified lifetimes.

```
    zRegisterMethodMocks(methodMock : JadeMethodMock) protected;
```

Parameters: 

- methodMock - the method mock to register.

#### zUnregisterMethodMockForClassInstances

Unregister the method mock for the method for all instances of the class with the given lifetimes.

```
    zUnregisterMethodMockForClassInstances(classNumber : Integer; lifetime : Integer; mockedMethod : Method; methodMock : JadeMethodMock) protected;
```

Parameters: 

- classNumber - the number of Class for which method calls are to being mocked.
-  lifetime - specifies the lifetime of instances that the method calls are mocked.
-  mockedMethod - the method being mocked.
-  methodMock - the method mock for the method being mocked.

 The value of the lifetime parameter must be the sum of one or more of the following Integer JadeClassMock class constants:
 - MockClassInstancesLifetime_Persistent
 - MockClassInstancesLifetime_Transient
 - MockClassInstancesLifetime_SharedTransient

#### zUnregisterMethodMockForInstance

Unregister the method mock for the method for the specified instance.

```
    zUnregisterMethodMockForInstance(mockedObject : Object; mockedMethod : Method; methodMock : JadeMethodMock) protected;
```

Parameters: 

- mockedObject - the instance for which method calls are being mocked.
-  mockedMethod - the method being mocked.
-  methodMock - the method mock for the method being mocked.

#### zUnregisterMethodMocks

Unregister the method mock for all instances mocking this class.

 The method mock is unregistered for either all instantiated and injected instances
 of all instances of the class with the previously specified lifetimes.

```
    zUnregisterMethodMocks(methodMock : JadeMethodMock) protected;
```

Parameters: 

- methodMock - the method mock to unregister.

## Class JadeInterfaceMock

Inherits from JadeMock. For an interface mock, the instance is the mocked interface, requests are forwarded to this object, mocking methods as required. The instance is instantiated by the user. Instances of any other class that implements the interface can be injected by the user.

### Methods 

#### create

Constructor for an interface mock.

 Registers method mocks for each interface method, including all superinterfaces.

```
    create(mockManager : JadeMockManager; mockedInterface : JadeInterface) updating;
```

Parameters: 

- mockManager - the JadeMockManager instance that is creating this interface mock.
-  mockedInterface - the interface being mocked.

#### delete

Destructor for an interface mock.

 Unregisters the method mocks for each interface method, including all superinterfaces.

 The method mocks collection is purged by way of a parent-child relationship.
```
    delete() updating;
```

#### injectMockedObject

Records the specified mocked interface instance for which nominated interface method calls are mocked.
 This must be an existing interface mock instance.
 This instance will *not* be deleted when the interface mock is deleted.

```
    injectMockedObject(mockedInterfaceObject : JadeInterfaceMock) : JadeInterfaceMock updating;
```

Parameters: 

- mockedInterfaceObject - the mocked interface instance to inject for mocking.

Returns: 

The interface mock instance.

#### isInterfaceMethodMockRegistered

Determines if a mock is registered for the interface method for the instance.

```
    isInterfaceMethodMockRegistered(mockedObject : Object; mockedMethod : JadeInterfaceMethod) : Boolean is mockIsInterfaceMethodMockRegistered in jom;
```

Parameters: 

- mockedMethod - the method.
-  methodMock - the method mock.

Returns: 

Returns true if a mock is registered for the interface method for the instance, or false if it is not.

#### isInterfaceMockRegistered

Determines if an interface mock is registered for the instance.

```
    isInterfaceMockRegistered(mockedObject : Object; mockedInterface : JadeInterface) : Boolean is mockIsInterfaceMockRegistered in jom;
```

Parameters: 

- mockedObject - the instance.
-  mockedInterface - the interface mock.

Returns: 

Returns true if an interface mock is registered for the instance, or false if it is not.

#### zRegisterInterfaceMethodMock

Register a mock for the interface method for the specified instance.

```
    zRegisterInterfaceMethodMock(mockedObject : Object; mockedMethod : JadeInterfaceMethod; methodMock : JadeMethodMock) protected;
```

Parameters: 

- mockedObject - the instance that mocks the interface.
-  mockedMethod - the interface method being mocked.
-  methodMock - the method mock that mocks this interface method.

#### zRegisterInterfaceMethodMocks

Registers method mocks for each interface method, including all superinterfaces.

```
    zRegisterInterfaceMethodMocks(mockedInterfaceObject : JadeInterfaceMock) updating, protected;
```

Parameters: 

- mockedObject - the mocked interface instance for which method calls are to be mocked.

#### zRegisterInterfaceMock

Register an interface mock for the specified instance.

```
    zRegisterInterfaceMock(mockedObject : Object; mockedInterface : JadeInterface) protected;
```

Parameters: 

- mockedObject - the instance that mocks the interface.
-  mockedInterface - the interface being mocked.

#### zUnregisterInterfaceMethodMock

Unregister the mock for the interface method for the specified instance.

```
    zUnregisterInterfaceMethodMock(mockedObject : Object; mockedMethod : JadeInterfaceMethod; methodMock : JadeMethodMock) protected;
```

Parameters: 

- mockedObject - the instance that mocks the interface.
-  mockedMethod - the interface method being mocked.
-  methodMock - the method mock that mocks this interface method.

#### zUnregisterInterfaceMethodMocks

Unregisters the method mocks for each interface method, including all superinterfaces.

 The method mocks collection is purged by way of a parent-child relationship.
```
    zUnregisterInterfaceMethodMocks() updating, protected;
```

#### zUnregisterInterfaceMock

Unregister the interface mock for the specified instance.

```
    zUnregisterInterfaceMock(mockedObject : Object; mockedInterface : JadeInterface) protected;
```

Parameters: 

- mockedObject - the instance that mocks the interface.
-  mockedInterface - the interface being mocked.

## Class JadeMethodMock

Represents a mockery of a single method. This will keep track of the calls to the mocked method. Has methods to mock behaviour and methods useful for validating the calls in testing.

### Properties 

#### zAlwaysReturnsSameValue : Boolean protected

A fixed value has been provided to mock the return value.

#### zAlwaysUpdatesParametersSameValues : Boolean protected

Fixed values have been provided to mock Usage IO or Usage Output parameters.

#### zAlwaysUpdatesPropertiesSameValues : Boolean protected

Fixed values have been specified to mock updates to properties.

#### zMethodMockIF : JadeMethodMockIF protected

The instance that implements the method mock that is called when the mocked method is called.

#### zMock : JadeMock protected

JadeClassMock or JadeInterfaceMock this mock belongs to.

#### zMockCallHistories : ObjectArray protected

History of mocked method calls. In call order.

#### zMockCallHistoriesByReceiver : JadeMockCallHistoriesByReceiverDict protected

History of mocked method calls. In receiver order.

#### zMockedMethod : Method protected

The method that has been mocked.

#### zMockedParameters : ObjectArray protected

Names and values to use to mock Usage IO or Usage Output parameter values.

#### zMockedProperties : ObjectArray protected

Properties and values to use to mock updates to properties.

#### zMockedReturnValueTypes : TypeColl protected

Types of the values to use to mock the return value.

#### zMockedReturnValues : JadeMockAnyArray protected

Values to use to mock the return value.

#### zMyMethodToAction : JadeMethod protected

A transient method used to fake out the mocked method.

### Methods 

#### alwaysReturns

Set the value that will always be returned when the method mock is called.

```
    alwaysReturns(returnValue : Any) : JadeMethodMock updating;
```

Parameters: 

- returnValue - the value to return.

Returns: 

The method mock instance.

#### alwaysUpdatesParameters

Set the values for usage io/output parameters that will always be returned when the method mock is called.

```
    alwaysUpdatesParameters(values : ParamListType) : JadeMethodMock updating;
```

Parameters: 

- propertiesAndValues - variable list of pairs of parameter names and values:
 parameter - the name of the parameter to update.
-  value - the value to set.

Returns: 

The method mock instance.

#### alwaysUpdatesProperties

Set the values for properties that will always be returned when the method mock is called.

```
    alwaysUpdatesProperties(propertiesAndValues : ParamListType) : JadeMethodMock updating;
```

Parameters: 

- propertiesAndValues - variable list of pairs of properties and values:
 property - the property to update.
-  value - the property value to set.

Returns: 

The method mock instance.

#### clearCallHistory

Clear the call history of the mock.
```
    clearCallHistory();
```

#### create

Constructor for a method mock.

 Initialise default values.
 Establish inverses.
 Register the method mock with the Object Manager.

```
    create(mock : JadeMock; mockedMethod : Method) updating;
```

Parameters: 

- mock - the class or interface mock creating the method mock.
-  mockedMethod - the method being mocked.

#### delete

Destructor for a method mock.

 Delete captured data.
 Unregister the method mock with the Object Manager.
```
    delete() updating;
```

#### getCallCount

Get the number of times this method mock was called.

```
    getCallCount() : Integer;
```

Returns: 

The number of times this method mock was called.

#### getCallHistory

Get the receiver and parameters for a given call index.

```
    getCallHistory(callIndex : Integer; receiver : Any output; parameters : JadeMockAnyArray input);
```

Parameters: 

- callIndex - the index of the method call.
-  receiver - the receiver for the method call (output).
-  parameters - the parameter values for the method call (output).

Returns: 

The receiver and parameters for a given call index.

#### getMockedMethod

Get the method that this method mock mocks.

```
    getMockedMethod() : Method;
```

Returns: 

The method that this method mock mocks.

#### isMethodMockRegistered

Determine if the method mock is registered for the method.

```
    isMethodMockRegistered(mockedMethod : Method; methodMock: JadeMethodMock) : Boolean is mockIsMethodMockRegistered in jom;
```

Parameters: 

- mockedMethod - the method.
-  methodMock - the method mock.

Returns: 

Returns true if the method mock is registered for the method, or false if it is not.

#### returns

Set the value that will be returned when the method mock is called. 

 This method can be called multiple times to return consecutive values.

```
    returns(returnValue : Any) : JadeMethodMock updating;
```

Parameters: 

- returnValue - the value to return.

Returns: 

The method mock instance.

#### updatesParameters

Set the values for usage io/output parameters that will be returned when the method mock is called.

 This method can be called multiple times to return consecutive values.

```
    updatesParameters(values : ParamListType) : JadeMethodMock updating;
```

Parameters: 

- propertiesAndValues - variable list of pairs of parameter names and values:
 parameter - the name of the parameter to update.
-  value - the value to set.

Returns: 

The method mock instance.

#### updatesProperties

Set the values for properties that will be updated when the method mock is called.

 This method can be called multiple times to return consecutive values.

```
    updatesProperties(propertiesAndValues : ParamListType) : JadeMethodMock updating;
```

Parameters: 

- propertiesAndValues - variable list of pairs of properties and values:
 property - the property to update.
-  value - the property value to set.

Returns: 

The method mock instance.

#### wasReceived

Was the mocked method received at least once, by any instance, with any parameters.

```
    wasReceived() : Boolean;
```

Returns: 

True if the mocked method was received at least once, by any instance, with any parameters, otherwise false.

#### wasReceivedBy

Was the mocked method received at least once, by the receiver, with any parameters.

```
    wasReceivedBy(receiver : Object) : Boolean;
```

Parameters: 

- receiver - the receiver.

Returns: 

True if the mocked method was received at least once, by the receiver, with any parameters, otherwise false.

#### wasReceivedByWith

Was the mocked method received at least once, by the receiver, with the parameters.

```
    wasReceivedByWith(receiver : Object; parameters : ParamListType) : Boolean;
```

Parameters: 

- receiver - the receiver.
-  parameters - the parameters.

Returns: 

True if the mocked method was received at least once, by the receiver, with the parameters, otherwise false.

#### wasReceivedOnce

Was the mocked method received once, by any receiver, with any parameters.

```
    wasReceivedOnce() : Boolean;
```

Returns: 

True if the mocked method was received once, by any receiver, with any parameters, otherwise false.

#### wasReceivedOnceBy

Was the mocked method received once, by the receiver, with any parameters.

```
    wasReceivedOnceBy(receiver : Object) : Boolean;
```

Parameters: 

- receiver - the receiver.

Returns: 

True if the mocked method was received once, by the receiver, with any parameters, otherwise false.

#### wasReceivedOnceByWith

Was the mocked method received once, by the receiver, with the parameters.

```
    wasReceivedOnceByWith(receiver : Object; parameters : ParamListType) : Boolean;
```

Parameters: 

- receiver - the receiver.
-  parameters - the parameters.

Returns: 

True if the mocked method was received once, by the receiver, with the parameters, otherwise false.

#### wasReceivedOnceWith

Was the mocked method received once, by any receiver, with the parameters.

```
    wasReceivedOnceWith(parameters : ParamListType) : Boolean;
```

Parameters: 

- parameters - the parameters.

Returns: 

True if the mocked method was received once, by any receiver, with the parameters, otherwise false.

#### wasReceivedWith

Was the mocked method received at least once, by any receiver, with the parameters.

```
    wasReceivedWith(parameters : ParamListType) : Boolean;
```

Parameters: 

- parameters - the parameters.

Returns: 

True if the mocked method was received once, by any receiver, with the parameters, otherwise false.

#### whenCalledDoes

Provide a specific action to execute when the method mock is called.

 The actions are specified as a JADE code snippet. A transient method is
 created to execute this code.

```
    whenCalledDoes(actions : String) : JadeMethodMock updating;
```

Parameters: 

- actions - JADE code snippet to execute when the method mock is called.

Returns: 

The method mock instance.

#### whenCalledInvoke

Provide an instance that will mock the method call.

 This method mock replaces the default mock zMockMethodCall().

```
    whenCalledInvoke(targetContext : ApplicationContext; mockMethodIF : JadeMethodMockIF) : JadeMethodMock updating;
```

Parameters: 

- targetContext - the application context in which to call the mock method.
-  mockMethodIF - the method mock receiver.

Returns: 

The method mock instance.

#### zMockMethodCall

Mock a call to a mocked method.

 This method implements the JadeMockSchema::JadeMethodMockIF::methodMock() interface method.
 This method is called when a method being mocked is called.
 The receiver and parameters are captured and any IO or Output parameters are updated.
 Any properties are updated with mocked values.
 An optional user-defined action is performed.
 The return value is mocked.

```
    zMockMethodCall(mockedMethod : Method; receiver : Object input; parameters : ParamListType io) : Any updating, protected;
```

Parameters: 

- mockedMethod- the method being mocked.
-  receiver - the receiver of the method call being mocked.
-  parameters - the parameters to the method call being mocked (I/O).

Returns: 

The mocked return value.

#### zMockParameters

Save the actual parameter values passed to mocked method and update any usage io/output parameters.

```
    zMockParameters(callHistory : JadeMockCallHistory input; actualParameters : ParamListType io) updating, protected;
```

Parameters: 

- callHistory - the call history for the method mock.
-  actualParameters - the actual parameters to the method call being mocked (I/O).

#### zMockProperties

Update any properties with mocked values.

```
    zMockProperties(receiver : Object input) updating, protected;
```

Parameters: 

- receiver - the receiver of the mocked method call.

#### zMockReturnValue

Get the return value for the method being mocked.

```
    zMockReturnValue() : Any updating, protected;
```

Returns: 

The return value.

#### zRegisterMethodMock

Register the method mock with the Object Manager. 

 The class/interface mock associates each method mock with the instances that are mocking the method.

```
    zRegisterMethodMock(mockedMethod : Method; methodMock : JadeMethodMock) protected;
```

Parameters: 

- mockedMethod - the method being mocked.
-  methodMock - the method mock.

#### zRegisterMethodMockReceiver

Set the instance that will receive the mock when the mocked method is called.

```
    zRegisterMethodMockReceiver(targetContext : ApplicationContext; receiver : JadeMethodMockIF) protected;
```

Parameters: 

- targetContext - the application context in which to call the mock method.
-  receiver - the method mock receiver.

#### zReturns

Set the value that will be returned when the method mock is called. 

 Common code for the returns() and alwaysReturns() methods.

```
    zReturns(returnValue : Any) updating, protected;
```

Parameters: 

- returnValue - the value to return.

#### zUnregisterMethodMock

Unregister the method mock with the Object Manager. 

```
    zUnregisterMethodMock(methodMock : JadeMethodMock) protected;
```

Parameters: 

- methodMock - the method mock.

#### zUpdatesParameters

Set the values for usage io/output parameters that will always be returned when the method mock is called.

 Common code for the updatesParameters() and alwaysUpdatesParameters() methods.

```
    zUpdatesParameters(parameterNamesAndValues : ParamListType) updating, protected;
```

Parameters: 

- parameterNamesAndValues - variable list of pairs of properties and values:
 parameterName - the name of the parameter to update.
-  value - the value to set.

#### zUpdatesProperties

Set the values for properties that will be updated when the method mock is called.

 Common code for the updatesProperties() and alwaysUpdatesProperties() methods.

```
    zUpdatesProperties(propertiesAndValues : ParamListType) updating, protected;
```

Parameters: 

- propertiesAndValues - variable list of pairs of properties and values:
 property - the property to update.
-  value - the property value to set.

## Class JadeMethodMockDict

Maintains the methods being mocked on the Class or Interface.

## Class JadeMock

An abstract superclass in the framework schema for class and interface mocks. This class implements behaviour common to classes and interfaces.

### Properties 

#### zInjectedMockedObjects : StringArray protected

The injected instances being mocked.
Membership is String because Subobject references (exclusive collection) cannot be added to an Array.

#### zMethodMocks : JadeMethodMockDict protected

The method mocks.

#### zMockManager : JadeMockManager protected

The mock manager.

#### zMockedType : Type protected

The class or interface that owns this mock.

### Methods 

#### getMethodMock

Get the method mock for the specified method.

```
    getMethodMock(meth : Method) : JadeMethodMock;
```

Parameters: 

- meth - the method being mocked.

Returns: 

The method mock for the specified method, null if not found.

#### getMockedType

Get the class or interface that owns this mock.

```
    getMockedType() : Type;
```

Returns: 

The class or interface that owns this mock.

#### injectMockedObject

Records the specified object for which nominated method calls are mocked.
 This must be an instance of the class or interface for which methods are being mocked.
 The lifetime of the instance can be persistent, transient or shared transient.
 This instance will *not* be deleted when the class or interface mock is deleted.

```
    injectMockedObject(mockedObject: Object): JadeMock updating, abstract;
```

Parameters: 

- mockedObject - the instance to inject for mocking.

Returns: 

The class or interface mock instance.

## Class JadeMockAnyArray

Utility array class for storing values of different types. Object references must be converted to Strings by the caller because exclusive subobject references cannot be added to an Array.

## Class JadeMockCallHistoriesByReceiverDict

Maintains the history of mocked method calls.

## Class JadeMockCallHistory

Represents a recorded history for a single call to a method of a mock. An instance is created when a method being mocked is called. The instance records the time of the call, the receiver and the parameters.

### Properties 

#### zCallTime : TimeStamp protected

The time the mocked method was called.

#### zMockedMethod : Method protected

The method being mocked.

#### zParameters : JadeMockAnyArray protected

The mocked method call parameters.

#### zReceiver : String protected

The mocked method call receiver.
This property is a String because subobject references (exclusive collection) cannot be added to an Array.

### Methods 

#### addParameterValue

Add the parameter value to the call history.

```
    addParameterValue(parameterValue : Any) updating;
```

Parameters: 

- parameterValue - the parameter value.

#### compareParameters

Compare the parameters with a list of values.

```
    compareParameters(parametersToCheck : JadeMockAnyArray) : Boolean;
```

Parameters: 

- parametersToCheck - the list of values to check.

Returns: 

Returns true if the parameters match the specified list of values.

#### copyParameters

Copy the parameters to the specified collection.

```
    copyParameters(parameters : JadeMockAnyArray input);
```

Parameters: 

- parameters - the collection to copy the parameters to.

#### create

Constructor for a mock method call history.

```
    create(receiver : Object; mockedMethod : Method) updating;
```

Parameters: 

- receiver - the receiver of the method call being mocked.
-  mockedMethod - the method being mocked.

 Save the time the method was called.

#### getMockedMethod

Returns the method being mocked of this JadeMockCallInstance instance.

```
    getMockedMethod() : Method;
```

Returns: 

The method being mocked of this JadeMockCallInstance instance.

#### getReceiver

Returns the receiver of this JadeMockCallInstance instance.

```
    getReceiver() : Object;
```

Returns: 

The receiver of this JadeMockCallInstance instance.

## Class JadeMockManager

Class to manage mocking framework classes. The framework requires a transient instance of this class to allow method mocks to be created. Multiple managers are allowed, but a single instance should be enough for any given test suite. The JadeMockManager instance owns the JadeClassMock instances, these instances are deleted when the JadeMockManager instance is deleted.

### Properties 

#### zMocks : ObjectSet protected

Collection of classes and interfaces that are being mocked.

### Methods 

#### create

Constructor for a mock manager.

 Mock initialisation : fetch the class and feature numbers for the mocking framework classes.
 Security : check ini file to ensure mocking is allowed.
```
    create() updating;
```

#### createClassMock

Create a class mock for the Class.

```
    createClassMock(mockedClass : Class) : JadeClassMock;
```

Parameters: 

- mockedClass - the Class to mock.

Returns: 

The created class mock instance.

#### createInterfaceMock

Create an interface mock for the Interface.

```
    createInterfaceMock(mockedInterface : JadeInterface) : JadeInterfaceMock;
```

Parameters: 

- mockedInterface - the Interface to mock.

Returns: 

The created interface mock instance.

#### delete

Destructor for a mock manager.

 The zMocks collection is purged by way of a parent-child relationship.
```
    delete() updating;
```

#### deleteClassMock

Delete a Class mock.

```
    deleteClassMock(classMock : JadeClassMock io) updating;
```

Parameters: 

- classMock - the class mock to delete.

#### deleteInterfaceMock

Delete an interface mock.

```
    deleteInterfaceMock(interfaceMock : JadeInterfaceMock io) updating;
```

Parameters: 

- interfaceMock - the interface mock to delete.

## Class JadeMockParameters

The parameter names and values used to update Usage IO and Usage Output parameters when the method mock is called.

### Properties 

#### parameterIndexes : IntegerArray

The index of the Usage IO or Usage Output parameters to update when the method mock is called.

#### parameterTypes : TypeColl

The type of Usage IO and Usage Output parameters that are updated when the method mock is called.

#### parameterValues : JadeMockAnyArray

The values used to update the Usage IO and Usage Output parameters when the method mock is called.

## Class JadeMockProperties

The properties and values used to update properties when the method mock is called.

### Properties 

#### properties : PropertyColl

The properties to update when the method mock is called.

#### propertyValues : JadeMockAnyArray

The values used to update the properties when the method mock is called.

## Class JadeMockingFramework

An abstract grouping superclass in the framework schema for classes relating to mocking. Has no properties, constants, or methods. All subclasses have transient instance lifetimes and are final to the schema - user subclasses are not allowed.

### Constants 

#### MockError_MethodMockAlreadyCalled : Integer = 10001

Exception error code: Method mock has already been called.

#### MockError_MockParameterValidationFailed : Integer = 10000

Exception error code: Parameter validation failed. The errorText property contains more information.

### Methods 

#### isMockedObject

Determines if the object specified has been instantiated by any JadeClassMock.

```
    isMockedObject(object : Object) : Boolean typeMethod;
```

Parameters: 

- object - the instance.

Returns: 

Returns true if the object specified has been instantiated by any JadeClassMock, or false if it is not.

#### zNormaliseValue

This method converts an Object reference to a String.
 This is required in some situations because subobject references (exclusive collection) cannot be added to an Array.
 
 All other data types are returned unchanged.

```
    zNormaliseValue(any : Any) : Any protected, typeMethod;
```

Parameters: 

- any - the value to convert.

Returns: 

The normalised value as a String.

#### zUnnormaliseValue

This method converts a String to an Object reference.
 This is required in some situations because subobject references (exclusive collection) cannot be added to an Array.
 
 It is up to the caller of this method to ensure that the normalised value is an Object reference.

```
    zUnnormaliseValue(any : Any) : Object protected, typeMethod;
```

Parameters: 

- any - the value to convert.

Returns: 

The unnormalised value as an Object Reference.

