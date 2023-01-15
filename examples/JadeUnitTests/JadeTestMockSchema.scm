jadeVersionNumber "22.0.00";
schemaDefinition
JadeTestMockSchema subschemaOf JadeMockSchema completeDefinition;
importedPackageDefinitions
	JadeTestMockPackage is JadeTestMockPackageSchema::JadeTestMockPackage
	(
	importedClassDefinitions
		C1
		JadeTestMockPackageClasses
	)

localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
typeHeaders
	JadeTestMockSchema subclassOf JadeMockSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	GJadeTestMockSchema subclassOf GJadeMockSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	MockUnitTests subclassOf JadeTestCase;
	Test_alwaysReturns subclassOf MockUnitTests;
	Test_alwaysUpdatesParameters subclassOf MockUnitTests;
	Test_check_call_stack subclassOf MockUnitTests;
	Test_createClassMock subclassOf MockUnitTests;
	Test_createInterfaceMock subclassOf MockUnitTests;
	Test_deleteClassMock subclassOf MockUnitTests;
	Test_deleteInterfaceMock subclassOf MockUnitTests;
	Test_deleteMockedObject subclassOf MockUnitTests;
	Test_getCallCount subclassOf MockUnitTests;
	Test_getCallHistory subclassOf MockUnitTests;
	Test_getMethodMock subclassOf MockUnitTests;
	Test_injectMockedObject subclassOf MockUnitTests;
	Test_instantiateMockedObject subclassOf MockUnitTests;
	Test_isMockedObject subclassOf MockUnitTests;
	Test_isObjectInstantiated subclassOf MockUnitTests;
	Test_mockAllInstances subclassOf MockUnitTests;
	Test_mockAllMethodsUpToClass subclassOf MockUnitTests;
	Test_mockImportedMethod subclassOf MockUnitTests;
	Test_mockMethod subclassOf MockUnitTests;
	Test_mock_interface_method subclassOf MockUnitTests;
	Test_respondsTo subclassOf MockUnitTests;
	Test_returns subclassOf MockUnitTests;
	Test_updatesParameters subclassOf MockUnitTests;
	Test_updatesProperties subclassOf MockUnitTests;
	Test_wasReceived subclassOf MockUnitTests;
	Test_wasReceivedBy subclassOf MockUnitTests;
	Test_wasReceivedOnce subclassOf MockUnitTests;
	Test_wasReceivedOnceBy subclassOf MockUnitTests;
	Test_wasReceivedOnceWith subclassOf MockUnitTests;
	Test_wasReceivedOnceWithBy subclassOf MockUnitTests;
	Test_wasReceivedWith subclassOf MockUnitTests;
	Test_wasReceivedWithBy subclassOf MockUnitTests;
	Test_whenCalledDoes subclassOf MockUnitTests;
	Test_whenCalledInvoke subclassOf MockUnitTests;
	MockTestClasses subclassOf Object abstract;
	AbstractClass subclassOf MockTestClasses abstract;
	C1 subclassOf MockTestClasses;
	C1Sub subclassOf C1;
	C2 subclassOf MockTestClasses;
	TransientNotAllowedClass subclassOf MockTestClasses final, persistentAllowed;
	SJadeTestMockSchema subclassOf SJadeMockSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
interfaceDefs
	TestInterfaces
	(
	)
	I1
	(
	subInterfaceOf
		TestInterfaces
	jadeMethodDefinitions
		m1(
			integer: Integer io; 
			string: String output): String;
	)
	I2
	(
	subInterfaceOf
		TestInterfaces
	jadeMethodDefinitions
		m2(
			integer: Integer io; 
			string: String output): String;
	)
	I3
	(
	)
	I4
	(
	subInterfaceOf
		I1
		I3
	)
	I5
	(
	subInterfaceOf
		I1
		I4
	)
