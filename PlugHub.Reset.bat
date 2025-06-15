@echo off
setlocal

rem =========================================================
rem  PlugHub VS Project Cleaner
rem  Safely removes all bin and obj folders recursively
rem =========================================================

echo.
echo =========================================================
echo   Visual Studio Build Artifact Cleaner
echo =========================================================
echo.

set "confirm="
set /p confirm=Are you sure you want to remove ALL build artifacts (bin/obj)? (y/N): 

if /i not "%confirm%"=="y" (
    echo.
    echo Operation cancelled by user.
    echo.
    endlocal
    exit /b 0
)

echo.
echo =========================================================
echo   Cleaning all bin and obj folders...
echo =========================================================
echo.

rem Delete all bin and obj folders recursively from the current directory
for /d /r %%i in (bin,obj) do (
    if exist "%%i" (
        echo   Deleting "%%i"
        rd /s /q "%%i"
    )
)

echo.
echo =========================================================
echo   Clean complete!
echo =========================================================
echo.

endlocal
exit /b 0
