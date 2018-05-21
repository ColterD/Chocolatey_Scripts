:: Simple Home-Based Environment Setup Script Using Chocolatey | https://chocolatey.org
:: Description of what the commands do:
:: choco is the backend command, it's like git or svn checkout
:: install tells it what to do
:: --confirm is a headless install where it doesn't ask you to confirm installation or not
:: If you need to customize programs, pull the raw file, edit it, and run as a seperate PowerShell command instead of this automated install.

@rem ----[ This code block detects if the script is being running with admin PRIVILEGES If it isn't it pauses and then quits]-------
echo OFF
mode con: cols=65  lines=24
cls

NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected!
    timeout /t 1 /nobreak > NUL
) ELSE (
   echo.
   echo       [91m  ######## ########  ########   #######  ########  [0m
   echo       [91m  ##       ##     ## ##     ## ##     ## ##     ## [0m
   echo       [91m  ##       ##     ## ##     ## ##     ## ##     ## [0m
   echo       [91m  ######   ########  ########  ##     ## ########  [0m
   echo       [91m  ##       ##   ##   ##   ##   ##     ## ##   ##   [0m
   echo       [91m  ##       ##    ##  ##    ##  ##     ## ##    ##  [0m
   echo       [91m  ######## ##     ## ##     ##  #######  ##     ## [0m
   echo.
   echo.
   echo    [93m####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########[0m
   echo    This script must be run as administrator to work properly!  
   echo      Right click the file and select "Run As Administrator"
   echo    [93m##########################################################[0m
   echo.
   PAUSE
   EXIT /B 1
)
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b

:: This script will install both the Chocolately .exe file and add the
:: choco command to your PATH variable﻿﻿

echo.
@echo Now Installing Chocolatey...
timeout /t 1 /nobreak > NUL
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
CALL :CHECK_FAIL
:: Refresh environment
refreshenv
CALL :CHECK_FAIL
@echo Initial Installation Finished
timeout /t 1 /nobreak > NUL
@echo.
@echo Now Getting Windows Installation Script from Github...
timeout /t 1 /nobreak > NUL
CALL :CHECK_FAIL

:: Get Install Script from Git
iex ((new-object net.webClient).DownloadString('https://raw.githubusercontent.com/ColterD/Chocolatey_Scripts/master/apps.bat'))
CALL :CHECK_FAIL

GOTO :EOF

:: If Script Fails, Check
:CHECK_FAIL
[AT]echo off
if NOT ["%errorlevel%"]==["0"] (
    pause
    exit /b %errorlevel%
)