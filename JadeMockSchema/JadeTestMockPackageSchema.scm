jadeVersionNumber "99.0.00";
schemaDefinition
JadeTestMockPackageSchema subschemaOf RootSchema completeDefinition;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
typeHeaders
	JadeTestMockPackageSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	GJadeTestMockPackageSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	JadeTestMockPackageClasses subclassOf Object;
	C1 subclassOf JadeTestMockPackageClasses;
	SJadeTestMockPackageSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
membershipDefinitions
 
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
	JadeTestMockPackageSchema completeDefinition
	(
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GJadeTestMockPackageSchema completeDefinition
	(
	)
	JadeTestMockPackageClasses completeDefinition
	(
	)
	C1 completeDefinition
	(
	jadeMethodDefinitions
		callM1(i: Integer): String;
		m1(
			integer: Integer io; 
			string: String output): String;
		m2(
			integer: Integer io; 
			string: String output): String;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SJadeTestMockPackageSchema completeDefinition
	(
	)
databaseDefinitions
	JadeTestMockPackageSchemaDb
	(
	databaseFileDefinitions
		"JadeTestMockPackageSchema";
	defaultFileDefinition "JadeTestMockPackageSchema";
	classMapDefinitions
		C1 in "JadeTestMockPackageSchema";
		GJadeTestMockPackageSchema in "JadeTestMockPackageSchema";
		JadeTestMockPackageClasses in "JadeTestMockPackageSchema";
		JadeTestMockPackageSchema in "_usergui";
		SJadeTestMockPackageSchema in "_environ";
	)
exportedPackageDefinitions
	JadeTestMockPackage
	(

	exportedClassDefinitions
		C1
		(
		exportedMethodDefinitions
			callM1;
			m1;
			m2;
		)
		JadeTestMockPackageClasses
		(
		)
	exportedInterfaceDefinitions
	)
typeSources
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
	integer += 10;
	string := "FOO" & integer.String;
	return "BAR" & integer.String;
end;
}
	)
