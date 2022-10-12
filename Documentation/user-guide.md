# Jade Mocking Framework User Guide

This document describes how to use the Jade Mocking Framework that is exported from the **JadeMockSchema** in the **JadeMockPackage** package.

## Overview 

The Jade Mocking Framework enables you to create transient instances that mimic the interface of real objects and simulate their behaviour. 
Instances created outside the framework can also be injected in to the framework to allow  method calls to be mocked. 
This behaviour is supported for instances of any lifetime: persistent, transient, and shared transient.

The Jade Object Manager provides a mechanism that allows a method to be replaced with an alternative method when called by a specific object. 
The  framework uses this mechanism to replace class methods with a default method that mocks the original method.
Any class method can be mocked, including event methods, timer methods, and type methods.
Method mocks for primitive methods are not supported.
The method mock records the receiver the input parameter values when a method being mocked is called. 
Default values can also be specified for usage IO or output parameters and the return values. 
The method mock can be queried the return the call history, call counts, parameter values received, etc. 
Specific actions to be performed when the method mock is called can be specified, for example to update properties. 
A  method mock is not restricted to the implementation provided by the framework.
An instance of any class that implements the **JadeMethodMockIF** interface can be used to mock methods.

Support for mocking interfaces is also provided.
The framework can create instances that mock an interface.
These are transient instances that mock all the methods defined on the interface, by default.
As with class mocks, instances that implement an interface can be injected in to an interface mock.

## JadeMockSchemaPackage

The **JadeMockSchema** exports the **JadeMockPackage** package. 

The following classes included in the package:

```
    JadeMockingFramework
        JadeMethodMock
        JadeMock
            JadeClassMock
            JadeInterfaceMock
        JadeMockCallHistory
        JadeMockManager
    JadeMockAnyArray
```

The following interface is also exported from the package:

```
    JadeMethodMockIF
```

## Enable the Mocking Framework runtime

The Mocking Framework runtime must be enabled prior to use. Add the following to the Jade.ini file being used by the database server:

```
    [JadeServer]
    MethodMockingEnabled=true
```

## Creating a JadeMockManager

A transient **JadeMockManager** instance is required to manage instances of the mocking framework classes. 
The **JadeMockManager** instance owns the **JadeClassMock** and **JadeInterfaceMock** instances that it creates.
These instances are deleted when the **JadeMockManager** instance is deleted.
Multiple mock managers can be instantiated if required.
However this can make checking for duplicate method mocks in a test suite more difficult.

The most common place to instantiate the **JadeMockManager** instance is in the test initialisation method:

```
    testSetup() updating, unitTestBeforeAll;

    begin
        mockManager := create JadeMockManager() transient;
    end;
```
The **JadeMockManager** instance can be deleted in the test teardown method. 
This will also delete any **JadeClassMock**, **JadeInterfaceMock** and **JadeMethodMock** instances that have been created:

```
    testTeardown() updating, unitTestAfterAll;

    begin
        delete mockManager;
    end;
```

## Creating a JadeClassMock

The **JadeMockManager** instance is used to create a **JadeClassMock** instance for a class:

```
    classMock := mockManager.createClassMock(Calculator);
```

The **JadeClassMock** instance is required to define method mocks for class methods.

When the **JadeClassMock** instance is deleted all **JadeMethodMock** instances for the class are also deleted.
Any class mock instances that were instantiated by the instance are also deleted.

## Creating a JadeInterfaceMock

The **JadeMockManager** instance is used to create a **JadeInterfaceMock** instance for an interface:

```
    interfaceMock := mockManager.createInterfaceMock(ICalculator);
```

When a **JadeInterfaceMock** instance is created method mocks are set up for all the methods defined in the interface.
The **JadeInterfaceMock** instance is a transient instance that can be used wherever an instance of the interface being mocked is required.

When the **JadeInterfaceMock** instance is deleted all **JadeMethodMock** instances for the interface are also deleted.
Any interface mock instances that were instantiated by the instance are also deleted.

## Creating a JadeMethodMock

A **JadeClassMock** instance is used to create a **JadeMethodMock** instance for a method defined on the class:

```
    methodMock := classMock.mockMethod(Calculator::add);
```

Method mocks must be unique for a given method and receiving instance.

## Creating a JadeMethodMock for an Event Method

Method mocks for event methods can be defined. The Form instance is injected to receive the call to the mock.

```
    // inject the form instance in to the class mock and create a method mock for the OK button click event
    classMock.injectMockedObject(form).mockMethod(MyForm::OKButton_click;
	
```

## Creating a JadeMethodMock for a Type Method

The framework defines method mocks for type methods using the Class instance.
This means the method mock is called regardless of whether the calling code uses an instance of the class or the Class itself.

```
    classMock.mockMethod(Calculator::reset);

    // call the method mock using the Class instance
    Calculator@reset();

    // call the method mock using an instance of the Class
    calculator@reset();

```

## Defining the behaviour a JadeMethodMock

By default, the mock method captures details of the call, the method receiver and parameter values. 
If the method being mocked has a return value or usage output parameters the method mock will return null values by default.
If the method being mocked has usage IO  the method mock will leave the value unchanged by default.
By default properties on the receiver are not changed.
Specific values for the return value and usage IO and output parameters and properties can also be defined.

### Specifying a Fixed Return Value

The return value can be specified as single (fixed) value. 
This example shows that the method mock always returns the string "abc".

```
    methodMock.alwaysReturns("abc");
```

### Specifying a Sequence of Return Values

The return value can be specified as sequence of values.
This example shows that the method mock returns the strings "abc", "def" and "ghi" on successive calls.

