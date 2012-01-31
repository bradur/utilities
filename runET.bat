@echo off
echo Wolfenstein: Enemy Territory startup script
echo -------------------------------------------
echo Programs to start: 
echo 1. Minimizor v1.8 by Lightning (idcation.com)
echo 2. TZAC by khaplja (tz-ac.com)
echo 3. RInput by abort (digitalise.net)

echo.
echo.

PATH=%PATH%
echo Checking if Minimizor is running...
PV.EXE Minimizor.exe >nul
if ERRORLEVEL 1 goto Process_NotFound
:Process_Found
echo Minimizor is already running!
goto END
:Process_NotFound
echo Minimizor not running, starting it up...
start /b "" "Minimizor.exe"
goto END
:END

echo.
echo.

echo Checking if TZAC is running...
PV.EXE TZAC-ET.exe >nul
if ERRORLEVEL 1 goto Process_NotFound
:Process_Found
echo TZAC is already running!
goto END
:Process_NotFound
echo TZAC not running, starting it up...
start /b "" "TZAC ANTICHEAT\TZAC-ET.exe"
goto END
:END

echo.
echo.

PATH=%PATH%
echo Checking if RInput is running...
PV.EXE RInput.exe >nul
if ERRORLEVEL 1 goto Process_NotFound
:Process_Found
echo RInput is already running!
goto END
:Process_NotFound
echo RInput not running, starting it up...
RInput ET.exe
goto END
:END
