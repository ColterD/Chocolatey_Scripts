:: Simple Home-Based Environment Setup Script Using Chocolatey https://chocolatey.org
:: Description of what the commands do:
:: choco is the backend command, it's like git or svn checkout
:: install tells it what to do
:: -yr is a headless install where it doesn't ask you to confirm installation or not
::
:: If you need to customize this, pull the raw file, edit it, and run as a seperate PowerShell command instead of the automated install.
::
:: Clean version of Clover - https://archive.org/details/CloverSetup3.0.406
:: Scheduled Task to Close Programs at /TIME:  https://www.youtube.com/watch?v=h1Cc29ZMpr0

@echo off
echo [93m Now Windows Update will check for updates, the script will continue in the meanwhile.[0m
wuauclt /detectnow
wuauclt /updatenow
timeout /t 3 /nobreak > NUL

echo [93m Now Installing Chocolatey Apps...[0m
timeout /t 1 /nobreak > NUL

:: Required!
choco install -yr chocolatey-core.extension

:: Create Windows Scheduled Task to Run Program Updates at /TIME (2 AM)
choco install -yr choco-upgrade-all-at --params "'/DAILY:yes /TIME:02:00 /ABORTTIME:08:00'"

:: Microsoft Baseline Configuration Analyzer
choco install -yr mbca

:: AntiMalware/Spyware/Virus
:: choco install -yr shutup10
choco install -yr bleachbit
:: choco install -yr malwarebytes
choco install -yr adwcleaner
choco install -yr combofix

:: Audio/Visual
choco install -yr spotify --version 1.0.92.390
choco install -yr obs-studio
choco install -yr audacity audacity-lame
choco install -yr k-litecodecpackmega

:: Basic Windows 10 Stuff
choco install -yr javaruntime
choco install -yr jre8
choco install -yr silverlight
choco install -yr adobeair
choco install -yr flashplayerplugin
choco install -yr flashplayeractivex
choco install -yr adobeshockwaveplayer
choco install -yr disableuac

:: Common Software Ninite Alternative
choco install -yr googlechrome
choco install -yr 7zip.install
:: choco install -yr unchecky
choco install -yr f.lux
choco install -yr lastpass
choco install -yr teamviewer
:: choco install -yr anydesk
choco install -yr classic-shell
choco install -yr sumatrapdf.install -ia "/opt pdfpreviewer"
choco install -yr qbittorrent
choco install -yr nodejs.install
choco install -yr git
:: choco install -yr wiztree
:: choco install -yr reddit-wallpaper-changer
:: choco install -yr authy-desktop

:: Gaming
choco install -yr steam
choco install -yr origin
choco install -yr discord
choco install -yr twitch

:: Experimental Battle.NET Install https://chocolatey.org/packages/battle.net
choco install -yr battle.net --checksum c7f48cc0f1a3bd7cb5f41b96b356ba69

:: Utility Software
choco install -yr github-desktop
choco install -yr winscp
choco install -yr sublimetext3
choco install -yr mremoteng
choco install -yr steam-cleaner
choco install -yr speccy

:: Install Last - Restart Required!
choco install -fy dotnetfx --pre
choco install -fy dotnet3.5

:: Optional Addons
:: choco install -yr pycharm-community
:: choco install -yr megasync
:: choco install -yr firefox
:: choco install -yr opera
:: choco install -yr winrar
:: choco install -yr foxitreader
:: choco install -yr dropbox
:: choco install -yr googledrive
:: choco install -yr googleearth
:: choco install -yr poweriso
:: choco install -yr hwinfo
:: choco install -yr makemkv
:: choco install -yr notepadplusplus.install
:: choco install -yr vlc
:: choco install -yr putty
:: choco install -yr virtualbox
:: choco install -yr wireshark
:: choco install -yr citrix-receiver
:: choco install -yr autohotkey.install
:: choco install -yr cpu-z
:: choco install -yr rufus
:: choco install -yr imgburn
:: choco install -yr telegram.install
:: choco install -yr itunes
:: choco install -yr foobar2000

echo [93m Re-enabling Windows Defender...[0m
choco remove -yr disabledefender-winconfig

echo [93m Installation completely finished.  Windows will now restart in 15 seconds.[0m
shutdown.exe /r /t 15
pause
