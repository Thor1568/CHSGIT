@echo off
robocopy %~d0\Projects %~d0\ProjectsCleaned /e /w:0 /r:100
pause