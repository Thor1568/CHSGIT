@echo off
set /P id=What is the drive letter of the USB?
echo.
echo %id%
call %id%/cleanprojects.bat
robocopy %id%:\ProjectsCleaned "%USERPROFILE%\Documents\Visual Studio 2017\Projects" *.rc *.sln *.csproj *.ico *.vcxproj *.resx *.cs *.cpp *.h *.exe *.config *.txt /e /w:0 /r:100
echo Process complete.
pause