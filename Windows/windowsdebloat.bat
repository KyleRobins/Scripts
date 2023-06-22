@echo off
echo Deleting temporary files...

:: Delete temporary files from the user's temporary folder
echo Deleting files from %TEMP%...
del /q /f /s "%TEMP%\*.*"

:: Delete temporary files from the system temporary folder
echo Deleting files from %SystemRoot%\Temp...
del /q /f /s "%SystemRoot%\Temp\*.*"

echo Temporary file deletion completed!
