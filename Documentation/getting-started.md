# Getting started with the Jade Mocking Framework

This is a brief overview of how a method mocks are set up and some of the things that you can do with them.

## Import JadeMockSchema

Load the **JadeMockSchema.mul** file  into your system. 
This will create the **JadeMockSchema** schema that exports the **JadeMockPackage** package. 
Import this package in to your test schema. 

The following classes will be imported:

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

This also imports the following interface:

```
    JadeMethodMockIF
```

## Enable the Mocking Framework runtime

The Mocking Framework runtime must be enabled prior to use. Add the following to the Jade.ini file being used by the database server:

```
    [JadeServer]
    MethodMockingEnabled=true
```

## Using the Mocking Framework in a test fixture

Everything starts with **JadeMockManager** and **JadeClassMock** instances. 
Add references to a subclass of the **JadeTestCase** class in the schema where the unit tests are implemented:

```
    mockManager    : JadeMockManager;
    classMock      : JadeClassMock;
```

Let’s say we’ve got a basic calculator class that implements a method to add two Integer values:

```
    Calculator::add(a, b : Integer) : Integer;
```

Instantiate a singleton instance of the **JadeMockManager** and a **JadeClassMock** for the **Calculator** class in your test initialisation method:

```
    testSetup() updating, unitTestBeforeAll;

    begin
        mockManager := create JadeMockManager() transient;
        classMock := mockManager.createClassMock(Calculator);
    end;
```

The **JadeMockManager** instance can be deleted in the test teardown method. 
This will also delete any class and method mocks that have been created:

```
    testTeardown() updating, unitTestAfterAll;

    begin
        delete mockManager;
    end;
```

Instantiate a Calculator instance that will receive the method mocks that will be created:

```
    calculator := classMock.instantiateMockedObject().Calculator;
```

If we want an existing **Calculator** instance to receive the method mocks the instance can be injected into the class mock:

```
    classMock.injectMockedObject(myCalculator);
```

Now create a method mock for the **Calculator::add()** method:

```
    vars
        methodMock : JadeMethodMock;

    begin
        methodMock := classMock.mockMethod(Calculator::add);
    end;
```

We want the method mock to return a specific value, in this case the Integer 3:

```
    methodMock.returns(3);
```

We can write a test to validate this call:

```
    assertEquals(3, calculator.add(1, 2));
```

We can also check that the method mock was called:

```
    assertTrue(methodMock.wasReceivedOnce());
```

We can also check that the method mock was called with the correct parameters:

```
    assertTrue(methodMock.wasReceivedWith(1, 2));
```

The returns() method can be called multiple times to set up a sequence of return values:

```
    methodMock.returns(1);
    methodMock.returns(2);
    methodMock.returns(3);
```

This can also be written using a fluent coding style as follows:

```
    methodMock.returns(1).returns(2).returns(3);
```
