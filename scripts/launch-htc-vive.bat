@echo off
REM Return to the Tomb - HTC Vive Launcher
REM Optimized launcher for HTC Vive, Vive Pro, and Vive Cosmos headsets

echo ============================================
echo Return to the Tomb - HTC Vive Launcher
echo ============================================
echo.

REM Change to the bin directory
cd /d "%~dp0..\bin"

echo Checking for ReturnToTheTomb.exe...
if not exist "ReturnToTheTomb.exe" (
    echo ERROR: ReturnToTheTomb.exe not found!
    echo.
    echo Expected location: %CD%\ReturnToTheTomb.exe
    echo.
    echo Please run scripts\verify-installation.bat to check your installation.
    echo.
    pause
    exit /b 1
)

echo Found: ReturnToTheTomb.exe
echo.

echo Pre-flight checklist for HTC Vive:
echo   1. Ensure your HTC Vive headset is connected
echo   2. Verify SteamVR is installed (from Steam)
echo   3. Make sure SteamVR is running ^(should start automatically^)
echo   4. Check that your controllers are powered on and tracking
echo   5. Ensure your play space is clear of obstacles
echo.

echo Starting SteamVR ^(if not already running^)...
REM Attempt to start SteamVR (will do nothing if already running)
start steam://rungameid/250820
timeout /t 3 /nobreak >nul

echo.
echo Launching Return to the Tomb in 3 seconds...
echo.
echo Tips:
echo   - Put on your headset after launch
echo   - Scene 1 may take 30-60 seconds to load
echo   - Use the trigger to interact with objects
echo.
timeout /t 3 /nobreak

echo Starting application...
start "" "ReturnToTheTomb.exe"

echo.
echo Application launched!
echo.
echo If the application doesn't appear in VR:
echo   1. Check that SteamVR shows the headset as "Ready"
echo   2. Look at your desktop monitor - the app window may need focus
echo   3. Try restarting SteamVR and launching again
echo.
echo This window will close in 10 seconds...
timeout /t 10 /nobreak >nul
