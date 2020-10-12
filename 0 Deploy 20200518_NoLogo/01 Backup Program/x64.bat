@echo off

echo == Check program path
if not exist  "C:\Program Files (x86)\UV Rotate" (
	echo program no installed.
	echo ===== End Of Program =====
	Pause
	Exit
)

if not exist "%~dp0\..\UVBackup\%UVMachine%" (
	mkdir "%~dp0\..\UVBackup\%UVMachine%"
)

if not exist "%~dp0\..\UVBackup\%UVMachine%\ProgramFile" (
	mkdir "%~dp0\..\UVBackup\%UVMachine%\ProgramFile"
)

if not exist "%~dp0\..\UVBackup\%UVMachine%\ProgramData" (
	mkdir "%~dp0\..\UVBackup\%UVMachine%\ProgramData"
)

xcopy /y /s "C:\Program Files (x86)\UV Rotate" "%~dp0\..\UVBackup\%UVMachine%\ProgramFile"
xcopy /y /s "C:\ProgramData\UV Rotate" "%~dp0\..\UVBackup\%UVMachine%\ProgramData"

echo ===== End Of Program =====
Pause

