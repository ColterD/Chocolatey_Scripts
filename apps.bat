:: Simple Home-Based Environment Setup Script Using Chocolatey https://chocolatey.org
:: Description of what the commands do:
:: choco is the backend command, it's like git or svn checkout
:: install tells it what to do
:: -y is a headless install where it doesn't ask you to confirm installation or not
::
:: If you need to customize this, pull the raw file, edit it, and run as a seperate PowerShell command instead of the automated install.
::
:: Clean version of Clover - https://archive.org/details/CloverSetup3.0.406
:: Scheduled Task to Close Programs at /TIME:  https://www.youtube.com/watch?v=h1Cc29ZMpr0

echo off
echo [93m Now Windows Update will check for updates, the script will continue in the meanwhile.[0m
wuauclt /detectnow
wuauclt /updatenow
timeout /t 3 /nobreak > NUL

echo [93m Now Installing Chocolatey Apps...[0m
timeout /t 1 /nobreak > NUL

:: Required!
choco install -y chocolatey-core.extension

:: Create Windows Scheduled Task to Run Program Updates at /TIME (2 AM)
choco install -y choco-upgrade-all-at --params "'/DAILY:yes /TIME:02:00 /ABORTTIME:08:00'"

:: Microsoft Baseline Configuration Analyzer
choco install -y mbca

:: AntiMalware/Spyware/Virus
choco install -y shutup10
choco install -y bleachbit
choco install -y malwarebytes
choco install -y adwcleaner
choco install -y combofix

:: Audio/Visual
choco install -y spotify --version 1.0.92.390
choco install -y obs-studio
choco install -y audacity audacity-lame
choco install -y k-litecodecpackmega

:: Basic Windows 10 Stuff
choco install -y javaruntime
choco install -y jre8
choco install -y silverlight
choco install -y adobeair
choco install -y flashplayerplugin
choco install -y flashplayeractivex
choco install -y adobeshockwaveplayer
choco install -y disableuac

:: Common Software Ninite Alternative
choco install -y googlechrome
choco install -y 7zip.install
choco install -y unchecky
choco install -y f.lux
choco install -y lastpass
choco install -y teamviewer
choco install -y anydesk
choco install -y classic-shell
choco install -y sumatrapdf.install -ia "/opt pdfpreviewer"
choco install -y qbittorrent
choco install -y nodejs.install
choco install -y git
choco install -y wiztree
choco install -y reddit-wallpaper-changer
choco install -y authy-desktop

:: Gaming
choco install -y steam
choco install -y origin
choco install -y discord.install
choco install -y twitch

:: Experimental Battle.NET Install https://chocolatey.org/packages/battle.net
choco install -y battle.net --checksum c7f48cc0f1a3bd7cb5f41b96b356ba69

:: Utility Software
choco install -y github-desktop
choco install -y winscp
choco install -y sublimetext3
choco install -y mremoteng
choco install -y steam-cleaner
choco install -y speccy

:: Install Last - Restart Required!
choco install -fy dotnetfx --pre
choco install -fy dotnet3.5

:: Optional Addons
:: choco install -y pycharm-community
:: choco install -y megasync
:: choco install -y firefox
:: choco install -y opera
:: choco install -y winrar
:: choco install -y foxitreader
:: choco install -y dropbox
:: choco install -y googledrive
:: choco install -y googleearth
:: choco install -y poweriso
:: choco install -y hwinfo
:: choco install -y makemkv
:: choco install -y notepadplusplus.install
:: choco install -y vlc
:: choco install -y putty
:: choco install -y virtualbox
:: choco install -y wireshark
:: choco install -y citrix-receiver
:: choco install -y autohotkey.install
:: choco install -y cpu-z
:: choco install -y rufus
:: choco install -y imgburn
:: choco install -y telegram.install
:: choco install -y itunes
:: choco install -y foobar2000

echo [93m Installation completely finished.  Windows will now restart in 15 seconds.[0m
shutdown.exe /r /t 15
