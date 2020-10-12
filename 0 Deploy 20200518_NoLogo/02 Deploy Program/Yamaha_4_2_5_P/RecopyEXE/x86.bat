@echo off

echo == Check program path
if not exist  "C:\Program Files\UV Rotate" (
	echo program no installed.
	echo ===== End Of Program =====
	Pause
	Exit
)

copy /y "%~dp0\UVRotate.exe" "C:\Program Files\UV Rotate"

if exist  "C:\Program Files\UV Rotate\Station1" (
	echo Copy to station1 path
	copy /y "%~dp0\UVRotate.exe" "C:\Program Files\UV Rotate\Station1"
)

if exist  "C:\Program Files\UV Rotate\Station2" (
	echo Copy to station2 path
	copy /y "%~dp0\UVRotate.exe" "C:\Program Files\UV Rotate\Station2"
)

REM %SystemRoot%\Explorer.exe "C:\Program Files\UV Rotate"

echo ===== End Of Program =====
Pause
