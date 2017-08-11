@echo off
:again
timeout /t 30
for /f "tokens=*" %%a in (C:\Intel\ps.txt) do taskkill /IM %%a /F /FI "USERNAME eq %USERNAME%"
timeout /t 270
IF NOT "%TIME%"=="%TIME:23:=%" taskkill /IM chrome.exe /F /FI "USERNAME eq %USERNAME%"
goto:again
:eof