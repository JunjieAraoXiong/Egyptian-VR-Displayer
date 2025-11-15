@echo off
REM Return to the Tomb - Installation Verification Script
REM Checks that all required files and folders are present

echo ============================================
echo Return to the Tomb - Installation Verifier
echo ============================================
echo.

REM Change to the root directory (one level up from scripts/)
cd /d "%~dp0.."

echo Checking installation in: %CD%
echo.

set ERROR_COUNT=0

echo [1/10] Checking bin/ folder...
if not exist "bin\" (
    echo   ERROR: bin/ folder is missing!
    set /a ERROR_COUNT+=1
) else (
    echo   OK: bin/ folder found
)

echo [2/10] Checking main executable...
if not exist "bin\ReturnToTheTomb.exe" (
    echo   ERROR: Main executable missing! ^(bin\ReturnToTheTomb.exe^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: ReturnToTheTomb.exe found
)

echo [3/10] Checking Unity runtime DLL...
if not exist "bin\UnityPlayer.dll" (
    echo   ERROR: Unity runtime missing! ^(bin\UnityPlayer.dll^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: UnityPlayer.dll found
)

echo [4/10] Checking data/ folder...
if not exist "data\" (
    echo   ERROR: data/ folder is missing!
    set /a ERROR_COUNT+=1
) else (
    echo   OK: data/ folder found
)

echo [5/10] Checking game assemblies...
if not exist "data\Managed\" (
    echo   ERROR: Managed assemblies folder missing! ^(data\Managed\^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: Managed/ folder found
)

echo [6/10] Checking runtime/ folder...
if not exist "runtime\MonoBleedingEdge\" (
    echo   ERROR: Mono runtime missing! ^(runtime\MonoBleedingEdge\^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: MonoBleedingEdge runtime found
)

echo [7/10] Checking configuration files...
if not exist "config\vr-bindings\" (
    echo   ERROR: VR bindings configuration missing! ^(config\vr-bindings\^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: VR bindings found
)

echo [8/10] Checking scene files...
if not exist "data\Scenes\" (
    echo   ERROR: Scene files missing! ^(data\Scenes\^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: Scenes folder found
)

echo [9/10] Checking plugins...
if not exist "data\Plugins\" (
    echo   ERROR: Native plugins missing! ^(data\Plugins\^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: Plugins folder found
)

echo [10/10] Checking lighting data...
if not exist "data\Lighting\" (
    echo   ERROR: Baked lighting data missing! ^(data\Lighting\^)
    set /a ERROR_COUNT+=1
) else (
    echo   OK: Lighting data found
)

echo.
echo ============================================
if %ERROR_COUNT% equ 0 (
    echo Result: PASS - Installation is complete!
    echo.
    echo All required files and folders are present.
    echo You can launch the application using:
    echo   - scripts\launch-htc-vive.bat
    echo   - scripts\launch-quest-link.bat
    echo   - Or run bin\ReturnToTheTomb.exe directly
) else (
    echo Result: FAIL - %ERROR_COUNT% error^(s^) found
    echo.
    echo Some files are missing. Please:
    echo   1. Re-extract the complete archive
    echo   2. Verify the download completed successfully
    echo   3. Check that antivirus didn't quarantine files
    echo.
    echo See docs\troubleshooting.md for help
)
echo ============================================
echo.

pause
