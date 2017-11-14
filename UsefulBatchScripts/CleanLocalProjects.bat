@echo off
SETLOCAL ENABLEEXTENSIONS

SETLOCAL ENABLEDELAYEDEXPANSION
cd "%USERPROFILE%\Documents\Visual Studio 2017\Projects\*"
for /D %%d IN ("%USERPROFILE%\Documents\Visual Studio 2017\Projects\*") do (
cd /D %%d
del .vs /s /q > NUL
rmdir .vs /s /q > NUL


del .git /s /q > NUL
rmdir .git /s /q > NUL
del .gitattributes > NUL
del .gitignore > NUL

cd %%~nd

if exist "*.vcxproj" (
REM C++ project
del Debug /s /q > NUL
rmdir Debug /s /q > NUL
del Release /s /q > NUL
rmdir Release /s /q > NUL
del x64 /s /q > NUL
rmdir x64 /s /q > NUL
cd ..
del Debug /s /q > NUL
rmdir Debug /s /q > NUL
del Release /s /q > NUL
rmdir Release /s /q > NUL
del x64 /s /q > NUL
rmdir x64 /s /q > NUL

)

if exist "*.csproj" (
REM C# project
del bin /s /q
rmdir bin /s /q
del obj /s /q
rmdir obj /s /q
)
	
)
)



ENDLOCAL
pause