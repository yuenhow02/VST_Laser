@echo off

echo == Check program path
if not exist  "C:\Program Files (x86)\UV Rotate" (
	echo program no installed.
	echo ===== End Of Program =====
	Pause
	Exit
)

xcopy /y /s "%~dp0\..\UVBackup\%UVMachine%\ProgramFile" "C:\Program Files (x86)\UV Rotate" 
xcopy /y /s "%~dp0\..\UVBackup\%UVMachine%\ProgramData" "C:\ProgramData\UV Rotate" 

echo ===== End Of Program =====
Pause

