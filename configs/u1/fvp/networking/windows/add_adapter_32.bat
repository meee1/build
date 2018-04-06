@echo off
rem Copyright ARM Ltd 2010
setlocal enableextensions

if not exist "%~dp0driver\Tap-Win32" (
    echo ERROR: TAP networking support requires the MAC bridge driver from the 
    echo 'FastModel ThirdParty IP' package to configure networking. 
    echo.
    echo Please install the 'FastModel ThirdParty IP' package and re-run this program.
    goto END
)

echo The script is going to install and configure a tap adapter

rem Start setup process...
tap_setup_32.exe setup "%~dp0driver\Tap-Win32\OemWin2k.inf" tap0901

:END
pause