membershipDefinitions
typeDefinitions
	JadeTestMockPackage::C1 completeDefinition
	(
	)
	JadeTestMockPackage::JadeTestMockPackageClasses completeDefinition
	(
	)
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
	JadeTestMockSchema completeDefinition
	(
	attributeDefinitions
		destructorCalled_c1:           Boolean;
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
	GJadeTestMockSchema completeDefinition
	(
	)
	JadeTestCase completeDefinition
	(
	)
	MockUnitTests completeDefinition
	(
	referenceDefinitions
		mockManager:                   JadeMockManager ;
	jadeMethodDefinitions
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_alwaysReturns completeDefinition
	(
	jadeMethodDefinitions
		myMethodMock(
			meth: Method; 
			receiver: Object input; 
			parameters: ParamListType io): Any;
		test_alwaysReturns() unitTest;
		test_alwaysReturns_already_called() unitTest;
		test_alwaysReturns_no_return() unitTest;
		test_alwaysReturns_subobject() unitTest;
		test_alwaysReturns_wrong_type() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_alwaysUpdatesParameters completeDefinition
	(
	jadeMethodDefinitions
		test_alwaysUpdatesParameters() unitTest;
		test_alwaysUpdatesParameters_already_called() unitTest;
		test_alwaysUpdatesParameters_subobject() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_check_call_stack completeDefinition
	(
	jadeMethodDefinitions
		myMethodMock(
			meth: Method; 
			receiver: Object input; 
			parameters: ParamListType io): Any;
		test_whenCalledInvoke_simple() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	implementInterfaces
		JadeMethodMockIF
		(
			methodMock is myMethodMock;
		)
	)
	Test_createClassMock completeDefinition
	(
	jadeMethodDefinitions
		test_createClassMock() unitTest;
		test_createClassMock_duplicate() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_createInterfaceMock completeDefinition
	(
	jadeMethodDefinitions
		test_createInterfaceMock() unitTest;
		test_createInterfaceMock_duplicate() unitTest;
		test_createInterfaceMock_extends_multiple_interfaces() unitTest;
		test_createInterfaceMock_no_methods() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_deleteClassMock completeDefinition
	(
	jadeMethodDefinitions
		test_deleteClassMock() unitTest;
		test_deleteClassMock_already_deleted() unitTest;
		test_deleteClassMock_delete_mock_instance() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_deleteInterfaceMock completeDefinition
	(
	jadeMethodDefinitions
		test_deleteInterfaceMock() unitTest;
		test_deleteInterfaceMock_already_deleted() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_deleteMockedObject completeDefinition
	(
	jadeMethodDefinitions
		test_deleteMockedObject_delete_mock_instance() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_getCallCount completeDefinition
	(
	jadeMethodDefinitions
		test_getCallCount() unitTest;
		test_getCallCount_method_not_called() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_getCallHistory completeDefinition
	(
	jadeMethodDefinitions
		test_getCallHistory() unitTest;
		test_getCallHistory_invalid_index() unitTest;
		test_getCallHistory_method_not_called() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_getMethodMock completeDefinition
	(
	jadeMethodDefinitions
		test_getMethodMock() unitTest;
		test_getMethodMock_delete_methodMock() unitTest;
		test_getMethodMock_not_found() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_injectMockedObject completeDefinition
	(
	jadeMethodDefinitions
		test_injectMockedObject() unitTest;
		test_injectMockedObject_duplicate_interface() unitTest;
		test_injectMockedObject_inject_duplicate_object() unitTest;
		test_injectMockedObject_inject_instantiated_object() unitTest;
		test_injectMockedObject_interface() unitTest;
		test_injectMockedObject_invalid() unitTest;
		test_injectMockedObject_subobject() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_instantiateMockedObject completeDefinition
	(
	jadeMethodDefinitions
		test_instantiateMockedObject_abstract_class() unitTest;
		test_instantiateMockedObject_collection_class() unitTest;
		test_instantiateMockedObject_create_mock_instance() unitTest;
		test_instantiateMockedObject_delete_mock_instance() unitTest;
		test_instantiateMockedObject_transient_not_allowed_class() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_isMockedObject completeDefinition
	(
	jadeMethodDefinitions
		test_isMockedObject_instance_deleted() unitTest;
		test_isMockedObject_instance_mocked() unitTest;
		test_isMockedObject_instance_not_mocked() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_isObjectInstantiated completeDefinition
	(
	jadeMethodDefinitions
		test_isObjectInstantiated_instance_deleted() unitTest;
		test_isObjectInstantiated_instance_mocked() unitTest;
		test_isObjectInstantiated_instance_not_mocked() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_mockAllInstances completeDefinition
	(
	jadeMethodDefinitions
		test_mock_all_class_instances() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_mockAllMethodsUpToClass completeDefinition
	(
	jadeMethodDefinitions
		test_mockAllMethodsUpToClass_up_to_Object() unitTest;
		test_mockAllMethodsUpToClass_up_to_mocked_class() unitTest;
		test_mockAllMethodsUpToClass_up_to_not_superclass() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_mockImportedMethod completeDefinition
	(
	jadeMethodDefinitions
		test_mockMethod() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_mockMethod completeDefinition
	(
	jadeMethodDefinitions
		test_mockMethod() unitTest;
		test_mockMethod_before_object_injected() unitTest;
		test_mockMethod_before_object_injected_and_instantiated() unitTest;
		test_mockMethod_before_object_instantiated() unitTest;
		test_mockMethod_constructor() unitTest;
		test_mockMethod_delete_methodMock() unitTest;
		test_mockMethod_destructor() unitTest;
		test_mockMethod_duplicate_method_mocks() unitTest;
		test_mockMethod_imported_method() unitTest;
		test_mockMethod_inheritMethod() unitTest;
		test_mockMethod_invokeMethod() unitTest;
		test_mockMethod_mapping_method() unitTest;
		test_mockMethod_multiple_calls_different_receiver() unitTest;
		test_mockMethod_multiple_calls_same_receiver() unitTest;
		test_mockMethod_no_parameters() unitTest;
		test_mockMethod_server_method() unitTest;
		test_mockMethod_subobject() unitTest;
		test_mockMethod_twice_on_different_instance_with_different_class_mock() unitTest;
		test_mockMethod_twice_on_different_instance_with_different_mock_manager() unitTest;
		test_mockMethod_twice_on_same_instance() unitTest;
		test_mockMethod_twice_on_same_instance_with_different_class_mock() unitTest;
		test_mockMethod_twice_on_same_instance_with_different_mock_manager() unitTest;
		test_mockMethod_type_method() unitTest;
		test_mockMethod_type_method_class_instance() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_mock_interface_method completeDefinition
	(
	jadeMethodDefinitions
		test_interface_parameter_as_mock() unitTest;
		test_mock_interface_method() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_respondsTo completeDefinition
	(
	jadeMethodDefinitions
		test_respondsTo() unitTest;
		test_respondsTo_invalid() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_returns completeDefinition
	(
	jadeMethodDefinitions
		test_returns() unitTest;
		test_returns_already_called() unitTest;
		test_returns_no_return() unitTest;
		test_returns_wrong_type() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_updatesParameters completeDefinition
	(
	jadeMethodDefinitions
		test_updatesParameters_already_called() unitTest;
		test_updatesParameters_input() unitTest;
		test_updatesParameters_invalid_name() unitTest;
		test_updatesParameters_invalid_type() unitTest;
		test_updatesParameters_io() unitTest;
		test_updatesParameters_io_and_return() unitTest;
		test_updatesParameters_io_multiple_times() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_updatesProperties completeDefinition
	(
	jadeMethodDefinitions
		test_updatesProperties() unitTest;
		test_updatesProperties_already_called() unitTest;
		test_updatesProperties_invalid_parameter_list() unitTest;
		test_updatesProperties_invalid_parameter_list_bad_type() unitTest;
		test_updatesProperties_multiple_properties() unitTest;
		test_updatesProperties_multiple_times() unitTest;
		test_updatesProperties_object_reference() unitTest;
		test_updatesProperties_property_not_on_mock_class() unitTest;
		test_updatesProperties_wrong_value_type() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceived completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceived_multiple_instances_different_lifetime() unitTest;
		test_wasReceived_multiple_instances_same_lifetime() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceivedBy completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceivedBy() unitTest;
		test_wasReceivedBy_bad_receiver() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceivedOnce completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceivedOnce_call_multiple_method_mocks() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceivedOnceBy completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceivedOnceBy() unitTest;
		test_wasReceivedOnceBy_bad_receiver() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceivedOnceWith completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceivedOnceWith() unitTest;
		test_wasReceivedOnceWith_multiple_calls() unitTest;
		test_wasReceivedOnceWith_wrong_values() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceivedOnceWithBy completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceivedOnceWithBy() unitTest;
		test_wasReceivedOnceWithBy_bad_parameters() unitTest;
		test_wasReceivedOnceWithBy_bad_receiver() unitTest;
		test_wasReceivedOnceWithBy_multiple_calls() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceivedWith completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceivedWith() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_wasReceivedWithBy completeDefinition
	(
	jadeMethodDefinitions
		test_wasReceivedWithBy() unitTest;
		test_wasReceivedWithBy_bad_receiver() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_whenCalledDoes completeDefinition
	(
	jadeMethodDefinitions
		test_whenCalledDoes_local_variables() unitTest;
		test_whenCalledDoes_no_parameters() unitTest;
		test_whenCalledDoes_simple() unitTest;
		test_whenCalledDoes_with_returns_local_variables() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	Test_whenCalledInvoke completeDefinition
	(
	jadeMethodDefinitions
		myMethodMock(
			meth: Method; 
			receiver: Object input; 
			parameters: ParamListType io): Any;
		test_whenCalledInvoke_simple() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	implementInterfaces
		JadeMethodMockIF
		(
			methodMock is myMethodMock;
		)
	)
	MockTestClasses completeDefinition
	(
	)
	AbstractClass completeDefinition
	(
	jadeMethodDefinitions
		m1();
	)
	C1 completeDefinition
	(
	attributeDefinitions
		constructorCalled:             Boolean;
		name:                          String[31];
		string:                        String[31];
		strings:                       StringArray;
	referenceDefinitions
		object:                        Object ;
	jadeMethodDefinitions
		callM1(i: Integer): String;
		callTypeMethod(
			integer: Integer io; 
			string: String output): String;
		create() updating;
		delete() updating;
		m1(
			integer: Integer io; 
			string: String output): String;
		m2(
			integer: Integer io; 
			string: String output): String;
		m3(integer: Integer): Integer;
		m4(object: Object): Object;
		m5(object: Object io): Object;
		m6();
		serverMethod(
			integer: Integer io; 
			string: String output): String serverExecution;
		string(
			set: Boolean; 
			_value: String io) mapping;
		typeMethod(
			integer: Integer io; 
			string: String output): String typeMethod;
	implementInterfaces
		I1
		(
			m1 is m1;
		)
		I2
		(
			m2 is m2;
		)
		TestInterfaces
		(
		)
	)
	C1Sub completeDefinition
	(
	jadeMethodDefinitions
		m3(integer: Integer): Integer;
	)
	C2 completeDefinition
	(
	attributeDefinitions
		integer:                       Integer;
	jadeMethodDefinitions
		m1(
			i1: I1 input; 
			integer: Integer io; 
			string: String output): String;
	)
	TransientNotAllowedClass completeDefinition
	(
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
	SJadeTestMockSchema completeDefinition
	(
	)
databaseDefinitions
	JadeTestMockSchemaDb
	(
	databaseFileDefinitions
		"jadetestmockschema";
	defaultFileDefinition "jadetestmockschema";
	classMapDefinitions
		AbstractClass in "jadetestmockschema";
		C1 in "jadetestmockschema";
		C1Sub in "jadetestmockschema";
		C2 in "jadetestmockschema";
		GJadeTestMockSchema in "jadetestmockschema";
		JadeTestMockSchema in "_usergui";
		MockTestClasses in "jadetestmockschema";
		MockUnitTests in "jadetestmockschema";
		SJadeTestMockSchema in "_environ";
		Test_alwaysReturns in "jadetestmockschema";
		Test_alwaysUpdatesParameters in "jadetestmockschema";
		Test_check_call_stack in "jadetestmockschema";
		Test_createClassMock in "jadetestmockschema";
		Test_createInterfaceMock in "jadetestmockschema";
		Test_deleteClassMock in "jadetestmockschema";
		Test_deleteInterfaceMock in "jadetestmockschema";
		Test_deleteMockedObject in "jadetestmockschema";
		Test_getCallCount in "jadetestmockschema";
		Test_getCallHistory in "jadetestmockschema";
		Test_getMethodMock in "jadetestmockschema";
		Test_injectMockedObject in "jadetestmockschema";
		Test_instantiateMockedObject in "jadetestmockschema";
		Test_isMockedObject in "jadetestmockschema";
		Test_isObjectInstantiated in "jadetestmockschema";
		Test_mockAllInstances in "jadetestmockschema";
		Test_mockAllMethodsUpToClass in "jadetestmockschema";
		Test_mockImportedMethod in "jadetestmockschema";
		Test_mockMethod in "jadetestmockschema";
		Test_mock_interface_method in "jadetestmockschema";
		Test_respondsTo in "jadetestmockschema";
		Test_returns in "jadetestmockschema";
		Test_updatesParameters in "jadetestmockschema";
		Test_updatesProperties in "JadeMockSchema";
		Test_wasReceived in "jadetestmockschema";
		Test_wasReceivedBy in "jadetestmockschema";
		Test_wasReceivedOnce in "jadetestmockschema";
		Test_wasReceivedOnceBy in "jadetestmockschema";
		Test_wasReceivedOnceWith in "jadetestmockschema";
		Test_wasReceivedOnceWithBy in "jadetestmockschema";
		Test_wasReceivedWith in "jadetestmockschema";
		Test_wasReceivedWithBy in "jadetestmockschema";
		Test_whenCalledDoes in "jadetestmockschema";
		Test_whenCalledInvoke in "jadetestmockschema";
		TransientNotAllowedClass in "jadetestmockschema";
	)
typeSources
	MockUnitTests (
	jadeMethodSources
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	delete mockManager;
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	mockManager := create JadeMockManager() transient;
end;
}
	)
	Test_alwaysReturns (
	jadeMethodSources
myMethodMock
{
myMethodMock(meth : Method; receiver : Object input; parameters : ParamListType io) : Any;

begin
	assertEquals(C1::m4, meth);
	assertEquals(self, app.getParamListTypeEntry(1, parameters));
	
	return receiver;
end;
}
test_alwaysReturns
{
test_alwaysReturns() unitTest;

//	set the return value for a method mock using a value of the correct type - call the method multiple times

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer 				: Integer;
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).alwaysReturns("foobar");
	integer := 123;
	string := "hello world";
	result := mockedObject.m1(integer, string);
	assertEquals("foobar", result);
	result := mockedObject.m1(integer, string);
	assertEquals("foobar", result);
	result := mockedObject.m1(integer, string);
	assertEquals("foobar", result);
	
epilog
	delete classMock;
end;
}
test_alwaysReturns_already_called
{
test_alwaysReturns_already_called() unitTest;

//	set the value to always return for a method mock that has already been called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m3);
	mockedObject.m3(123);
	expectedException(JadeMockingFramework.MockError_MethodMockAlreadyCalled);
	methodMock.alwaysReturns(456);
	
epilog
	delete classMock;
end;
}
test_alwaysReturns_no_return
{
test_alwaysReturns_no_return() unitTest;

//	set the return value for a method mock that does not have a return value

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m6).alwaysReturns(123);
	
epilog
	delete classMock;
end;
}
test_alwaysReturns_subobject
{
test_alwaysReturns_subobject() unitTest;

//	set the return value for a method mock to an a subobject (exclusive collection) - call the method multiple times

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result					: Object;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m4).alwaysReturns(mockedObject.strings);
	result := mockedObject.m4(self);
	assertEquals(mockedObject.strings, result);
	result := mockedObject.m4(self);
	assertEquals(mockedObject.strings, result);
	result := mockedObject.m4(self);
	assertEquals(mockedObject.strings, result);
	
epilog
	delete classMock;
end;
}
test_alwaysReturns_wrong_type
{
test_alwaysReturns_wrong_type() unitTest;

//	set the return value for a method mock using a value of the wrong type

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m2).alwaysReturns(123);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_alwaysUpdatesParameters (
	jadeMethodSources
test_alwaysUpdatesParameters
{
test_alwaysUpdatesParameters() unitTest;

//	set the updating parametes for a method mock using a value of the correct type - call the method multiple times

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer 				: Integer;
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).alwaysUpdatesParameters("integer", 123, "string", "foobar");
	integer := 123;
	string := "hello world";
	result := mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	integer := 123;
	string := "hello world";
	result := mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	integer := 123;
	string := "hello world";
	result := mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	
epilog
	delete classMock;
end;
}
test_alwaysUpdatesParameters_already_called
{
test_alwaysUpdatesParameters_already_called() unitTest;

//	set the parameters to always update for a method mock that has already been called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer 				: Integer;
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m1);
	integer := 123;
	string := "hello world";
	result := mockedObject.m1(integer, string);
	expectedException(JadeMockingFramework.MockError_MethodMockAlreadyCalled);
	methodMock.alwaysUpdatesParameters("integer", 123, "string", "foobar");
	
epilog
	delete classMock;
end;
}
test_alwaysUpdatesParameters_subobject
{
test_alwaysUpdatesParameters_subobject() unitTest;

//	set the updating parametes for a method mock to a subobject (exclusive collection) - call the method multiple times

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	object					: Object;
	result					: Object;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m5).alwaysUpdatesParameters("object", self);
	object := app;
	result := mockedObject.m5(object);
	assertEquals(self, object);
	object := app;
	result := mockedObject.m5(object);
	assertEquals(self, object);
	object := app;
	result := mockedObject.m5(object);
	assertEquals(self, object);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_check_call_stack (
	jadeMethodSources
myMethodMock
{
myMethodMock(meth : Method; receiver : Object input; parameters : ParamListType io) : Any;

begin
	process.currentStack(app.getParamListTypeEntry(1, parameters).ProcessStackArray);
	
	return null;
end;
}
test_whenCalledInvoke_simple
{
test_whenCalledInvoke_simple() unitTest;

//	test that the call stack is reported correctly *inside* the method mock

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	callStack				: ProcessStackArray;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;

	methodMock := classMock.mockMethod(C1::m4).whenCalledInvoke(appContext, self);
	
	callStack := create ProcessStackArray() transient;
	
	mockedObject.m4(callStack);
	
	assertEquals(callStack[ 1 ].method, Process::currentStack);
	assertEquals(callStack[ 2 ].method, Test_check_call_stack::myMethodMock);
	assertEquals(callStack[ 3 ].method, method);
	
epilog
	delete classMock;
	delete callStack;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_createClassMock (
	jadeMethodSources
test_createClassMock
{
test_createClassMock() unitTest;

//	create a mock for a class

vars
	classMock				: JadeClassMock;

begin
	classMock := mockManager.createClassMock(C1);
	assertNotNull(classMock);
	assertTrue(app.isValidObject(classMock));
	
epilog
	delete classMock;
end;
}
test_createClassMock_duplicate
{
test_createClassMock_duplicate() unitTest;

//	create two mocks for the same class

vars
	classMock1				: JadeClassMock;
	classMock2				: JadeClassMock;
	mockedObject1			: C1;
	mockedObject2			: C1;

begin
	classMock1 := mockManager.createClassMock(C1);
	assertNotNull(classMock1);
	assertTrue(app.isValidObject(classMock1));
	classMock2 := mockManager.createClassMock(C1);
	assertNotNull(classMock2);
	assertTrue(app.isValidObject(classMock2));
	mockedObject1 := classMock1.instantiateMockedObject().C1;
	mockedObject2 := classMock2.instantiateMockedObject().C1;
		
epilog
	delete classMock1;
	delete classMock2;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_createInterfaceMock (
	jadeMethodSources
test_createInterfaceMock
{
test_createInterfaceMock() unitTest;

//	create a mock for an interface

vars
	interfaceMock			: JadeInterfaceMock;

begin
	interfaceMock := mockManager.createInterfaceMock(I1);
	assertNotNull(interfaceMock);
	assertTrue(app.isValidObject(interfaceMock));
	assertTrue(interfaceMock.isKindOf(JadeInterfaceMock));
	assertTrue(interfaceMock.respondsTo(I1));
	
epilog
	delete interfaceMock;
end;
}
test_createInterfaceMock_duplicate
{
test_createInterfaceMock_duplicate() unitTest;

//	create a mock for an interface that is already mocked

vars
	interfaceMock1			: JadeInterfaceMock;
	interfaceMock2			: JadeInterfaceMock;

begin
	interfaceMock1 := mockManager.createInterfaceMock(I1);
	assertNotNull(interfaceMock1);
	assertTrue(app.isValidObject(interfaceMock1));
	assertTrue(interfaceMock1.isKindOf(JadeInterfaceMock));
	assertTrue(interfaceMock1.respondsTo(I1));
	interfaceMock2 := mockManager.createInterfaceMock(I1);
	assertNotNull(interfaceMock2);
	assertTrue(app.isValidObject(interfaceMock2));
	assertTrue(interfaceMock2.isKindOf(JadeInterfaceMock));
	assertTrue(interfaceMock2.respondsTo(I1));
	
epilog
	delete interfaceMock1;
	delete interfaceMock2;
end;
}
test_createInterfaceMock_extends_multiple_interfaces
{
test_createInterfaceMock_extends_multiple_interfaces() unitTest;

//	create a mock for an interface that extends 2 interfaces

vars
	interfaceMock			: JadeInterfaceMock;

begin
	interfaceMock := mockManager.createInterfaceMock(I4);
	assertNotNull(interfaceMock);
	assertTrue(app.isValidObject(interfaceMock));
	assertTrue(interfaceMock.isKindOf(JadeInterfaceMock));
	assertTrue(interfaceMock.respondsTo(I1));
	assertTrue(interfaceMock.respondsTo(I3));
	assertTrue(interfaceMock.respondsTo(I4));
	
epilog
	delete interfaceMock;
end;
}
test_createInterfaceMock_no_methods
{
test_createInterfaceMock_no_methods() unitTest;

//	create a mock for an interface that has no methods

vars
	interfaceMock			: JadeInterfaceMock;

begin
	interfaceMock := mockManager.createInterfaceMock(I3);
	assertNotNull(interfaceMock);
	assertTrue(app.isValidObject(interfaceMock));
	assertTrue(interfaceMock.isKindOf(JadeInterfaceMock));
	assertTrue(interfaceMock.respondsTo(I3));
	
epilog
	delete interfaceMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_deleteClassMock (
	jadeMethodSources
test_deleteClassMock
{
test_deleteClassMock() unitTest;

//	delete a mock for a class

vars
	classMock				: JadeClassMock;
	classMock_d				: JadeClassMock;

begin
	classMock := mockManager.createClassMock(C1);
	classMock_d := classMock;
	mockManager.deleteClassMock(classMock_d);
	assertNull(classMock_d);
	assertFalse(app.isValidObject(classMock));
	
epilog
	delete classMock_d;
end;
}
test_deleteClassMock_already_deleted
{
test_deleteClassMock_already_deleted() unitTest;

//	delete a mock for a class that has alrady been deleted

vars
	classMock				: JadeClassMock;
	classMock_d				: JadeClassMock;

begin
	classMock := mockManager.createClassMock(C1);
	classMock_d := classMock;
	mockManager.deleteClassMock(classMock_d);
	classMock_d := classMock;
	expectedException(JErr_ObjectNotFound);
	mockManager.deleteClassMock(classMock_d);
end;
}
test_deleteClassMock_delete_mock_instance
{
test_deleteClassMock_delete_mock_instance() unitTest;

//	ensure the mock instance is deleted when the class mock is deleted

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(app.isValidObject(mockedObject));
	delete classMock;
	assertFalse(app.isValidObject(mockedObject));

epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_deleteInterfaceMock (
	jadeMethodSources
test_deleteInterfaceMock
{
test_deleteInterfaceMock() unitTest;

//	delete a mock for an interface

vars
	interfaceMock			: JadeInterfaceMock;
	interfaceMock_d			: JadeInterfaceMock;

begin
	interfaceMock := mockManager.createInterfaceMock(I1);
	interfaceMock_d := interfaceMock;
	mockManager.deleteInterfaceMock(interfaceMock_d);
	assertNull(interfaceMock_d);
	assertFalse(app.isValidObject(interfaceMock));
end;
}
test_deleteInterfaceMock_already_deleted
{
test_deleteInterfaceMock_already_deleted() unitTest;

//	delete a mock for an interface that has alrady been deleted

vars
	interfaceMock			: JadeInterfaceMock;
	interfaceMock_d			: JadeInterfaceMock;

begin
	interfaceMock := mockManager.createInterfaceMock(I1);
	interfaceMock_d := interfaceMock;
	mockManager.deleteInterfaceMock(interfaceMock_d);
	interfaceMock_d := interfaceMock;
	expectedException(JErr_ObjectNotFound);
	mockManager.deleteInterfaceMock(interfaceMock_d);
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_deleteMockedObject (
	jadeMethodSources
test_deleteMockedObject_delete_mock_instance
{
test_deleteMockedObject_delete_mock_instance() unitTest;

//	test that the mocked instance can be deleted - destructor not called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(app.isValidObject(mockedObject));
	assertFalse(mockedObject.constructorCalled);
	app.destructorCalled_c1 := false;
	delete mockedObject;
	assertFalse(app.destructorCalled_c1);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_getCallCount (
	jadeMethodSources
test_getCallCount
{
test_getCallCount() unitTest;

//	get the number of times a method mock is called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	i						: Integer;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	foreach i in 1 to 5 do
		mockedObject.callM1(i);
	endforeach;
	assertEquals(5, methodMock.getCallCount());
	
epilog
	delete classMock;
end;
}
test_getCallCount_method_not_called
{
test_getCallCount_method_not_called() unitTest;

//	check that the call count is 0 for a method mock that has not been called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	assertEquals(0, methodMock.getCallCount());
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_getCallHistory (
	jadeMethodSources
test_getCallHistory
{
test_getCallHistory() unitTest;

//	get the call history from a method mock

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	receiver				: Any;
	parameters				: JadeMockAnyArray;
	i						: Integer;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	
	methodMock := classMock.mockMethod(C1::m2);
	
	foreach i in 1 to 5 do
		mockedObject.callM1(i);
	endforeach;
	
	parameters := create JadeMockAnyArray() transient;

	assertEquals(5, methodMock.getCallCount());
	foreach i in 1 to methodMock.getCallCount() do
		parameters.clear();
		methodMock.getCallHistory(i, receiver, parameters);
		assertEquals(mockedObject, receiver);
		assertEquals(2, parameters.size());
		assertEquals(i, parameters[ 1 ]);
		assertEquals("", parameters[ 2 ]);
	endforeach;
	
epilog
	delete classMock;
	delete parameters;
end;
}
test_getCallHistory_invalid_index
{
test_getCallHistory_invalid_index() unitTest;

//	try to get the call history from a method mock with an invalid index

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	receiver				: Any;
	parameters				: JadeMockAnyArray;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	
	methodMock := classMock.mockMethod(C1::m2);
	
	mockedObject.callM1(1);
	mockedObject.callM1(2);
	mockedObject.callM1(3);
	
	parameters := create JadeMockAnyArray() transient;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock.getCallHistory(0, receiver, parameters);
		
epilog
	delete classMock;
	delete parameters;
end;
}
test_getCallHistory_method_not_called
{
test_getCallHistory_method_not_called() unitTest;

//	try to get the call history from a method mock that has not executed

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	receiver				: Any;
	parameters				: JadeMockAnyArray;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	
	methodMock := classMock.mockMethod(C1::m2);
	
	parameters := create JadeMockAnyArray() transient;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock.getCallHistory(0, receiver, parameters);
		
epilog
	delete classMock;
	delete parameters;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_getMethodMock (
	jadeMethodSources
test_getMethodMock
{
test_getMethodMock() unitTest;

//	test that the method mock is returned for a mocked method

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m1);
	assertEquals(methodMock, classMock.getMethodMock(C1::m1));

epilog
	delete classMock;
end;
}
test_getMethodMock_delete_methodMock
{
test_getMethodMock_delete_methodMock() unitTest;

//	test that null is returned if a mocked method is explicitly deleted

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m1);
	delete methodMock;
	assertEquals(null, classMock.getMethodMock(C1::m1));

epilog
	delete classMock;
end;
}
test_getMethodMock_not_found
{
test_getMethodMock_not_found() unitTest;

//	test that null is returned if a method is not mocked

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m1);
	assertEquals(null, classMock.getMethodMock(C1::m2));

epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_injectMockedObject (
	jadeMethodSources
test_injectMockedObject
{
test_injectMockedObject() unitTest;

//	inject an existing instance to the class

vars
	classMock				: JadeClassMock;
	methodMock				: JadeMethodMock;
	c1						: C1;
	parameters				: JadeMockAnyArray;
	receiver				: Any;

begin
	classMock := mockManager.createClassMock(C1);
	c1 := create C1() transient;
	classMock.injectMockedObject(c1);
	methodMock := classMock.mockMethod(C1::m2);
	c1.callM1(3);
	parameters := create JadeMockAnyArray() transient;
	methodMock.getCallHistory(1, receiver, parameters);
	assertEquals(c1, receiver);
	assertEquals(2, parameters.size());
	assertEquals(3, parameters[ 1 ]);
	assertEquals("", parameters[ 2 ]);
	
	
epilog
	delete classMock;
	delete c1;
	delete parameters;
end;
}
test_injectMockedObject_duplicate_interface
{
test_injectMockedObject_duplicate_interface() unitTest;

//	inject an existing interface mock instance to the interface mock that already mocks the interface (via extension)

vars
	interfaceMock1			: JadeInterfaceMock;
	interfaceMock5			: JadeInterfaceMock;
	i1						: I1;
	i5						: I5;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	interfaceMock1 := mockManager.createInterfaceMock(I1);
	i1 := interfaceMock1.I1;
	interfaceMock5 := mockManager.createInterfaceMock(I5);
	i5 := interfaceMock5.I5;
	interfaceMock1.injectMockedObject(interfaceMock5);
	integer := 123;
	string := "foo";
	result := i1.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("", string);
	assertEquals("", result);
	
epilog
	delete interfaceMock1;
	delete interfaceMock5;
end;
}
test_injectMockedObject_inject_duplicate_object
{
test_injectMockedObject_inject_duplicate_object() unitTest;

//	inject an existing instance that has already been injected to the class mock

vars
	classMock				: JadeClassMock;
	methodMock				: JadeMethodMock;
	c1						: C1;

begin
	classMock := mockManager.createClassMock(C1);
	c1 := create C1() transient;
	classMock.injectMockedObject(c1);
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	classMock.injectMockedObject(c1);

epilog
	delete classMock;
	delete c1;
end;
}
test_injectMockedObject_inject_instantiated_object
{
test_injectMockedObject_inject_instantiated_object() unitTest;

//	inject an existing instance that has been instantiated by the class mock to the class mock

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	classMock.injectMockedObject(mockedObject);

epilog
	delete classMock;
end;
}
test_injectMockedObject_interface
{
test_injectMockedObject_interface() unitTest;

//	inject an existing interface mock instance to the interface mock

vars
	interfaceMock1			: JadeInterfaceMock;
	interfaceMock2			: JadeInterfaceMock;
	i1						: I1;
	i2						: I2;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	interfaceMock1 := mockManager.createInterfaceMock(I1);
	i1 := interfaceMock1.I1;
	interfaceMock2 := mockManager.createInterfaceMock(I2);
	i2 := interfaceMock2.I2;
	interfaceMock2.injectMockedObject(interfaceMock1);
	integer := 123;
	string := "foo";
	result := i1.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("", string);
	assertEquals("", result);
	integer := 123;
	string := "foo";
	result := i2.m2(integer, string);
	assertEquals(123, integer);
	assertEquals("", string);
	assertEquals("", result);
	
epilog
	delete interfaceMock1;
	delete interfaceMock2;
end;
}
test_injectMockedObject_invalid
{
test_injectMockedObject_invalid() unitTest;

//	inject an existing instance of the wrong class to the class mock

vars
	classMock				: JadeClassMock;
	c2						: C2;

begin
	classMock := mockManager.createClassMock(C1);
	c2 := create C2() transient;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	classMock.injectMockedObject(c2);
	
epilog
	delete classMock;
	delete c2;
end;
}
test_injectMockedObject_subobject
{
test_injectMockedObject_subobject() unitTest;

//	inject an existing subject instance (exclusive collection) to the class mock

vars
	classMock				: JadeClassMock;
	methodMock				: JadeMethodMock;
	c1						: C1;
	parameters				: JadeMockAnyArray;

begin
	classMock := mockManager.createClassMock(StringArray);
	c1 := create C1() transient;
	classMock.injectMockedObject(c1.strings);
	methodMock := classMock.mockMethod(StringArray::add);
	c1.strings.add("foobar");
	assertEquals(0, c1.strings.size());
	assertTrue(methodMock.wasReceivedOnceBy(c1.strings));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith("foobar"));
	
epilog
	delete classMock;
	delete c1;
	delete parameters;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_instantiateMockedObject (
	jadeMethodSources
test_instantiateMockedObject_abstract_class
{
test_instantiateMockedObject_abstract_class() unitTest;

//	attempt to mock an abstract class

vars
	classMock				: JadeClassMock;
	mockedObject			: AbstractClass;

begin
	classMock := mockManager.createClassMock(AbstractClass);
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
 	mockedObject := classMock.instantiateMockedObject().AbstractClass;
	
epilog
	delete classMock;
end;
}
test_instantiateMockedObject_collection_class
{
test_instantiateMockedObject_collection_class() unitTest;

//	attempt to instantiate a Collection instance

//	instantiation of collections is not allowed - the collection blocks must be deleted by the destructor

vars
	classMock				: JadeClassMock;
	mockedObject			: ObjectSet;

begin
	classMock := mockManager.createClassMock(ObjectSet);
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
 	mockedObject := classMock.instantiateMockedObject().ObjectSet;
	
epilog
	delete classMock;
end;
}
test_instantiateMockedObject_create_mock_instance
{
test_instantiateMockedObject_create_mock_instance() unitTest;

//	test that the mocked instance can be created

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(app.isValidObject(mockedObject));
	assertFalse(mockedObject.constructorCalled);
	
epilog
	delete classMock;
end;
}
test_instantiateMockedObject_delete_mock_instance
{
test_instantiateMockedObject_delete_mock_instance() unitTest;

//	ensure the mock instance is deleted when the class mock is deleted

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(app.isValidObject(mockedObject));
	app.destructorCalled_c1 := false;
	delete classMock;
	assertFalse(app.destructorCalled_c1);
	assertFalse(app.isValidObject(mockedObject));

epilog
	delete classMock;
end;
}
test_instantiateMockedObject_transient_not_allowed_class
{
test_instantiateMockedObject_transient_not_allowed_class() unitTest;

//	attempt to mock an instance of a class that does not allow transient instances

vars
	classMock				: JadeClassMock;
	mockedObject			: TransientNotAllowedClass;

begin
	classMock := mockManager.createClassMock(TransientNotAllowedClass);
	mockedObject := classMock.instantiateMockedObject().TransientNotAllowedClass;
	assertTrue(mockedObject <> null);
	assertTrue(app.isValidObject(mockedObject));
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_isMockedObject (
	jadeMethodSources
test_isMockedObject_instance_deleted
{
test_isMockedObject_instance_deleted() unitTest;

//	test that a mock instance that has been deleted does not identify as being mocked

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	mockedObject := classMock.instantiateMockedObject().C1;
	classMock.deleteMockedObject(mockedObject);
	assertFalse(app.isValidObject(mockedObject));
	expectedException(JErr_ObjectNotFound);
	JadeMockingFramework@isMockedObject(mockedObject);
	
epilog
	delete classMock;
end;
}
test_isMockedObject_instance_mocked
{
test_isMockedObject_instance_mocked() unitTest;

//	test that a mocked instance identifies as being mocked

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(JadeMockingFramework@isMockedObject(mockedObject));
	
epilog
	delete classMock;
end;
}
test_isMockedObject_instance_not_mocked
{
test_isMockedObject_instance_not_mocked() unitTest;

//	test that a instance that is not a mock does not identify as being mocked

vars
	classMock				: JadeClassMock;
	c1						: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	c1 := create C1() transient;
	assertFalse(JadeMockingFramework@isMockedObject(c1));
	
epilog
	delete classMock;
	delete c1;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_isObjectInstantiated (
	jadeMethodSources
test_isObjectInstantiated_instance_deleted
{
test_isObjectInstantiated_instance_deleted() unitTest;

//	test that a mock instance that has been deleted does not identify as being mocked

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	mockedObject := classMock.instantiateMockedObject().C1;
	classMock.deleteMockedObject(mockedObject);
	assertFalse(app.isValidObject(mockedObject));
	assertFalse(classMock.isObjectInstantiated(mockedObject));
	
epilog
	delete classMock;
end;
}
test_isObjectInstantiated_instance_mocked
{
test_isObjectInstantiated_instance_mocked() unitTest;

//	test that a mocked instance identifies as being mocked

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(classMock.isObjectInstantiated(mockedObject));
	
epilog
	delete classMock;
end;
}
test_isObjectInstantiated_instance_not_mocked
{
test_isObjectInstantiated_instance_not_mocked() unitTest;

//	test that a instance that is not a mock does not identify as being mocked

vars
	classMock				: JadeClassMock;
	c1						: C1;

begin
	classMock := mockManager.createClassMock(C1);
 	c1 := create C1() transient;
	assertFalse(classMock.isObjectInstantiated(c1));
	
epilog
	delete classMock;
	delete c1;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_mockAllInstances (
	jadeMethodSources
test_mock_all_class_instances
{
test_mock_all_class_instances() unitTest;

//	test that a mocked method is not called when methods for all class instances of a specified are mocked

vars
	classMock				: JadeClassMock;
	c1						: C1;
	methodMock				: JadeMethodMock;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1).mockAllInstances(JadeClassMock.MockClassInstancesLifetime_Transient);
	methodMock := classMock.mockMethod(C1::m2).returns("foobar");
	c1 := create C1() transient;
	result := c1.callM1(0);
	
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(0, ""));
	assertEquals("foobar", result);
	
epilog
	delete classMock;
	delete c1;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_mockAllMethodsUpToClass (
	jadeMethodSources
test_mockAllMethodsUpToClass_up_to_Object
{
test_mockAllMethodsUpToClass_up_to_Object() unitTest;

//	test that methods mocks are created for all methods in the hierarchy

vars
	classMock				: JadeClassMock;
	mockedObject			: C1Sub;
	classes					: ClassColl;
	class					: Class;
	meth					: Method;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1Sub);
	mockedObject := classMock.instantiateMockedObject().C1Sub;
	classMock.mockAllMethodsUpToClass(Object);
	classes := create ClassColl() transient;
	C1Sub.allSuperclassesUpTo(classes, Object);
	foreach class in classes do
		foreach meth in class.getLocalMethods() do
			methodMock := classMock.getMethodMock(meth);
			if meth.isConstructor() or meth.isDestructor() or meth.__systemOnly() then
				assertNull(methodMock);
			else
				assertNotNull(methodMock);
			endif;
		endforeach;
		if class._isSubschemaCopy() then
			foreach meth in class.rootType().getLocalMethods() do
				methodMock := classMock.getMethodMock(meth);
				if meth.isConstructor() or meth.isDestructor() or meth.__systemOnly()then
					assertNull(methodMock);
				else
					assertNotNull(methodMock);
				endif;
			endforeach;
		endif;
	endforeach;

epilog
	delete classMock;
	delete classes;
end;
}
test_mockAllMethodsUpToClass_up_to_mocked_class
{
test_mockAllMethodsUpToClass_up_to_mocked_class() unitTest;

//	test that methods mocks are created for all methods in the mocked class and not any superclasses

vars
	classMock				: JadeClassMock;
	mockedObject			: C1Sub;
	classes					: ClassColl;
	class					: Class;
	meth					: Method;

begin
	classMock := mockManager.createClassMock(C1Sub);
	mockedObject := classMock.instantiateMockedObject().C1Sub;
	classMock.mockAllMethodsUpToClass(C1Sub);
	classes := create ClassColl() transient;
	C1Sub.allSuperclassesUpTo(classes, Object);
	foreach class in classes do
		foreach meth in class.getLocalMethods() do
			if meth.isConstructor() or meth.isDestructor() then
				continue;
			endif;
			assertEquals(class = C1Sub, classMock.getMethodMock(meth) <> null);
		endforeach;
		if class._isSubschemaCopy() then
			foreach meth in class.rootType().getLocalMethods() do
				if meth.isConstructor() or meth.isDestructor() then
					continue;
				endif;
				assertEquals(class = C1Sub,classMock.getMethodMock(meth) <> null);
			endforeach;
		endif;
	endforeach;

epilog
	delete classMock;
	delete classes;
end;
}
test_mockAllMethodsUpToClass_up_to_not_superclass
{
test_mockAllMethodsUpToClass_up_to_not_superclass() unitTest;

//	test that an exception is raised if the top class is not a superclass of the class being mocked 

vars
	classMock				: JadeClassMock;
	mockedObject			: C1Sub;

begin
	classMock := mockManager.createClassMock(C1Sub);
	mockedObject := classMock.instantiateMockedObject().C1Sub;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	classMock.mockAllMethodsUpToClass(C2);

epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_mockImportedMethod (
	jadeMethodSources
test_mockMethod
{
test_mockMethod() unitTest;

//	test that mock is called for a mocked imported method

vars 
	classMock				: JadeClassMock;
	mockedObject			: JadeTestMockPackage::C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(JadeTestMockPackage::C1);
	mockedObject := classMock.instantiateMockedObject().JadeTestMockPackage::C1;
	methodMock := classMock.mockImportedMethod(JadeTestMockPackage::C1::m2).updatesParameters("integer", 123, "string", "foobar").returns("foobar");
	integer := 1;
	string := "string";
	result := mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	assertEquals("foobar", result);
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(1, ""));
	assertEquals("foobar", result);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_mockMethod (
	jadeMethodSources
test_mockMethod
{
test_mockMethod() unitTest;

//	test that mock is called for a mocked method

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).returns("foobar");
	result := mockedObject.callM1(0);
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(0, ""));
	assertEquals("foobar", result);

epilog
	delete classMock;
end;
}
test_mockMethod_before_object_injected
{
test_mockMethod_before_object_injected() unitTest;

//	mock a method before the instance is injected

vars
	classMock				: JadeClassMock;
	methodMock				: JadeMethodMock;
	c1						: C1;
	parameters				: JadeMockAnyArray;
	receiver				: Any;

begin
	classMock := mockManager.createClassMock(C1);
	methodMock := classMock.mockMethod(C1::m2);
	c1 := create C1() transient;
	classMock.injectMockedObject(c1);
	c1.callM1(3);
	parameters := create JadeMockAnyArray transient;
	methodMock.getCallHistory(1, receiver, parameters);
	assertEquals(c1, receiver);
	assertEquals(2, parameters.size());
	assertEquals(3, parameters[ 1 ]);
	assertEquals("", parameters[ 2 ]);
	
epilog
	delete classMock;
	delete c1;
	delete parameters;
end;
}
test_mockMethod_before_object_injected_and_instantiated
{
test_mockMethod_before_object_injected_and_instantiated() unitTest;

//	mock a method before the instance is injected

vars
	classMock				: JadeClassMock;
	methodMock				: JadeMethodMock;
	c1						: C1;
	mockedObject			: C1;
	parameters				: JadeMockAnyArray;
	receiver				: Any;

begin
	classMock := mockManager.createClassMock(C1);
	methodMock := classMock.mockMethod(C1::m2);
	c1 := create C1() transient;
	classMock.injectMockedObject(c1);
	mockedObject := classMock.instantiateMockedObject().C1;
	c1.callM1(3);
	mockedObject.callM1(3);
	parameters := create JadeMockAnyArray transient;
	methodMock.getCallHistory(1, receiver, parameters);
	assertEquals(c1, receiver);
	assertEquals(2, parameters.size());
	assertEquals(3, parameters[ 1 ]);
	assertEquals("", parameters[ 2 ]);
	methodMock.getCallHistory(2, receiver, parameters);
	assertEquals(mockedObject, receiver);
	assertEquals(2, parameters.size());
	assertEquals(3, parameters[ 1 ]);
	assertEquals("", parameters[ 2 ]);
	
epilog
	delete classMock;
	delete c1;
	delete parameters;
end;
}
test_mockMethod_before_object_instantiated
{
test_mockMethod_before_object_instantiated() unitTest;

//	mock a method before the instance is instantiated

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	methodMock := classMock.mockMethod(C1::m2).returns("foobar");
	mockedObject := classMock.instantiateMockedObject().C1;
	result := mockedObject.callM1(0);
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(0, ""));
	assertEquals("foobar", result);
	
epilog
	delete classMock;
end;
}
test_mockMethod_constructor
{
test_mockMethod_constructor() unitTest;

//	attempt to mock the constructor

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::create);
	
epilog
	delete classMock;
end;
}
test_mockMethod_delete_methodMock
{
test_mockMethod_delete_methodMock() unitTest;

//	test that mock is not called for a mocked method that is explicitly deleted

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer 				: Integer;
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).returns("foobar");
	delete methodMock;
	integer := 1;
	string := "foobar";
	expectedException(JErr_ObjectNotFound);
	result := mockedObject.m1(integer, string);
	
epilog
	delete classMock;
end;
}
test_mockMethod_destructor
{
test_mockMethod_destructor() unitTest;

//	attempt to mock the destructor

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::delete);
	
epilog
	delete classMock;
end;
}
test_mockMethod_duplicate_method_mocks
{
test_mockMethod_duplicate_method_mocks() unitTest;

//	mock the same method more than one on the same mock instance

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock1				: JadeMethodMock;
	methodMock2				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock1 := classMock.mockMethod(C1::m1);
	expectedException(JErr_DuplicatedKey);
	methodMock2 := classMock.mockMethod(C1::m1);
	
epilog
	delete classMock;
end;
}
test_mockMethod_imported_method
{
test_mockMethod_imported_method() unitTest;

//	test that mock is called for a mocked imported method

vars
	classMock				: JadeClassMock;
	mockedObject			: JadeTestMockPackage::C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(JadeTestMockPackage::C1);
	mockedObject := classMock.instantiateMockedObject().JadeTestMockPackage::C1;
	methodMock := classMock.mockMethod(JadeTestMockPackage::C1::m2.exportedMethod.method).updatesParameters("integer", 123, "string", "foobar").returns("foobar");
	integer := 1;
	string := "string";
	result := mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	assertEquals("foobar", result);
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(1, ""));
	assertEquals("foobar", result);
	
epilog
	delete classMock;
end;
}
test_mockMethod_inheritMethod
{
test_mockMethod_inheritMethod() unitTest;

//	test that a mocked type method is not called but that the return values are mocked correctly

vars
	classMock				: JadeClassMock;
	mockedObject			: C1Sub;
	methodMock				: JadeMethodMock;
	result					: Integer;

begin
	classMock := mockManager.createClassMock(C1Sub);
	mockedObject := classMock.instantiateMockedObject().C1Sub;
	methodMock := classMock.mockMethod(C1::m3).returns(123);
	result := mockedObject.m3(99);
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(99 * 2));
	assertEquals(123, result);
	
epilog
	delete classMock;
end;
}
test_mockMethod_invokeMethod
{
test_mockMethod_invokeMethod() unitTest;

//	test that mock is called for a mocked method when called using invokeMethod()

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer 				: Integer;
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).updatesParameters("integer", 123, "string", "foobar").returns("foobar");
	integer := 1;
	string := "foobar";
	result := mockedObject.invokeIOMethod(appContext, C1::m1, integer, string).String;
	assertEquals(123, integer);
	assertEquals("foobar", string);
	assertEquals("foobar", result);
	
epilog
	delete classMock;
end;
}
test_mockMethod_mapping_method
{
test_mockMethod_mapping_method() unitTest;

//	mock a mapping method

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	parameters				: JadeMockAnyArray;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(app.isValidObject(mockedObject));
	
	// update the property that has a mapping method before the mapping method is mocked
	mockedObject.string := "123 Sesame Street";
	
	// mock a mapping method
	methodMock := classMock.mockMethod(C1.getMethod(C1::string.name));
	
	// access (read) the property on the instance being mocked. this calls the mocked method.
	assertEquals("set: 123 Sesame Street", mockedObject.string);
	
epilog
	delete classMock;
	delete parameters;
end;
}
test_mockMethod_multiple_calls_different_receiver
{
test_mockMethod_multiple_calls_different_receiver() unitTest;

//	test that a mock is called each time a mocked method is called - different receivers

vars
	classMock				: JadeClassMock;
	mockedObject1			: C1;
	mockedObject2			: C1;
	mockedObject3			: C1;
	methodMock				: JadeMethodMock;
	result1					: String;
	result2					: String;
	result3					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject1 := classMock.instantiateMockedObject().C1;
	mockedObject2 := classMock.instantiateMockedObject().C1;
	mockedObject3 := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).alwaysReturns("foobar");
	result1 := mockedObject1.callM1(0);
	result2 := mockedObject2.callM1(1);
	result3 := mockedObject3.callM1(2);
	assertEquals(3, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedBy(mockedObject1));
	assertTrue(methodMock.wasReceivedBy(mockedObject2));
	assertTrue(methodMock.wasReceivedBy(mockedObject3));
	assertTrue(methodMock.wasReceivedWith(0, ""));
	assertTrue(methodMock.wasReceivedWith(1, ""));
	assertTrue(methodMock.wasReceivedWith(2, ""));
	assertEquals("foobar", result1);
	assertEquals("foobar", result2);
	assertEquals("foobar", result3);
	
epilog
	delete classMock;
end;
}
test_mockMethod_multiple_calls_same_receiver
{
test_mockMethod_multiple_calls_same_receiver() unitTest;

//	test that a mock is called each time a mocked method is called - same receiver

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result1					: String;
	result2					: String;
	result3					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).alwaysReturns("foobar");
	result1 := mockedObject.callM1(0);
	result2 := mockedObject.callM1(1);
	result3 := mockedObject.callM1(2);
	assertEquals(3, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedBy(mockedObject));
	assertTrue(methodMock.wasReceivedWith(0, ""));
	assertTrue(methodMock.wasReceivedWith(1, ""));
	assertTrue(methodMock.wasReceivedWith(2, ""));
	assertEquals("foobar", result1);
	assertEquals("foobar", result2);
	assertEquals("foobar", result3);
	
epilog
	delete classMock;
end;
}
test_mockMethod_no_parameters
{
test_mockMethod_no_parameters() unitTest;

//	test that mock is called for a mocked method that does not have any parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m6);
	mockedObject.m6();
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());

epilog
	delete classMock;
end;
}
test_mockMethod_server_method
{
test_mockMethod_server_method() unitTest;

//	test that mock is called for a mocked server method

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	if not app.isMultiUser() then
		info("test should be run in multi-user");
	endif;

	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m1).updatesParameters("integer", 123, "string", "foobar").returns("foobar");
	integer := 1;
	string := "string";
	result := mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	assertEquals("foobar", result);
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(1, ""));
	assertEquals("foobar", result);
	
epilog
	delete classMock;
end;
}
test_mockMethod_subobject
{
test_mockMethod_subobject() unitTest;

//	test that mock is called for a mocked method on a subobject (exclusive collection)

vars
	classMock				: JadeClassMock;
	c1						: C1;
	mockedObject			: StringArray;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(StringArray);
	c1 := create C1() transient;
	mockedObject := c1.strings;
	classMock.injectMockedObject(c1.strings);
	methodMock := classMock.mockMethod(StringArray::add);
	c1.strings.add("foobar");
	assertEquals(0, c1.strings.size());
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith("foobar"));
	
epilog
	delete classMock;
	delete c1;
end;
}
test_mockMethod_twice_on_different_instance_with_different_class_mock
{
test_mockMethod_twice_on_different_instance_with_different_class_mock() unitTest;

//	test that a method can be mocked multiple times for different instances using different class mocks

vars
	classMock1				: JadeClassMock;
	classMock2				: JadeClassMock;
	mockedObject1			: C1;
	mockedObject2			: C1;
	methodMock1				: JadeMethodMock;
	methodMock2				: JadeMethodMock;
	result1					: String;
	result2					: String;

begin
	classMock1 := mockManager.createClassMock(C1);
	mockedObject1 := classMock1.instantiateMockedObject().C1;
	classMock2 := mockManager.createClassMock(C1);
	mockedObject2 := classMock2.instantiateMockedObject().C1;
	methodMock1 := classMock1.mockMethod(C1::m2).returns("mock1");
	methodMock2 := classMock2.mockMethod(C1::m2).returns("mock2");
	result1 := mockedObject1.callM1(1);
	result2 := mockedObject2.callM1(2);
	assertTrue(methodMock1.wasReceivedBy(mockedObject1));
	assertTrue(methodMock2.wasReceivedBy(mockedObject2));
	assertEquals("mock1", result1);
	assertEquals("mock2", result2);
	
epilog
	delete classMock1;
	delete classMock2;
end;
}
test_mockMethod_twice_on_different_instance_with_different_mock_manager
{
test_mockMethod_twice_on_different_instance_with_different_mock_manager() unitTest;

//	test that a method can be mocked multiple times for different instances using different mock managers

vars
	myMockManager			: JadeMockManager;
	classMock1				: JadeClassMock;
	classMock2				: JadeClassMock;
	mockedObject1			: C1;
	mockedObject2			: C1;
	methodMock1				: JadeMethodMock;
	methodMock2				: JadeMethodMock;
	result1					: String;
	result2					: String;

begin
	classMock1 := mockManager.createClassMock(C1);
	mockedObject1 := classMock1.instantiateMockedObject().C1;
	myMockManager := create JadeMockManager() transient;
	classMock2 := myMockManager.createClassMock(C1);
	mockedObject2 := classMock2.instantiateMockedObject().C1;
	methodMock1 := classMock1.mockMethod(C1::m2).returns("mock1");
	methodMock2 := classMock2.mockMethod(C1::m2).returns("mock2");
	result1 := mockedObject1.callM1(1);
	result2 := mockedObject2.callM1(2);
	assertTrue(methodMock1.wasReceivedBy(mockedObject1));
	assertTrue(methodMock2.wasReceivedBy(mockedObject2));
	assertEquals("mock1", result1);
	assertEquals("mock2", result2);
	
epilog
	delete myMockManager;
	delete classMock1;
end;
}
test_mockMethod_twice_on_same_instance
{
test_mockMethod_twice_on_same_instance() unitTest;

//	test that a method cannot be mocked multiple times for the same instance

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock1				: JadeMethodMock;
	methodMock2				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock1 := classMock.mockMethod(C1::m2);
	expectedException(JErr_DuplicatedKey);
	methodMock2 := classMock.mockMethod(C1::m2);
	
epilog
	delete classMock;
end;
}
test_mockMethod_twice_on_same_instance_with_different_class_mock
{
test_mockMethod_twice_on_same_instance_with_different_class_mock() unitTest;

//	test that a method can not be mocked multiple times for the same instance using different class mocks

vars
	classMock1				: JadeClassMock;
	classMock2				: JadeClassMock;
	mockedObject			: C1;
	methodMock1				: JadeMethodMock;
	methodMock2				: JadeMethodMock;

begin
	classMock1 := mockManager.createClassMock(C1);
	mockedObject := classMock1.instantiateMockedObject().C1;
	classMock2 := mockManager.createClassMock(C1);
	classMock2.injectMockedObject(mockedObject);
	methodMock1 := classMock1.mockMethod(C1::m2).returns("mock1");
	expectedException(JErr_MethodMockDuplicated);
	methodMock2 := classMock2.mockMethod(C1::m2).returns("mock2");
	
epilog
	delete classMock1;
	delete classMock2;
end;
}
test_mockMethod_twice_on_same_instance_with_different_mock_manager
{
test_mockMethod_twice_on_same_instance_with_different_mock_manager() unitTest;

//	test that a method can not be mocked multiple times for the same instance using different mock managers

vars
	myMockManager			: JadeMockManager;
	classMock1				: JadeClassMock;
	classMock2				: JadeClassMock;
	mockedObject			: C1;
	methodMock1				: JadeMethodMock;
	methodMock2				: JadeMethodMock;

begin
	classMock1 := mockManager.createClassMock(C1);
	mockedObject := classMock1.instantiateMockedObject().C1;
	myMockManager := create JadeMockManager() transient;
	classMock2 := myMockManager.createClassMock(C1);
	classMock2.injectMockedObject(mockedObject);
	methodMock1 := classMock1.mockMethod(C1::m2).returns("mock1");
	expectedException(JErr_MethodMockDuplicated);
	methodMock2 := classMock2.mockMethod(C1::m2).returns("mock2");
	
epilog
	delete myMockManager;
	delete classMock1;
end;
}
test_mockMethod_type_method
{
test_mockMethod_type_method() unitTest;

//	test that a mocked type method is not called but that the return values are mocked correctly

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer 				: Integer; 
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::typeMethod).updatesParameters("integer", 123, "string", "foobar").returns("returns foobar");
	integer := 1;
	string := "initial";
	result := mockedObject.callTypeMethod(integer, string);
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(1, ""));	// usage output parameter set to null in C1::m1()
	assertTrue(methodMock.wasReceivedOnceBy(C1));
	assertEquals(integer, 123);
	assertEquals(string, "foobar");
	assertEquals("returns foobar", result);
	
epilog
	delete classMock;
end;
}
test_mockMethod_type_method_class_instance
{
test_mockMethod_type_method_class_instance() unitTest;

//	test that a mocked type method is not called but that the return values are mocked correctly when type methods is called from a method that is not mocking the class

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	c1						: C1;
	integer 				: Integer; 
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::typeMethod).updatesParameters("integer", 123, "string", "foobar").returns("returns foobar");
	c1 := create C1() transient;
	integer := 1;
	string := "initial";
	result := c1.callTypeMethod(integer, string);
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(1, ""));	// usage output parameter set to null in C1::m1()
	assertTrue(methodMock.wasReceivedOnceBy(C1));
	assertEquals(integer, 123);
	assertEquals(string, "foobar");
	assertEquals("returns foobar", result);
	
epilog
	delete classMock;
	delete c1;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_mock_interface_method (
	jadeMethodSources
test_interface_parameter_as_mock
{
test_interface_parameter_as_mock() unitTest;

//	verify that mocked interface methods are called when an interface (instance) is passed as a parameter to a method

vars
	interfaceMock			: JadeInterfaceMock;
	methodMock				: JadeMethodMock;
	i1						: I1;
	c2						: C2;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	interfaceMock := mockManager.createInterfaceMock(I1);
	methodMock := interfaceMock.getMethodMock(I1::m1).updatesParameters("integer", 99, "string", "bar").returns("abc");
	i1 := interfaceMock.I1;
	c2 := create C2() transient;
	integer := 123;
	string := "foo";
	result := c2.m1(i1, integer, string);
	assertTrue(methodMock.wasReceivedOnceByWith(i1.Object, 123, ""));	// usage output parameter set to null in C2::m1()
	assertEquals(99, integer);
	assertEquals("bar", string);
	assertEquals("abc", result);
	
epilog
	delete interfaceMock;
	delete c2;
end;
}
test_mock_interface_method
{
test_mock_interface_method() unitTest;

//	verify that a mocked interface method is called if the interface is mocked

vars
	interfaceMock			: JadeInterfaceMock;
	i1						: I1;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	interfaceMock := mockManager.createInterfaceMock(I1);
	i1 := interfaceMock.I1;
	integer := 123;
	string := "foo";
	result := i1.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("", string);
	assertEquals("", result);
	
epilog
	delete interfaceMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_respondsTo (
	jadeMethodSources
test_respondsTo
{
test_respondsTo() unitTest;

//	verify that a mocked interface responds to the interface

vars
	interfaceMock			: JadeInterfaceMock;

begin
	interfaceMock := mockManager.createInterfaceMock(I1);
	assertTrue(interfaceMock.respondsTo(I1));
	
epilog
	delete interfaceMock;
end;
}
test_respondsTo_invalid
{
test_respondsTo_invalid() unitTest;

//	verify that a mocked interface responds does not respond to an interface that is not being mocked

vars
	interfaceMock			: JadeInterfaceMock;

begin
	interfaceMock := mockManager.createInterfaceMock(I1);
	assertFalse(interfaceMock.respondsTo(I2));
	
epilog
	delete interfaceMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_returns (
	jadeMethodSources
test_returns
{
test_returns() unitTest;

//	set the return value for a method mock using a value of the correct type - call the method multiple times

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).returns("foobar1").returns("foobar2").returns("foobar3");
	
	// call a method on the instance being mocked 4 times
	assertEquals("foobar1", mockedObject.callM1(0));
	assertEquals("foobar2", mockedObject.callM1(1));
	assertEquals("foobar3", mockedObject.callM1(2));
	assertEquals("", mockedObject.callM1(3));
	
epilog
	delete classMock;
end;
}
test_returns_already_called
{
test_returns_already_called() unitTest;

//	set the value to return for a method mock that has already been called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m3);
	mockedObject.m3(123);
	expectedException(JadeMockingFramework.MockError_MethodMockAlreadyCalled);
	methodMock.returns(456);
	
epilog
	delete classMock;
end;
}
test_returns_no_return
{
test_returns_no_return() unitTest;

//	set the return value for a method mock that doesn't have a return value

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m6).returns(123);
	
epilog
	delete classMock;
end;
}
test_returns_wrong_type
{
test_returns_wrong_type() unitTest;

//	set the return value for a method mock using a value of the wrong type

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m2).returns(123);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_updatesParameters (
	jadeMethodSources
test_updatesParameters_already_called
{
test_updatesParameters_already_called() unitTest;

//	set the parameters to update for a method mock that has already been called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer 				: Integer;
	string 					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m1);
	integer := 123;
	string := "hello world";
	result := mockedObject.m1(integer, string);
	expectedException(JadeMockingFramework.MockError_MethodMockAlreadyCalled);
	methodMock.updatesParameters("integer", 123, "string", "foobar");
	
epilog
	delete classMock;
end;
}
test_updatesParameters_input
{
test_updatesParameters_input() unitTest;

//	test mocking usage input parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m3).updatesParameters("integer", 123);
	
epilog
	delete classMock;
end;
}
test_updatesParameters_invalid_name
{
test_updatesParameters_invalid_name() unitTest;

//	try to mock a parameter with an invalid name

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m3).updatesParameters("INTEGER", 123);
	
epilog
	delete classMock;
end;
}
test_updatesParameters_invalid_type
{
test_updatesParameters_invalid_type() unitTest;

//	try to mock a parameter with an invalid type

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m3).updatesParameters("integer", 123.456);
	
epilog
	delete classMock;
end;
}
test_updatesParameters_io
{
test_updatesParameters_io() unitTest;

//	test mocking usage io parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).updatesParameters("integer", 123, "string", "foobar");
	mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	integer := 456;
	string := "raboof";
	mockedObject.m1(integer, string);
	assertEquals(456, integer);
	assertEquals("", string);
	
epilog
	delete classMock;
end;
}
test_updatesParameters_io_and_return
{
test_updatesParameters_io_and_return() unitTest;

//	test mocking usage io parameters and a return value

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	assertTrue(mockedObject <> null);
	assertTrue(app.isValidObject(mockedObject));
	methodMock := classMock.mockMethod(C1::m2).updatesParameters("integer", 123, "string", "foobar").returns("foobar");
	result := mockedObject.m1(integer, string);
	assertEquals(123, integer);
	assertEquals("foobar", string);
	assertEquals("foobar", result);
	
epilog
	delete classMock;
end;
}
test_updatesParameters_io_multiple_times
{
test_updatesParameters_io_multiple_times() unitTest;

//	test mocking usage io parameters - call the method multiple times

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).updatesParameters("integer", 1, "string", "abc").updatesParameters("integer", 2, "string", "def").updatesParameters("integer", 3, "string", "ghi");
	mockedObject.m1(integer, string);
	assertEquals(1, integer);
	assertEquals("abc", string);
	mockedObject.m1(integer, string);
	assertEquals(2, integer);
	assertEquals("def", string);
	mockedObject.m1(integer, string);
	assertEquals(3, integer);
	assertEquals("ghi", string);
	integer := -1;
	string := "xx";
	mockedObject.m1(integer, string);
	assertEquals(-1, integer);
	assertEquals("", string);	// usage output parameter set to null in C1::m1()
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_updatesProperties (
	jadeMethodSources
test_updatesProperties
{
test_updatesProperties() unitTest;

//	test mocking properties

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C1::name, "name");
	assertEquals("", mockedObject.name);
	result := mockedObject.m1(integer, string);
	assertEquals("name", mockedObject.name);
	mockedObject.name := "foo";
	result := mockedObject.m1(integer, string);
	assertEquals("foo", mockedObject.name);
	
epilog
	delete classMock;
end;
}
test_updatesProperties_already_called
{
test_updatesProperties_already_called() unitTest;

//	set the parameters to update for a method mock that has already been called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m3);
	mockedObject.m3(123);
	expectedException(JadeMockingFramework.MockError_MethodMockAlreadyCalled);
	methodMock.updatesProperties(C1::name, "name");
	
epilog
	delete classMock;
end;
}
test_updatesProperties_invalid_parameter_list
{
test_updatesProperties_invalid_parameter_list() unitTest;

//	pass an invalid property list. list must be pairs of property definitions and values

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C1::name, 123, C1::string);
	
epilog
	delete classMock;
end;
}
test_updatesProperties_invalid_parameter_list_bad_type
{
test_updatesProperties_invalid_parameter_list_bad_type() unitTest;

//	pass an invalid property list - not a Property. list must be pairs of property definitions and values

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JErr_TypeGuardFailed);
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C1, 123);
	
epilog
	delete classMock;
end;
}
test_updatesProperties_multiple_properties
{
test_updatesProperties_multiple_properties() unitTest;

//	test mocking multiple properties

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C1::name, "name", C1::string, "string");
	assertEquals("", mockedObject.name);
	assertEquals("get: ", mockedObject.string);
	result := mockedObject.m1(integer, string);
	assertEquals("name", mockedObject.name);
	assertEquals("get: set: string", mockedObject.string);
	
epilog
	delete classMock;
end;
}
test_updatesProperties_multiple_times
{
test_updatesProperties_multiple_times() unitTest;

//	test mocking properties

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C1::name, "name1").updatesProperties(C1::name, "name2").updatesProperties(C1::name, "name3");
	assertEquals("", mockedObject.name);
	result := mockedObject.m1(integer, string);
	assertEquals("name1", mockedObject.name);
	mockedObject.name := "";
	result := mockedObject.m1(integer, string);
	assertEquals("name2", mockedObject.name);
	mockedObject.name := "";
	result := mockedObject.m1(integer, string);
	assertEquals("name3", mockedObject.name);
	mockedObject.name := "";
	result := mockedObject.m1(integer, string);
	assertEquals("", mockedObject.name);
	
epilog
	delete classMock;
end;
}
test_updatesProperties_object_reference
{
test_updatesProperties_object_reference() unitTest;

//	test mocking properties - mock an object reference (oid)

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C1::object, self);
	assertEquals("", mockedObject.name);
	result := mockedObject.m1(integer, string);
	assertEquals(self, mockedObject.object);
	
epilog
	delete classMock;
end;
}
test_updatesProperties_property_not_on_mock_class
{
test_updatesProperties_property_not_on_mock_class() unitTest;

//	mock a property that is not on the class being mocked

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C2::integer, 123);
	
epilog
	delete classMock;
end;
}
test_updatesProperties_wrong_value_type
{
test_updatesProperties_wrong_value_type() unitTest;

//	mock a property with a value of the wrong type

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	expectedException(JadeMockingFramework.MockError_MockParameterValidationFailed);
	methodMock := classMock.mockMethod(C1::m2).updatesProperties(C1::name, 123);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceived (
	jadeMethodSources
test_wasReceived_multiple_instances_different_lifetime
{
test_wasReceived_multiple_instances_different_lifetime() unitTest;

//	test that a mocked method is only called on an instance with the correct lifetime when both transient and persistent instances of the class exist

vars
	classMock				: JadeClassMock;
	c1Persistent			: C1;
	c1Transient				: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1).mockAllInstances(JadeClassMock.MockClassInstancesLifetime_Transient);
	methodMock := classMock.mockMethod(C1::m2).updatesParameters("integer", 99, "string", "ABC").returns("BAR");
	beginTransaction;
	c1Persistent := create C1() persistent;
	commitTransaction;
	integer := 1;
	string := "xxx";
	assertEquals("bar2", c1Persistent.m1(integer, string));
	assertEquals(2, integer);
	assertEquals("foo2", string);
	assertFalse(methodMock.wasReceived());
	assertFalse(methodMock.wasReceivedOnce());
	assertEquals(0, methodMock.getCallCount());
	assertFalse(methodMock.wasReceivedWith(1, "xxx"));
	c1Transient := create C1() transient;
	integer := 10;
	string := "zzz";
	assertEquals("BAR", c1Transient.m1(integer, string));
	assertEquals(99, integer);
	assertEquals("ABC", string);
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(10, ""));	// usage output parameter set to null in C1::m1()
	
epilog
	abortTransaction;
	beginTransaction;
	delete c1Persistent;
	commitTransaction;
	delete classMock;
	delete c1Transient;
end;
}
test_wasReceived_multiple_instances_same_lifetime
{
test_wasReceived_multiple_instances_same_lifetime() unitTest;

//	test that a mocked method is called on all instances with the correct lifetime when multiple instances of the class exist

vars
	classMock				: JadeClassMock;
	c1a						: C1;
	c1b						: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1).mockAllInstances(JadeClassMock.MockClassInstancesLifetime_Transient);
	methodMock := classMock.mockMethod(C1::m2);
	methodMock.updatesParameters("integer", 99, "string", "ABC").returns("BAR");	// first call
	methodMock.updatesParameters("integer", 55, "string", "AbC").returns("bAr");	// second call
	c1a := create C1() transient;
	c1b := create C1() transient;
	integer := 1;
	string := "xxx";
	assertEquals("BAR", c1a.m1(integer, string));
	assertEquals(99, integer);
	assertEquals("ABC", string);
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	assertEquals(1, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(1, ""));	// usage output parameter set to null in C1::m1()
	integer := 10;
	string := "zzz";
	assertEquals("bAr", c1b.m1(integer, string));
	assertEquals(55, integer);
	assertEquals("AbC", string);
	assertTrue(methodMock.wasReceived());
	assertFalse(methodMock.wasReceivedOnce());
	assertEquals(2, methodMock.getCallCount());
	assertTrue(methodMock.wasReceivedWith(10, ""));	// usage output parameter set to null in C1::m1()
	
epilog
	delete c1a;
	delete c1b;
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceivedBy (
	jadeMethodSources
test_wasReceivedBy
{
test_wasReceivedBy() unitTest;

//	test that a method mock is received by a given instance

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	
begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	mockedObject.callM1(0);
	assertTrue(methodMock.wasReceivedBy(mockedObject));
	
epilog
	delete classMock;
end;
}
test_wasReceivedBy_bad_receiver
{
test_wasReceivedBy_bad_receiver() unitTest;

//	test that a method mock is not received by an instance that is not mocking the method

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	c1						: C1;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	mockedObject.callM1(0);
	c1 := create C1() transient;
	c1.callM1(0);
	assertFalse(methodMock.wasReceivedBy(c1));
	
epilog
	delete classMock;
	delete c1;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceivedOnce (
	jadeMethodSources
test_wasReceivedOnce_call_multiple_method_mocks
{
test_wasReceivedOnce_call_multiple_method_mocks() unitTest;

//	mock multiple methods on the same mock instance

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock_m1			: JadeMethodMock;
	methodMock_m2			: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock_m1 := classMock.mockMethod(C1::m1);
	methodMock_m2 := classMock.mockMethod(C1::m2);
	mockedObject.callM1(0);
	assertTrue(methodMock_m1.wasReceivedOnce());
	assertFalse(methodMock_m2.wasReceivedOnce());
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceivedOnceBy (
	jadeMethodSources
test_wasReceivedOnceBy
{
test_wasReceivedOnceBy() unitTest;

//	test that a method mock is received once only by a given instance

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	mockedObject.callM1(0);
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	
epilog
	delete classMock;
end;
}
test_wasReceivedOnceBy_bad_receiver
{
test_wasReceivedOnceBy_bad_receiver() unitTest;

//	test that a method mock is not received once by an instance that is not mocking the method

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	c1						: C1;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	mockedObject.callM1(0);
	c1 := create C1() transient;
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	
epilog
	delete classMock;
	delete c1;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceivedOnceWith (
	jadeMethodSources
test_wasReceivedOnceWith
{
test_wasReceivedOnceWith() unitTest;

//	test that a method mock called once receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	assertTrue(methodMock.wasReceivedOnceWith(1, ""));
	
epilog
	delete classMock;
end;
}
test_wasReceivedOnceWith_multiple_calls
{
test_wasReceivedOnceWith_multiple_calls() unitTest;

//	test that a method mock called more than once receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	mockedObject.m1(integer, string);
	assertFalse(methodMock.wasReceivedOnceWith(1, ""));
	
epilog
	delete classMock;
end;
}
test_wasReceivedOnceWith_wrong_values
{
test_wasReceivedOnceWith_wrong_values() unitTest;

//	test that a method mock called once receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	assertFalse(methodMock.wasReceivedOnceWith("foo"));
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceivedOnceWithBy (
	jadeMethodSources
test_wasReceivedOnceWithBy
{
test_wasReceivedOnceWithBy() unitTest;

//	test that a method mock called once receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	assertTrue(methodMock.wasReceivedOnceByWith(mockedObject, 1, ""));
	
epilog
	delete classMock;
end;
}
test_wasReceivedOnceWithBy_bad_parameters
{
test_wasReceivedOnceWithBy_bad_parameters() unitTest;

//	test that a method mock called once receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	assertFalse(methodMock.wasReceivedOnceByWith(mockedObject, 1, "foo"));
	
epilog
	delete classMock;
end;
}
test_wasReceivedOnceWithBy_bad_receiver
{
test_wasReceivedOnceWithBy_bad_receiver() unitTest;

//	test that a method mock called once receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	assertFalse(methodMock.wasReceivedOnceByWith(methodMock, 1, ""));
	
epilog
	delete classMock;
end;
}
test_wasReceivedOnceWithBy_multiple_calls
{
test_wasReceivedOnceWithBy_multiple_calls() unitTest;

//	test that a method mock called more than once receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	mockedObject.m1(integer, string);
	assertFalse(methodMock.wasReceivedOnceByWith(mockedObject, 1, ""));
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceivedWith (
	jadeMethodSources
test_wasReceivedWith
{
test_wasReceivedWith() unitTest;

//	test that a method mock receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	assertTrue(methodMock.wasReceivedWith(1, ""));	// usage output parameter set to null in C1::m1()
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_wasReceivedWithBy (
	jadeMethodSources
test_wasReceivedWithBy
{
test_wasReceivedWithBy() unitTest;

//	test that a method mock receives the correct parameters

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	assertTrue(methodMock.wasReceivedByWith(mockedObject, 1, ""));	// usage output parameter set to null in C1::m1()
	
epilog
	delete classMock;
end;
}
test_wasReceivedWithBy_bad_receiver
{
test_wasReceivedWithBy_bad_receiver() unitTest;

//	test that a method mock is not received by an instance that is not mocking the method

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	integer					: Integer;
	string					: String;
	c1						: C1;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;
	methodMock := classMock.mockMethod(C1::m2);
	integer := 1;
	string := "foo";
	mockedObject.m1(integer, string);
	c1 := create C1() transient;
	c1.m1(integer, string);
	assertFalse(methodMock.wasReceivedByWith(c1, 1, ""));	// usage output parameter set to null in C1::m1()
	
epilog
	delete classMock;
	delete c1;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_whenCalledDoes (
	jadeMethodSources
test_whenCalledDoes_local_variables
{
test_whenCalledDoes_local_variables() unitTest;

//	test that user-defined code (injected to the mock) is executed when a mocked method is called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	action					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;

	action := 	"vars" & CrLf &
				"	i : Integer;" & CrLf &
				"begin" & CrLf &
				"i += 1;" & CrLf &
				"name := 'updated' & i.String;";
	methodMock := classMock.mockMethod(C1::m2).whenCalledDoes(action);
	
	mockedObject.name := "before";

	result := mockedObject.callM1(0);
	
	// check the code was executed
	assertEquals("updated1", mockedObject.name);
	assertEquals("", result);
	
epilog
	delete classMock;
end;
}
test_whenCalledDoes_no_parameters
{
test_whenCalledDoes_no_parameters() unitTest;

//	test that user-defined code (injected to the mock) is executed when a mocked method with no parametes is called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;

	methodMock := classMock.mockMethod(C1::m6).whenCalledDoes("name := 'after';");
	
	mockedObject.name := "before";

	mockedObject.m6();
	
	// check the code was executed
	assertEquals("after", mockedObject.name);
	
epilog
	delete classMock;
end;
}
test_whenCalledDoes_simple
{
test_whenCalledDoes_simple() unitTest;

//	test that user-defined code (injected to the mock) is executed when a mocked method is called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;

	methodMock := classMock.mockMethod(C1::m2).whenCalledDoes("name := 'after';");
	
	mockedObject.name := "before";

	result := mockedObject.callM1(0);
	
	// check the code was executed
	assertEquals("after", mockedObject.name);
	
epilog
	delete classMock;
end;
}
test_whenCalledDoes_with_returns_local_variables
{
test_whenCalledDoes_with_returns_local_variables() unitTest;

//	test that user-defined code (injected to the mock) is executed when a mocked method is called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	action					: String;
	result					: String;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;

	action := 	"vars" & CrLf &
				"	i : Integer;" & CrLf &
				"begin" & CrLf &
				"i += 1;" & CrLf &
				"name := 'updated' & i.String;";
	methodMock := classMock.mockMethod(C1::m2).whenCalledDoes(action).returns("bar");
	
	mockedObject.name := "before";

	result := mockedObject.callM1(0);
	
	// check the code was executed
	assertEquals("updated1", mockedObject.name);
	// check the return value
	assertEquals("bar", result);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	Test_whenCalledInvoke (
	jadeMethodSources
myMethodMock
{
myMethodMock(meth : Method; receiver : Object input; parameters : ParamListType io) : Any;

begin
	assertEquals(C1::m4, meth);
	assertEquals(self, app.getParamListTypeEntry(1, parameters));
	
	return receiver;
end;
}
test_whenCalledInvoke_simple
{
test_whenCalledInvoke_simple() unitTest;

//	test that user-defined method mock is executed when a mocked method is called

vars
	classMock				: JadeClassMock;
	mockedObject			: C1;
	methodMock				: JadeMethodMock;
	result					: Object;

begin
	classMock := mockManager.createClassMock(C1);
	mockedObject := classMock.instantiateMockedObject().C1;

	methodMock := classMock.mockMethod(C1::m4).whenCalledInvoke(appContext, self);
	
	result := mockedObject.m4(self);
	
	// check the code was executed
	assertEquals(mockedObject, result);
	
epilog
	delete classMock;
end;
}
unitTestAfterClass
{
unitTestAfterClass() unitTestAfterClass, updating;

begin
	inheritMethod();
end;
}
unitTestBeforeClass
{
unitTestBeforeClass() unitTestBeforeClass, updating;

begin
	inheritMethod();
end;
}
	)
	AbstractClass (
	jadeMethodSources
m1
{
m1();

begin

end;
}
	)
	C1 (
	jadeMethodSources
callM1
{
callM1(i : Integer) : String;

vars
	integer					: Integer;
	string					: String;

begin
	integer := i;
	return m1(integer, string);
end;
}
callTypeMethod
{
callTypeMethod(integer : Integer io; string : String output) : String;

begin
	return C1@typeMethod(integer, string);
end;
}
create
{
create() updating;

begin
	constructorCalled := true;
end;
}
delete
{
delete() updating;

begin
	app.destructorCalled_c1 := true;
end;
}
m1
{
m1(integer : Integer io; string : String output) : String;

begin	
	return m2(integer, string);
end;
}
m2
{
m2(integer : Integer io; string : String output) : String;

begin
	integer += 1;
	string := "foo" & integer.String;
	return "bar" & integer.String;
end;
}
m3
{
m3(integer : Integer) : Integer;

begin
	return integer + 1;
end;
}
m4
{
m4(object : Object) : Object;

begin
	return object;
end;
}
m5
{
m5(object : Object io) : Object;

begin
	object := self;
	return self;
end;
}
m6
{
m6();

begin

end;
}
serverMethod
{
serverMethod(integer : Integer io; string : String output) : String serverExecution;

begin
	integer += 1;
	string := "foo" & integer.String;
	return "bar" & integer.String;
end;
}
string
{
string(set : Boolean; _value : String io) mapping;

begin
	if set then
		_value := "set: " & _value;
	else
		_value := "get: " & _value;
	endif;
end;
}
typeMethod
{
typeMethod(integer : Integer io; string : String output) : String typeMethod;

begin
	integer += 1;
	string := "foo";
	return method.name & ": method called";
end;
}
	)
	C1Sub (
	jadeMethodSources
m3
{
m3(integer : Integer) : Integer;

begin
	return inheritMethod(integer * 2);
end;
}
	)
	C2 (
	jadeMethodSources
m1
{
m1(i1 : I1 input; integer : Integer io; string : String output) : String;

begin
	return i1.m1(integer, string);
end;
}
	)
	I1 (
	jadeMethodSources
m1
{
m1(integer : Integer io; string : String output) : String;
}
	)
	I2 (
	jadeMethodSources
m2
{
m2(integer : Integer io; string : String output) : String;
}
	)
