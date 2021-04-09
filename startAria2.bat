@echo off

set webServerPort=54975
set aria2cTitle="aria2c-0x123456"
set aria2cName="aria2c.exe"
set webuiTitle="awebui-0x123456"
set webuiName="gohttpserver.exe"
set currentPath=%CD:\=\\%
set webpath="%currentPath%\\webui-aria2-master\\docs"
set aria2cpath="%currentPath%\\aria2-1.35.0-win-64bit-build1"
set aria2ConfPath="%currentPath%\\aria2c.conf"


@REM Detect aria2.session
if not exist "%currentPath%\\aria2.session" (
    echo. 2>"%currentPath%\\aria2.session"
    )


tasklist /fi "WindowTitle eq %aria2cTitle%" 2>NUL | find /I /N %aria2cName% >NUL
if "%ERRORLEVEL%"=="0" (
    echo %aria2cTitle% running
) else (
    echo %aria2cTitle% starting...
    cd %aria2cpath%
    start "%aria2cTitle%" aria2c.exe --enable-rpc --rpc-listen-all --conf-path %aria2ConfPath%
)

tasklist /fi "WindowTitle eq %webuiTitle%" 2>NUL | find /I /N %webuiName% >NUL
if "%ERRORLEVEL%"=="0" (
     echo %webuiTitle% running
) else (
    echo %webuiTitle% starting...
    cd %webpath%
    start "%webuiTitle%" %webuiName% -p %webServerPort%
)

start "" "http://localhost:%webServerPort%"
@REM start "" "%webpath%\\docs\\index.html"