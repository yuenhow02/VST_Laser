@echo off

echo === Check program path ===
if exist  "C:\Program Files (x86)\UV Rotate" (
	echo === 64 bit mode ===
	call %~dp0\x64.bat
) else (
	if exist  "C:\Program Files\UV Rotate" (
		echo === 32 bit mode ===
		call %~dp0\x86.bat
	) else (
		echo program no installed.
		echo ===== End Of Program =====
		Pause
		Exit
	)
)

echo ===== End Of Program =====
Pause
