@echo off
REM Return to the Tomb - Meta Quest Link Launcher
REM Optimized launcher for Meta Quest 2 via Oculus Link or Air Link

echo ============================================
echo Return to the Tomb - Meta Quest 2 Launcher
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

echo Pre-flight checklist for Meta Quest 2:
echo   1. Ensure Oculus PC software is installed and running
echo   2. Connect Quest 2 via USB cable ^(Oculus Link^)
echo      OR enable Air Link in headset settings ^(wireless^)
echo   3. Put on your headset and accept the "Allow Access" prompt
echo   4. Verify you see "Link Connected" in the headset
echo   5. Ensure your play space is clear of obstacles
echo.

echo IMPORTANT: Oculus Link/Air Link must be active!
echo.
echo In your Quest 2 headset:
echo   - Open Quick Settings ^(press Oculus button^)
echo   - Select "Quest Link" ^(for cable^) or "Air Link" ^(for wireless^)
echo   - Wait for Link to connect
echo.

pause
echo.

echo Checking if Oculus service is running...
tasklist /FI "IMAGENAME eq OculusDash.exe" 2>NUL | find /I /N "OculusDash.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo OK: Oculus software is running
) else (
    echo WARNING: Oculus software may not be running!
    echo.
    echo Please ensure Oculus PC app is running before continuing.
    echo.
    pause
)

echo.
echo Launching Return to the Tomb in 3 seconds...
echo.
echo Tips:
echo   - Scene 1 may take 30-60 seconds to load
echo   - Use the trigger to interact with objects
echo   - If performance is poor, try using a USB cable instead of Air Link
echo.
timeout /t 3 /nobreak

echo Starting application...
start "" "ReturnToTheTomb.exe"

echo.
echo Application launched!
echo.
echo If the application doesn't appear in VR:
echo   1. Check Oculus app shows Quest 2 as connected
echo   2. Verify Link/Air Link is active in the headset
echo   3. Put on the headset and check the Oculus library
echo   4. Look for "Unknown Sources" in Oculus library if app doesn't appear
echo   5. Try reconnecting Link and launching again
echo.
echo For Air Link issues:
echo   - Ensure you're on 5 GHz WiFi
echo   - Stay close to your router
echo   - Try using a USB cable instead
echo.
echo This window will close in 15 seconds...
timeout /t 15 /nobreak >nul
