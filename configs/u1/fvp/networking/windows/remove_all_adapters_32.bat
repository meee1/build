@echo off
rem Copyright ARM Ltd 2010

if not exist "%~dp0driver\Tap-Win32" (
echo ERROR: TAP networking support requires the MAC bridge driver from the 
echo 'FastModel ThirdParty IP' package to configure networking. 
echo.
echo Please install the 'FastModel ThirdParty IP' package and re-run this program.
pause
exit
)

echo WARNING: The script is going to remove all TAP adapters

pause

rem Start setup process...
tap_setup_32.exe remove all

pause
