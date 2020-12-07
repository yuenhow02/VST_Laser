@echo off

echo == Check programdata path
if not exist  "C:\ProgramData\UV Rotate" (
	mkdir "C:\ProgramData\UV Rotate"
	timeout 2
)

echo == delete program station1 path
if exist  "C:\Program Files\UV Rotate\Station1" (
	echo "delete station1"
	del /F /S /Q "C:\Program Files\UV Rotate\Station1"
	timeout 2
)

echo == delete program station2 path
if exist  "C:\Program Files\UV Rotate\Station2" (
	echo "delete station2" 
	del /F /S /Q "C:\Program Files\UV Rotate\Station2"
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

echo == check program station1 path
if not exist  "C:\Program Files\UV Rotate\Station1" (
	echo "create station1 folder"
	mkdir "C:\Program Files\UV Rotate\Station1"
	timeout 2
)

echo == check program station2 path
if not exist  "C:\Program Files\UV Rotate\Station2" (
	echo "create station2 folder"
	mkdir "C:\Program Files\UV Rotate\Station2"
	timeout 2
)

if exist  "C:\Program Files\UV Rotate\Path.ini" (
	echo "delete Path.ini"
	del "C:\Program Files\UV Rotate\Path.ini"
	timeout 2
)

if exist  "C:\Program Files\UV Rotate\Station1\Path.ini" (
	echo "delete staiton1 Path.ini"
	del "C:\Program Files\UV Rotate\Station1\Path.ini"
	timeout 2
)

if exist  "C:\Program Files\UV Rotate\Station2\Path.ini" (
	echo "delete Station2 Path.ini"
	del "C:\Program Files\UV Rotate\Station2\Path.ini"
	timeout 2
)

if exist  "C:\Program Files\UV Rotate\settings.cfg" (
	echo "delete settings.cfg"
	del "C:\Program Files\UV Rotate\settings.cfg"
	timeout 2
)

if exist  "C:\Program Files\UV Rotate\UV.cfg" (
	echo "delete UV.cfg"
	del "C:\Program Files\UV Rotate\UV.cfg"
	timeout 2
)

if exist  "C:\Program Files\UV Rotate\NI-DAQmx.ini" (
	echo "delete NI-DAQmx.ini"
	del "C:\Program Files\UV Rotate\NI-DAQmx.ini"
	timeout 2
)

if exist  "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UV Rotate\UV Rotate.lnk" (
	echo "delete start menu UV Rotate.lnk"
	del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UV Rotate\UV Rotate.lnk"
	timeout 2
)


echo create a new file station1 "Path.ini"
echo [UVRotate] >> "C:\Program Files\UV Rotate\Station1\Path.ini"
echo DataPath="C:\ProgramData\UV Rotate\Station1" >> "C:\Program Files\UV Rotate\Station1\Path.ini"
echo.
echo create a new file station2 "Path.ini"
echo [UVRotate] >> "C:\Program Files\UV Rotate\Station2\Path.ini"
echo DataPath="C:\ProgramData\UV Rotate\Station2" >> "C:\Program Files\UV Rotate\Station2\Path.ini"
echo.
echo.

copy /y "C:\Program Files\UV Rotate\UVRotate.aliases" "C:\Program Files\UV Rotate\Station1"
copy /y "C:\Program Files\UV Rotate\UVRotate.exe" "C:\Program Files\UV Rotate\Station1"
copy /y "C:\Program Files\UV Rotate\UVRotate.aliases" "C:\Program Files\UV Rotate\Station2"
copy /y "C:\Program Files\UV Rotate\UVRotate.exe" "C:\Program Files\UV Rotate\Station2"
timeout 3

xcopy /y /S  "%~dp0\ProgramData" "C:\ProgramData\UV Rotate"

copy /y "%~dp0\Station1\UVRotate.ini" "C:\Program Files\UV Rotate\Station1"
copy /y "%~dp0\Station2\UVRotate.ini" "C:\Program Files\UV Rotate\Station2"

copy /y "%~dp0\x86\UV Rotate Station1.lnk" "C:\Users\%username%\Desktop"
copy /y "%~dp0\x86\UV Rotate Station2.lnk" "C:\Users\%username%\Desktop"

copy /y "%~dp0\x86\UV Rotate Station1.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UV Rotate"
copy /y "%~dp0\x86\UV Rotate Station2.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UV Rotate"

copy /y "%~dp0\test.da2" "C:\Project UV Rotate\data"
timeout 2
echo ===== End Of Program =====
Pause

