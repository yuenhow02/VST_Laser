@echo off

echo == Check programdata path
if not exist  "C:\ProgramData\UV Rotate" (
	mkdir "C:\ProgramData\UV Rotate"
)

REM ==== if exist then delete...
if exist  "C:\Program Files\UV Rotate\Path.ini" (
	echo "delete Path.ini"
	del "C:\Program Files\UV Rotate\Path.ini"
	timeout 2
)

REM ==== if exist then delete...
if exist  "C:\Program Files\UV Rotate\settings.cfg" (
	echo "delete settings.cfg"
	del "C:\Program Files\UV Rotate\settings.cfg"
	timeout 2
)

REM ==== if exist then delete...
if exist  "C:\Program Files\UV Rotate\UV.cfg" (
	echo "delete UV.cfg"
	del "C:\Program Files\UV Rotate\UV.cfg"
	timeout 2
)

REM ==== if exist then delete...
if exist  "C:\Program Files\UV Rotate\NI-DAQmx.ini" (
	echo "delete NI-DAQmx.ini"
	del "C:\Program Files\UV Rotate\NI-DAQmx.ini"
	timeout 2
)


echo == Project UV Rotate path
if not exist  "C:\Project UV Rotate" (
	echo "create Project UV Rotate folder"
	mkdir "C:\Project UV Rotate"
	timeout 2
)

echo == Project UV Rotate -> Data path
if not exist  "C:\Project UV Rotate\data" (
	echo "create Project UV Rotate folder"
	mkdir "C:\Project UV Rotate\data"
	timeout 2
)

echo create a new file "Path.ini"
echo [UVRotate] >> "C:\Program Files\UV Rotate\Path.ini"
echo DataPath="C:\ProgramData\UV Rotate" >> "C:\Program Files\UV Rotate\Path.ini"
echo.
echo.

REM echo "%~dp0\NI-DAQmx.ini" 
copy /y "%~dp0\NI-DAQmx.ini" "C:\ProgramData\UV Rotate"
copy /y "%~dp0\settings.cfg" "C:\ProgramData\UV Rotate"
copy /y "%~dp0\UV.cfg" "C:\ProgramData\UV Rotate"

copy /y "%~dp0\UVRotate.ini" "C:\Program Files\UV Rotate"

copy /y "%~dp0\x86\UV Rotate.lnk" "C:\Users\%username%\Desktop"

copy /y "%~dp0\x86\UV Rotate.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UV Rotate"

copy /y "%~dp0\test.da2" "C:\Project UV Rotate\data"
timeout 2
echo ===== End Of Program =====
Pause

