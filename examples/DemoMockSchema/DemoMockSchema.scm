jadeVersionNumber "99.0.00";
schemaDefinition
DemoMockSchema subschemaOf RootSchema completeDefinition;
importedPackageDefinitions
	JadeMockPackage is JadeMockSchema::JadeMockPackage
	(
	importedClassDefinitions
		JadeClassMock
		JadeInterfaceMock
		JadeMethodMock
		JadeMock
		JadeMockAnyArray
		JadeMockManager
		JadeMockingFramework
	importedInterfaceDefinitions
		JadeMethodMockIF
	)

localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
typeHeaders
	DemoMockSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	DemoClasses subclassOf Object abstract;
	Account subclassOf DemoClasses;
	ApplicationMock subclassOf DemoClasses;
	Customer subclassOf DemoClasses;
	HelperClass subclassOf DemoClasses;
	ReportFile subclassOf DemoClasses;
	GDemoMockSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	DemoTests subclassOf JadeTestCase;
	LaunchControlTests subclassOf JadeTestCase;
	NWIDemoClasses subclassOf Object;
	LaunchCode subclassOf NWIDemoClasses;
	LaunchControl subclassOf NWIDemoClasses;
	Missile subclassOf NWIDemoClasses;
	SDemoMockSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
membershipDefinitions
typeDefinitions
	JadeMockPackage::JadeClassMock completeDefinition
	(
	)
	JadeMockPackage::JadeInterfaceMock completeDefinition
	(
	)
	JadeMockPackage::JadeMethodMock completeDefinition
	(
	)
	JadeMockPackage::JadeMock completeDefinition
	(
	)
	JadeMockPackage::JadeMockAnyArray completeDefinition
	(
	)
	JadeMockPackage::JadeMockManager completeDefinition
	(
	)
	JadeMockPackage::JadeMockingFramework completeDefinition
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
	DemoMockSchema completeDefinition
	(
	)
	DemoClasses completeDefinition
	(
	)
	Account completeDefinition
	(
	jadeMethodDefinitions
		getBalanceString(): String;
	)
	ApplicationMock completeDefinition
	(
	referenceDefinitions
		myTestCase:                    JadeTestCase  protected;
	jadeMethodDefinitions
		create(testCase: JadeTestCase) updating;
		myMethodMock(
			mockedMethod: Method; 
			receiver: Object input; 
			parameters: ParamListType io): Any;
	implementInterfaces
		JadeMockPackage::JadeMethodMockIF
		(
			methodMock is myMethodMock;
		)
	)
	Customer completeDefinition
	(
	attributeDefinitions
		address:                       String[31];
		constructorCalled:             Boolean;
		name:                          String[31];
	referenceDefinitions
		myAccount:                     Account ;
	jadeMethodDefinitions
		create() updating;
		delete() updating;
		getReport(
			pNumber: Integer; 
			pString: String): String;
		myOtherMethod(): String;
		prepareReport(
			pNumber: Integer; 
			pString: String): String;
		runReport(
			reportFile: ReportFile input; 
			pNumber: Integer; 
			pString: String);
	)
	HelperClass completeDefinition
	(
	jadeMethodDefinitions
		usefulOperation(someParam: String): String typeMethod;
	)
	ReportFile completeDefinition
	(
	referenceDefinitions
		reportFile:                    File  protected;
	jadeMethodDefinitions
		closeReportFile() updating;
		openReportFile(fileName: String) updating;
		writeReport(report: String);
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GDemoMockSchema completeDefinition
	(
	)
	JadeTestCase completeDefinition
	(
	)
	DemoTests completeDefinition
	(
	referenceDefinitions
		mockManager:                   JadeMockPackage::JadeMockManager  protected;
	jadeMethodDefinitions
		demo_call_mock_method_with_parameters_and_return() unitTest;
		demo_inject_user_defined_action_in_to_a_method_mock() unitTest;
		demo_mock_RootSchema_method() unitTest;
		demo_multiple_method_mocks() unitTest;
		demo_user_defined_mock_method() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	LaunchControlTests completeDefinition
	(
	referenceDefinitions
		mockManager:                   JadeMockPackage::JadeMockManager  protected;
	jadeMethodDefinitions
		demo01_DefaultBehaviour() unitTest;
		demo02_OverrideLaunchCodeValidationBehaviour() unitTest;
		demo03_OverrideMissileFireBehaviour() unitTest;
		demo04_TestShouldLaunchGivenValidCode() unitTest;
		demo05_TestShouldAbortLaunchGivenInvalidCode() unitTest;
		unitTestAfterClass() updating, unitTestAfterClass;
		unitTestBeforeClass() updating, unitTestBeforeClass;
	)
	NWIDemoClasses completeDefinition
	(
	)
	LaunchCode completeDefinition
	(
	attributeDefinitions
		code:                          String[11];
	jadeMethodDefinitions
		isValid(): Boolean;
	)
	LaunchControl completeDefinition
	(
	jadeMethodDefinitions
		launchMissile(
			missile: Missile input; 
			launchCode: LaunchCode): Boolean;
	)
	Missile completeDefinition
	(
	jadeMethodDefinitions
		fire() updating;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SDemoMockSchema completeDefinition
	(
	)
databaseDefinitions
	DemoMockSchemaDb
	(
	databaseFileDefinitions
		"demomockschema";
	defaultFileDefinition "demomockschema";
	classMapDefinitions
		Account in "demomockschema";
		ApplicationMock in "demomockschema";
		Customer in "demomockschema";
		DemoClasses in "demomockschema";
		DemoMockSchema in "_usergui";
		DemoTests in "demomockschema";
		GDemoMockSchema in "demomockschema";
		HelperClass in "demomockschema";
		LaunchCode in "demomockschema";
		LaunchControl in "demomockschema";
		LaunchControlTests in "demomockschema";
		Missile in "demomockschema";
		NWIDemoClasses in "demomockschema";
		ReportFile in "demomockschema";
		SDemoMockSchema in "_environ";
	)
typeSources
	Account (
	jadeMethodSources
getBalanceString
{
getBalanceString() : String;

vars

begin
	//write "BAD METHOD CALLED: " & method.name;
	return "A balance of: $1234.56";
end;
}
	)
	ApplicationMock (
	jadeMethodSources
create
{
create(testCase : JadeTestCase) updating;

begin
	myTestCase := testCase;
end;
}
myMethodMock
{
myMethodMock(mockedMethod : Method; receiver : Object input; parameters : ParamListType io) : Any;

vars
	string					: String;
	parameter				: Any;
	i						: Integer;

begin
	// create a string representation of the parameters in the parameter list
	string := "(";
	foreach i in 1 to app.getParamListTypeLength(parameters) do
		if i > 1 then
			string &= ",";
		endif;
		parameter := app.getParamListTypeEntry(i, parameters);
		if parameter.isKindOf(Character) or parameter.isKindOf(String) or parameter.isKindOf(StringUtf8) then
			string &= '"' & parameter.String & '"';
		else
			string &= parameter.String;
		endif;
	endforeach;
	string &= ")";

	myTestCase.info(mockedMethod.name & ": receiver " & app.String & " parameters " & string);
	
	return MsgBox_Return_OK;
end;
}
	)
	Customer (
	jadeMethodSources
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

end;
}
getReport
{
getReport(pNumber : Integer; pString : String) : String;

begin
	return "report: " & prepareReport(pNumber, pString);
end;
}
myOtherMethod
{
myOtherMethod() : String;

vars

begin
	write "BAD METHOD CALLED: " & method.name;
	return "Very important information.";
end;
}
prepareReport
{
prepareReport(pNumber : Integer; pString : String) : String;

vars
	report 					: String;

begin
	report := report & myAccount.getBalanceString();
	report := report & HelperClass@usefulOperation("Foo");
	report := report & self.name;
//	report := report & self.someInterface.interfaceMeth();
	
	return report;
end;
}
runReport
{
runReport(reportFile : ReportFile input; pNumber : Integer; pString : String);

begin
	reportFile.openReportFile("report.txt");
	reportFile.writeReport(getReport(pNumber, pString));
	reportFile.closeReportFile();
end;
}
	)
	HelperClass (
	jadeMethodSources
usefulOperation
{
usefulOperation(someParam : String) : String typeMethod;

vars

begin
	//write "CALLED BAD METHOD: " & method.name;
	return "A useful output";
end;
}
	)
	ReportFile (
	jadeMethodSources
closeReportFile
{
closeReportFile() updating;

begin
	if reportFile = null then
		reportFile.close();
		delete reportFile;
	endif;
end;
}
openReportFile
{
openReportFile(fileName : String) updating;

begin
	reportFile := create File() transient;
	reportFile.openOutput(fileName);
end;
}
writeReport
{
writeReport(report : String);

begin
	reportFile.writeString(report);
end;
}
	)
	DemoTests (
	jadeMethodSources
demo_call_mock_method_with_parameters_and_return
{
demo_call_mock_method_with_parameters_and_return() unitTest;

//	show a mocked method is not called but that the parameters and return values are mocked correctly

vars
	classMock				: JadeClassMock;
	mockedObject			: Customer;
	methodMock				: JadeMethodMock;
	report					: String;

begin
	// set up class mock
	classMock := mockManager.createClassMock(Customer);
	
	// instantiate an instance of the class being mocked. constructors are not called. 
	// the instance is owned by the class mock. the instance is deleted when the class mock is deleted.
	// destructors are not called;
	mockedObject := classMock.instantiateMockedObject().Customer;
	
	// mock a method
	methodMock := classMock.mockMethod(Customer::prepareReport);
	
	// mock the return value
	methodMock.returns("foobar");
	
	// call a method on the instance being mocked. this method calls the mocked method.
	report := mockedObject.getReport(123, "foo");
	
	// check the receiver of the method mock 
	assertTrue(methodMock.wasReceivedBy(mockedObject));
	assertTrue(methodMock.wasReceivedOnceBy(mockedObject));
	assertEquals(1, methodMock.getCallCount());
	
	// check the method mock was called (only once)
	assertTrue(methodMock.wasReceived());
	assertTrue(methodMock.wasReceivedOnce());
	
	// check the parametes passed
	assertTrue(methodMock.wasReceivedWith(123, "foo"));
	assertTrue(methodMock.wasReceivedByWith(mockedObject, 123, "foo"));
	
	// check the return value
	assertEquals("report: foobar", report);
	
epilog
	// delete class and method mocks, call histories and any mock instances instantiated by the class
	delete classMock;
end;
}
demo_inject_user_defined_action_in_to_a_method_mock
{
demo_inject_user_defined_action_in_to_a_method_mock() unitTest;

//	show a user defined action can be injected to a method mock

vars
	classMock				: JadeClassMock;
	mockedObject			: Customer;
	methodMock				: JadeMethodMock;
	action					: String;
	report					: String;

begin
	// set up class mock
	classMock := mockManager.createClassMock(Customer);
	
	// instantiate an instance of the class being mocked. constructors are not called
	// the instance is owned by the class mock. the instance is deleted when the class mock is deleted
	// destructors are not called
	mockedObject := classMock.instantiateMockedObject().Customer;
	
	// mock a method and inject behaviour (Jade code) to action when the mock is called. mock the return value
	action := 	"vars" & CrLf &
				"	i : Integer;" & CrLf &
				"begin" & CrLf &
				"i += 1;" & CrLf &
				"name := 'new name' & i.String;";	// update a property on the receiver

	methodMock := classMock.mockMethod(Customer::prepareReport).whenCalledDoes(action).returns("foobar");
	
	mockedObject.name := "before";

	// call a method on the instance being mocked. this method calls the mocked method and the injected code is executed
	report := mockedObject.getReport(123, "foo");
	
	// check the code was executed
	assertEquals("new name1", mockedObject.name);
	
epilog
	// delete class and method mocks, call histories and any mock instances instantiated by the class
	delete classMock;
end;
}
demo_mock_RootSchema_method
{
demo_mock_RootSchema_method() unitTest;

//	show a mocked RootSchema method on a system object

vars
	classMock				: JadeClassMock;
	methodMock_msgBox		: JadeMethodMock;

begin
	// set up class mock
	classMock := mockManager.createClassMock(Application);
	
	// inject app to receive mocked methods
	classMock.injectMockedObject(app);
	
	// mock the MessageBox RootSchema method
	methodMock_msgBox := classMock.mockMethod(Application::msgBox).whenCalledDoes("write title;");
	
	app.msgBox("test", "message", MsgBox_Information_Icon);
	
epilog
	// delete class and method mocks, call histories and any mock instances instantiated by the class
	delete classMock;
end;
}
demo_multiple_method_mocks
{
demo_multiple_method_mocks() unitTest;

//	mock multiple methods on the same mock instance

vars
	classMock				: JadeClassMock;
	mockedObject			: ReportFile;
	methodMock_open			: JadeMethodMock;
	methodMock_close		: JadeMethodMock;
	methodMock_write		: JadeMethodMock;
	customer				: Customer;

begin
	// set up class mock
	classMock := mockManager.createClassMock(ReportFile);
	
	// instantiate an instance of the class being mocked. constructors are not called
	// the instance is owned by the class mock. the instance is deleted when the class mock is deleted
	// destructors are not called
	mockedObject := classMock.instantiateMockedObject().ReportFile;
	
	// mock the methods
	methodMock_open := classMock.mockMethod(ReportFile::openReportFile);
	methodMock_close := classMock.mockMethod(ReportFile::closeReportFile);
	methodMock_write := classMock.mockMethod(ReportFile::writeReport);

	// create an instance to call the methods
	customer := create Customer() transient;
	customer.myAccount := create Account() transient;
	customer.name := "nick";
	
	// call a method on the instance. this method calls the mocked method.
	customer.runReport(mockedObject, 123, "foo");
	
	// check the method mocks sere called (only once)
	assertTrue(methodMock_open.wasReceivedOnce());
	assertTrue(methodMock_close.wasReceivedOnce());
	assertTrue(methodMock_write.wasReceivedOnce());
	
epilog
	delete customer.myAccount;
	delete customer;
	// delete class and method mocks, call histories and any mock instances instantiated by the class
	delete classMock;
end;
}
demo_user_defined_mock_method
{
demo_user_defined_mock_method() unitTest;

//	show a user defined method can be called when a mocked method is called

vars
	classMock				: JadeClassMock;
	methodMock_msgBox		: JadeMethodMock;
	applicationMock			: ApplicationMock;

begin
	// create an instance of a class that implements the JadeMockMethodIF interface.
	// the mocked method call will be redirected to this instance
	applicationMock := create ApplicationMock(self) transient;
	
	// set up class mock
	classMock := mockManager.createClassMock(Application);
	
	// inject app to receive mocked methods
	classMock.injectMockedObject(app);
	
	// mock the MessageBox RootSchema method
	methodMock_msgBox := classMock.mockMethod(Application::msgBox).whenCalledInvoke(appContext, applicationMock);
	
	app.msgBox("message", "title", MsgBox_Information_Icon);
	
epilog
	delete applicationMock;
	// delete class and method mocks, call histories and any mock instances instantiated by the class
	delete classMock;
end;
}
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
	// create a manager to record the class and method mocks
	mockManager := create JadeMockManager() transient;
end;
}
	)
	LaunchControlTests (
	jadeMethodSources
demo01_DefaultBehaviour
{
demo01_DefaultBehaviour() unitTest;
/*
	How the code would work without any test doubles
*/

vars
	missile			: Missile;
	launchCode		: LaunchCode;
	launchControl	: LaunchControl;
	fired			: Boolean;
	
begin
	missile := create Missile() transient;
	launchCode := create LaunchCode() transient;
	launchControl := create LaunchControl() transient;
	
	fired := launchControl.launchMissile(missile, launchCode);
	
	assertFalse(fired);
end;
}
demo02_OverrideLaunchCodeValidationBehaviour
{
demo02_OverrideLaunchCodeValidationBehaviour() unitTest;
/*
	Demonstrates how we can alter the behaviour of a function call
*/

vars
	launchCode			: LaunchCode;
	launchCodeMocker	: JadeClassMock;
		
begin
	// default behaviour
	launchCode := create LaunchCode() transient;
	assertTrueMsg("Launch code cannot be used", not launchCode.isValid());
	
	// override behaviour to mimic a valid code by returning true instead
	launchCodeMocker := mockManager.createClassMock(LaunchCode);
	launchCode := launchCodeMocker.instantiateMockedObject().LaunchCode;
	launchCodeMocker.mockMethod(LaunchCode::isValid).returns(true);		
	
	assertTrueMsg("Launch code can be used", launchCode.isValid());
	
epilog
	delete launchCodeMocker;
end;
}
demo03_OverrideMissileFireBehaviour
{
demo03_OverrideMissileFireBehaviour() unitTest;
/*
	Demonstrates how we can prevent the behaviour of a function call, while still proving its called
*/

vars
	missile			: Missile;
	missileMocker	: JadeClassMock;
	mockMethod		: JadeMethodMock;
	
begin
	missileMocker := mockManager.createClassMock(Missile);
	missile := missileMocker.instantiateMockedObject().Missile;
	mockMethod := missileMocker.mockMethod(Missile::fire);

	assertTrueMsg("Missile::fire has not been called", not mockMethod.wasReceived());
	
	missile.fire();
	
	assertTrueMsg("Missile::fire has been called", mockMethod.wasReceived());
							
epilog
	delete missileMocker;
end;
}
demo04_TestShouldLaunchGivenValidCode
{
demo04_TestShouldLaunchGivenValidCode() unitTest;
/*
	Do everything but fire the missile
*/

vars
	launchCode			: LaunchCode;
	missile				: Missile;
	launchControl		: LaunchControl;
	fired				: Boolean;
	launchCodeMocker	: JadeClassMock;
	missileMocker		: JadeClassMock;
		
begin
	launchCodeMocker := mockManager.createClassMock(LaunchCode);
	launchCode := launchCodeMocker.instantiateMockedObject().LaunchCode;
	launchCodeMocker.mockMethod(LaunchCode::isValid).returns(true);

	missileMocker := mockManager.createClassMock(Missile);
	missile := missileMocker.instantiateMockedObject().Missile;
	missileMocker.mockMethod(Missile::fire);
	
	launchControl := create LaunchControl() transient;
	fired := launchControl.launchMissile(missile, launchCode);
	
	// asserts
	assertTrueMsg("Missile fired", fired);
	
epilog
	delete launchCodeMocker;
	delete missileMocker;
end;
}
demo05_TestShouldAbortLaunchGivenInvalidCode
{
demo05_TestShouldAbortLaunchGivenInvalidCode() unitTest;
/*
	Test behaviour if provided with an invalid code
*/

vars
	launchCode			: LaunchCode;
	missile				: Missile;
	launchControl		: LaunchControl;
	fired				: Boolean;
	missileMocker		: JadeClassMock;
	methodMock			: JadeMethodMock;
		
begin
	launchCode := create LaunchCode() transient;

	missileMocker := mockManager.createClassMock(Missile);
	missile := missileMocker.instantiateMockedObject().Missile;
	methodMock := missileMocker.mockMethod(Missile::fire);

	launchControl := create LaunchControl() transient;
	fired := launchControl.launchMissile(missile, launchCode);
	
	// asserts
	assertTrueMsg("Missile did not fire", fired = false);
	assertTrueMsg("Missile::fire has not been called", not methodMock.wasReceivedBy(missile));

epilog
	delete missileMocker;
end;
}
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
	LaunchCode (
	jadeMethodSources
isValid
{
isValid(): Boolean;

vars
	
begin
	// simulate live behaviour, but we simply dont know what the valid codes are - and nor should we!
	return false;
end;
}
	)
	LaunchControl (
	jadeMethodSources
launchMissile
{
launchMissile( missile		: Missile input;
			   launchCode	: LaunchCode 
						   ): Boolean;

vars
	
begin
	// check the launch code is authentic
	if launchCode = null 
	or not launchCode.isValid() then
		return false;
	endif;

	// fire the missile
	missile.fire();
	return true;
end;
}
	)
	Missile (
	jadeMethodSources
fire
{
fire() updating;

vars
	
begin
	// function would fire the missile
	app.msgBox( "Missile Launch !!!!", "AutomatedUnitTest", MsgBox_Exclamation_Mark_Icon );
end;
}
	)
