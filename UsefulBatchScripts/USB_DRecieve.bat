@echo off
set /P id=What is the drive letter of the USB?
echo.
echo %id%
robocopy %id%:\Projects "%USERPROFILE%\Documents\Visual Studio 2017\Projects" /e /w:0 /r:100
echo Process complete.
pause