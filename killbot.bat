@echo off
:again
timeout /t 30
for /f "tokens=*" %%a in (C:\Intel\ps.txt) do taskkill /IM %%a /F
IF NOT "%TIME%"=="%TIME:23:=%" taskkill /IM chrome.exe /F
timeout /t 300
goto:again
:eof