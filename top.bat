@echo off
:again
cls
tasklist /FI "USERNAME eq %USERNAME%"
timeout /t 5
goto:again
:eof