```
    methodMock.returns("abc").returns("def").returns("ghi");
````

If the method mock is called more times than values have been specified null is returned.

### Specifying Fixed Parameter Values to Update

Usage IO or output parameters values can be specified as a single (fixed) parameter name and value pair. 
This example shows that the method mock always updates the "code" parameter with the value 123 and the "description" parameter with the value "abc".

```
    methodMock.alwaysUpdatesParameters("code", 123, "description", "abc");
```

### Specifying a Sequence of Parameter Values to Update

Usage IO or output parameters values can be specified as a sequence of parameter name and value pairs. 
This example shows that the method mock updates the "code" parameter with the values 1, 2, and 3 and the "description" parameter with the values "abc", "def", "ghi" on successive calls.

```
    methodMock.updatesParameters("code", 1, "description", "abc").updatesParameters("code", 2, "description", "def").updatesParameters("code", 3, "description", "ghi");
````

If the method mock is called more times than values have been specified null values are returned for usage output parameters.
Usage IO parameters are unchanged.

### Updating Fixed Property Values

Usage IO or output parameters values can be specified as a single (fixed) parameter name and value pair. 
This example shows that the method mock always updates the "name" property with the value "abc".

```
    methodMock.alwaysUpdatesProperties(C1::name, "abc");
```

### Updating a Sequence of Property Values

Properties on the receiver to update can be specified as a sequence of property instance and value pairs. 
This example shows that the method mock updates the "name" property with values "abc", "def", and "ghi" on successive calls.

```
    methodMock.updatesProperties(C1::name, "abc").updatesProperties(C1::name, "def").updatesProperties(C1::name, "ghi");
````

If the method mock is called more times than values have been specified all properties on the receiver are unchanged.

## Defining the Objects that have Mocked Behaviour
    
The method mock is only called for instances that have been registered with the Jade Object Manager.
The framework provides three ways to associate method mocks with specific instances

###  Instantiate an instance

The class mock will create a transient instance. Constructors and destructors are not called.

```
    mockedCalculator := classMock.instantiateMockedObject().Calculator;
```

### Inject an instance

Any instance of the class being mocked can be specified.

```
    classMock.injectMockedObject(calculator);
```

### Mock All Class Instances

Mock all class instances of specified lifetimes (persistent, transient, and shared-transient).

```
    classMock.mockAllInstances(JadeClassMock.MockClassInstancesLifetime_Persistent);
```

## Declaring your own JadeMethodMock

A method mock is not restricted to the implementation provided by the framework. 
An instance of any class that implements the **JadeMethodMockIF** interface can be used to mock methods.

Here is an example showing how the *msgBox* method declared on the **Application** class in the **RootSchema** can be mocked.

The **ApplicationMock** mock class is defined and implements the **JadeMethodMockIF** interface.
The method *myMethodMock* of the **ApplicationMock** class is mapped to the *methodMock* method of the **JadeMethodMockIF**.

```
    myMethodMock(mockedMethod : Method; receiver : Object input; parameters : ParamListType io) : Any;
    
    begin
    	write "We made a mockery of that message box!";
    	return MsgBox_Return_OK;
    end;
```

The *whenCalledInvoke* method of the method mock is used to replace the default method mock with the method *myMethodMock* of the **ApplicationMock** class.

```
    msgBoxMockingExample() unitTest;
    
    vars
    	applicationMock : ApplicationMock;
    	classMock : JadeClassMock;
    	mockManager : JadeMockManager;
    	methodMock : JadeMethodMock;
    begin
    	mockManager := create JadeMockManager() transient;
    	classMock := create JadeClassMock(mockManager, Application) transient;
    	
    	// inject app to receive mocked methods
    	classMock.injectMockedObject(app);
    
    	// create an instance of a class that implements the JadeMockMethodIF interface.
    	// the mocked method call will be redirected to this instance
    	applicationMock := create ApplicationMock() transient;
    	
    	// mock the RootSchema::Application::msgBox() method
    	methodMock := classMock.mockMethod(Application::msgBox).whenCalledInvoke(appContext, applicationMock);
    
    	assertEquals(MsgBox_Return_OK, app.msgBox("foo", "bar", MsgBox_Abort_Retry_Ignore));
    epilog
    	delete mockManager;
    	delete applicationMock;
    end;
```

## Querying a JadeMethodMock

The method mock can be queried to provide details of the each call. This information includes:

- the method call counts and call history
- verify the values of the receiver and parameters for each call

### Querying the Call History

This example iterates the call history retrieving the receiver and parameters for each call.

```
    parameters := create JadeMockAnyArray() transient;
    foreach i in 1 to methodMock.getCallCount() do
        parameters.clear();
        methodMock.getCallHistory(i, receiver, parameters);
    endforeach;
```

### Querying the Receiver and Parameters

A number of query APIs are implemented to validate the receiver and parameter values were as expected.

This example shows various ways the receiver can be validated:

```
    assertTrue(methodMock.wasReceived());             // method being mocked was called at least once
    assertTrue(methodMock.wasReceivedOnce());         // method being mocked was called only once
    assertTrue(methodMock.wasReceivedWith(1, "abc")); // parameters on the first call were 1 and "abc"
```

## The JadeMockPackage

This section describes the class and methods exported from the **JadeMockPackage**.

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

## Class JadeMethodMock

Represents a mockery of a single method. This will keep track of the calls to the mocked method. Has methods to mock behaviour and methods useful for validating the calls in testing.

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

## Class JadeMock

An abstract superclass in the framework schema for class and interface mocks. This class implements behaviour common to classes and interfaces.

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

## Class JadeMockManager

Class to manage mocking framework classes. The framework requires a transient instance of this class to allow method mocks to be created. Multiple managers are allowed, but a single instance should be enough for any given test suite. The JadeMockManager instance owns the JadeClassMock instances, these instances are deleted when the JadeMockManager instance is deleted.

### Methods 

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

