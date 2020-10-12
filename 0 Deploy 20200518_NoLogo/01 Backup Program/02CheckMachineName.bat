@echo off

IF "%UVMachine%"=="" (
	echo MachineName not found, Please try again
	call "%~dp0\01CreateMachineName.bat"
) ELSE (
	echo MachineName = %UVMachine%
	echo Ensure MachineName is correct.
)

echo ===== End Of Program =====
Pause
