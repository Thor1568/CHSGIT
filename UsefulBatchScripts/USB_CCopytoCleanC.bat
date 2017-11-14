@echo off
REM robocopy %~d0\Projects %~d0\ProjectsCleaned *.sln *.csproj *.ico *.vcxproj *.resx *.cs *.cpp *.h *.exe *.config *.txt /XD .vs .git /e /w:0 /r:100
robocopy %~d0\Projects %~d0\ProjectsCleaned *.rc *.sln *.csproj *.ico *.vcxproj *.resx *.cs *.cpp *.h *.exe *.config *.txt  /XD .vs .git /e /w:0 /r:100
 