@echo off
set /P id=What is the drive letter of the USB?
echo.
echo %id%
robocopy "%USERPROFILE%\Documents\Visual Studio 2017\Projects" %id%:\Projects /e /w:0 /r:100
echo Process complete.
pause