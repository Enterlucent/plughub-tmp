@echo off
setlocal

echo.
echo ==========================================
echo   Cleaning all bin and obj folders...
echo ==========================================
echo.

REM Delete all bin and obj folders recursively from the current directory
for /d /r %%i in (bin,obj) do (
    if exist "%%i" (
        echo Deleting "%%i"
        rd /s /q "%%i"
    )
)

echo.
echo ==========================================
echo   Restoring NuGet packages...
echo ==========================================
echo.

echo dotnet restore

echo.
echo ==========================================
echo   (Optional) Cleaning solution with dotnet clean...
echo ==========================================
echo.

echo dotnet clean

echo.
echo All bin and obj folders deleted, NuGet packages restored, and solution rebuilt.
echo pause > nul
