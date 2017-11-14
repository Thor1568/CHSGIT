@echo off
set /P id=What is the drive letter of the USB?
echo.
echo %id%
robocopy "%USERPROFILE%\Documents\Visual Studio 2017\Projects" %id%:\Projects *.rc *.sln *.ico *.csproj *.vcxproj *.resx *.cs *.cpp *.h *.exe *.config *.txt *.png *.bmp *.jpg *.jpeg /e /w:0 /r:100
echo Process complete.
pause