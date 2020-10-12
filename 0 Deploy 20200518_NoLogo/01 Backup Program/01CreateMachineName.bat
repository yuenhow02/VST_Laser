@echo off

if not exist  "%~dp0\..\UVBackup" (
	mkdir "%~dp0\..\UVBackup"
)

if not "%UVMachine%"=="" (
	if exist "%~dp0\..\UVBackup\%UVMachine%" (
		echo the MachineName created, not allow to change...
		Pause
		exit
	)
)

:start
echo === Create MachineName ===
echo Please input the MachineName... 
echo MachineName must start with character, cannot have blankspace in MachineName 
set /p name=:

echo MachineName = %name%

set /p step=If MachineName correct, Press y to continue...

if %step%==y (
	echo saving MachineName...
	SETX UVMachine %name% /m
) else (
	echo MachineName still no save
	echo.
	goto start
)

echo ===== End Of Program =====
Pause
