@echo off
set arg1=archetype.properties

For /F "tokens=1* delims==" %%A IN (%arg1%) DO (
	IF "%%A"=="package" set package=%%B
	IF "%%A"=="version" set version=%%B 
	IF "%%A"=="groupId" set groupId=%%B 
	IF "%%A"=="artifactId" set artifactId=%%B 
	IF "%%A"=="schema" set schema=%%B
	IF "%%A"=="namespace" set namespace=%%B 	
	IF "%%A"=="svnConnection" set svnConnection=%%B 
	IF "%%A"=="svnDeveloperConnection" set svnDeveloperConnection=%%B 
	IF "%%A"=="dbServer" set dbServer=%%B
	IF "%%A"=="dbPort" set dbPort=%%B
	IF "%%A"=="dbUser" set dbUser=%%B	
	IF "%%A"=="dbPassword" set dbPassword=%%B
	IF "%%A"=="ccParentVersion" set ccParentVersion=%%B
	)
call mvn archetype:generate -B -DarchetypeGroupId=com.jeya.defaultgroupId -DarchetypeArtifactId=jeyaarchetype -DarchetypeVersion=0.1 -DgroupId=%groupId% -DartifactId=%artifactId% -Dversion=%version% -Dpackage=%package% -Dschema=%schema% -Dnamespace=%namespace% -DdbServer=%dbServer% -DdbPort=%dbPort% -DdbUser=%dbUser% -DccParentVersion=%ccParentVersion% 