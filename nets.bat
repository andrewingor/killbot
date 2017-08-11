@echo off
:again
cls
netstat -n -o
timeout /t 1
goto:again
:eof