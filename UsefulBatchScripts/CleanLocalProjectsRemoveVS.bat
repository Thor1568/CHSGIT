@echo off
SETLOCAL ENABLEEXTENSIONS

SETLOCAL ENABLEDELAYEDEXPANSION

REM %USERPROFILE% refers to C:/Users/<currentuser>.
cd "%USERPROFILE%\Documents\Visual Studio 2017\Projects\*"
for /D %%d IN ("%USERPROFILE%\Documents\Visual Studio 2017\Projects\*") do (
cd /D %%d
del .vs /s /q > NUL
rmdir .vs /s /q > NUL
)


ENDLOCAL
pause