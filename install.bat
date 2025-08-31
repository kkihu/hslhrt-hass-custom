@echo off
chcp 65001 >nul
echo HSL HRT Home Assistant Integration Installer
echo =============================================
echo.

REM Check if we're in the right directory
if not exist "hslhrt" (
    echo Error: hslhrt directory not found!
    echo Please run this script from the root of the repository.
    pause
    exit /b 1
)

REM Get Home Assistant config directory
echo Please enter your Home Assistant configuration directory:
echo (e.g., C:\Users\YourUser\AppData\Roaming\.homeassistant or D:\homeassistant)
set /p CONFIG_DIR="Config directory: "

if not exist "%CONFIG_DIR%" (
    echo Error: Directory %CONFIG_DIR% does not exist!
    pause
    exit /b 1
)

REM Create custom_components directory if it doesn't exist
set CUSTOM_COMPONENTS=%CONFIG_DIR%\custom_components
if not exist "%CUSTOM_COMPONENTS%" (
    echo Creating custom_components directory...
    mkdir "%CUSTOM_COMPONENTS%"
)

REM Copy the integration
echo Installing HSL HRT integration...
xcopy "hslhrt" "%CUSTOM_COMPONENTS%\hslhrt" /E /I /Y

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✅ Installation successful!
    echo.
    echo Next steps:
    echo 1. Restart Home Assistant
    echo 2. Go to Configuration → Integrations → +
    echo 3. Search for 'HSL' and configure
    echo.
    echo Installation directory: %CUSTOM_COMPONENTS%\hslhrt
) else (
    echo.
    echo ❌ Installation failed!
    echo Please check the error messages above.
)

pause 