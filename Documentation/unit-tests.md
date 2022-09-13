# Jade Mocking Framework Unit Test Schema

The **JadeTestMockSchema** provides Jade Unit Tests for the Jade Mocking Framework. 
The **JadeTestMockPackageSchema** schema exports a package that is used to test the behaviour of imported classes and methods.

## Quick Setup

If the Jade Mocking Framework schema hasn't already been loaded, load **JadeMockSchema.mul**. 
This will load the **JadeMockSchema** schema.

Load the **JadeTestMockSchema.mul** file. 
This will load the **JadeTestMockSchema** and **JadeTestMockPackageSchema** schemas. 

**JadeTestMockSchema** is a subschema of **JadeMockSchema** that contains Jade Unit Tests for the methods in the mocking framework.

**JadeTestMockPackageSchema** is a subschema of **RootSchema** and defines classes that are imported by the **JadeMockSchema** as a package and used for testing method mocks for imported class methods.

## Test Description

Tests for all methods exported from the **JadeMockSchema** in the **JadeTestMockPackage** are implemented in subclasses of **JadeTestCase**. 
These tests can be used as examples of how to use the mocking framework. 
They should also be run if changes are made to the implementation of the framework.