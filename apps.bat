REM Simple Home-Based Environment Setup Script Using Chocolatey https://chocolatey.org
REM Description of what the commands do:
REM choco is the backend command, it's like git or svn checkout
REM install tells it what to do
REM --confirm is a headless install where it doesn't ask you to confirm installation or not
REM
REM If you need to customize this, pull the raw file, edit it, and run as a seperate PowerShell command instead of the automated install.

echo off
echo [93m Now Windows Update will check for updates, the script will continue in the meanwhile.[0m
wuauclt /detectnow
wuauclt /updatenow
timeout /t 3 /nobreak > NUL

echo [93m Now Installing Chocolatey Apps...[0m
timeout /t 1 /nobreak > NUL

REM Extensions
choco install --confirm chocolatey-core.extension

REM AntiMalware/Spyware/Virus
choco install --confirm shutup10
choco install --confirm bleachbit
choco install --confirm malwarebytes
choco install --confirm adwcleaner
choco install --confirm combofix

REM Basic Windows 10 Stuff
choco install --confirm javaruntime
choco install --confirm jre8
choco install --confirm silverlight
choco install --confirm adobeair
choco install --confirm flashplayerplugin
choco install --confirm flashplayeractivex
choco install --confirm adobeshockwaveplayer
choco install --confirm disableuac

REM Common Software Ninite Alternative
choco install --confirm googlechrome
choco install --confirm 7zip.install
REM choco install --confirm unchecky
choco install --confirm pycharm-community
choco install --confirm evernote
choco install --confirm f.lux
choco install --confirm lastpass
choco install --confirm sharex
choco install --confirm teamviewer
choco install --confirm classic-shell
choco install --confirm sumatrapdf.install -ia "/opt pdfpreviewer"
choco install --confirm qbittorrent
REM choco install --confirm megasync

REM Optional Addons
REM choco install --confirm firefox
REM choco install --confirm opera
REM choco install --confirm winrar
REM choco install --confirm foxitreader
REM choco install --confirm dropbox
REM choco install --confirm googledrive
REM choco install --confirm googleearth
REM choco install --confirm poweriso

REM Utility Software
choco install --confirm github-desktop
choco install --confirm hwinfo
choco install --confirm winscp
choco install --confirm makemkv
choco install --confirm sublimetext3
choco install --confirm mremoteng
choco install --confirm windirstat
REM choco install --confirm steam-cleaner
choco install --confirm speccy

REM Hyper-V Enabler Windows 10 PRO ONLY
REM Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

REM Optional Addons
REM choco install --confirm notepadplusplus.install
REM choco install --confirm vlc
REM choco install --confirm putty
REM choco install --confirm virtualbox
REM choco install --confirm wireshark
REM choco install --confirm citrix-receiver
REM choco install --confirm autohotkey.install
REM choco install --confirm cpu-z
REM choco install --confirm rufus
REM choco install --confirm imgburn

REM Audio/Visual
choco install --confirm spotify --version 1.0.75.483
REM choco install --confirm obs-studio
REM choco install --confirm audacity audacity-lame
choco install --confirm k-litecodecpackmega

REM Optional Addons
REM choco install --confirm itunes
REM choco install --confirm foobar2000

REM Gaming
REM choco install --confirm steam
REM choco install --confirm origin
choco install --confirm discord.install
REM choco install --confirm twitch
REM Experimental Battle.NET Install https://chocolatey.org/packages/battle.net
REM choco install --confirm battle.net --checksum c7f48cc0f1a3bd7cb5f41b96b356ba69

REM Optional Addons
REM choco install --confirm telegram.install

REM Reddit Wallpaper Changer
choco install --confirm reddit-wallpaper-changer

REM Must Run Last Due To Restart Required
choco install --confirm dotnet4.7
choco install --confirm dotnet3.5
choco install --confirm authy-desktop

echo [93m Installation completely finished.  Windows will now restart in 30 seconds.[0m
shutdown.exe /s /t 30