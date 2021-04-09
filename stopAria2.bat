@echo off

set aria2cTitle="aria2c-0x123456"
set aria2cName="aria2c.exe"
set webuiTitle="awebui-0x123456"
set webuiName="gohttpserver.exe"

tasklist /fi "WindowTitle eq %aria2cTitle%" 2>NUL | find /I /N %aria2cName% >NUL
if "%ERRORLEVEL%"=="0" (
    taskkill  /FI "WindowTitle eq %aria2cTitle%" /T 
) else (
    echo %aria2cTitle% not running
)



tasklist /fi "WindowTitle eq %webuiTitle%" 2>NUL | find /I /N %webuiName% >NUL
if "%ERRORLEVEL%"=="0" (
    taskkill  /FI "WindowTitle eq %webuiTitle%" /T 
) else (
    echo %webuiTitle% not running
)




