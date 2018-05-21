:: Simple Home-Based Environment Setup Script Using Chocolatey | https://chocolatey.org
:: Description of what the commands do:
:: choco is the backend command, it's like git or svn checkout
:: install tells it what to do
:: --confirm is a headless install where it doesn't ask you to confirm installation or not
::
:: If you need to customize this, pull the raw file, edit it, and run as a seperate PowerShell command instead of the automated install.

echo off
echo [93m Now Windows Update will check for updates, the script will continue in the meanwhile.[0m
C:\Windows\system32
wuauclt.exe /detectnow /updatenow
timeout /t 3 /nobreak > NUL

echo [93m Now Installing Chocolatey Apps...[0m
timeout /t 1 /nobreak > NUL

:: Extensions
choco install --confirm chocolatey-core.extension

:: AntiMalware/Spyware/Virus
choco install --confirm shutup10
choco install --confirm bleachbit
choco install --confirm malwarebytes
choco install --confirm adwcleaner
choco install --confirm combofix

:: Basic Windows 10 Stuff
choco install --confirm javaruntime
choco install --confirm jre8
choco install --confirm silverlight
choco install --confirm adobeair
choco install --confirm flashplayerplugin
choco install --confirm flashplayeractivex
choco install --confirm adobeshockwaveplayer
choco install --confirm disableuac

:: Common Software | Ninite Alternative
choco install --confirm googlechrome
choco install --confirm 7zip.install
::choco install --confirm unchecky
choco install --confirm pycharm-community
choco install --confirm evernote
choco install --confirm f.lux
choco install --confirm lastpass
choco install --confirm sharex
choco install --confirm teamviewer
choco install --confirm classic-shell
choco install --confirm sumatrapdf.install -ia "/opt pdfpreviewer"
choco install --confirm qbittorrent
::choco install --confirm megasync

:: Optional Addons
::choco install --confirm firefox
:: choco install --confirm opera
:: choco install --confirm winrar
:: choco install --confirm foxitreader
:: choco install --confirm dropbox
:: choco install --confirm googledrive
:: choco install --confirm googleearth
:: choco install --confirm poweriso

:: Utility Software
choco install --confirm github-desktop
choco install --confirm hwinfo
choco install --confirm winscp
choco install --confirm makemkv
choco install --confirm sublimetext3
choco install --confirm mremoteng
choco install --confirm windirstat
::choco install --confirm steam-cleaner
choco install --confirm speccy

:: Hyper-V Enabler | Windows 10 PRO ONLY
:: Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

:: Optional Addons
:: choco install --confirm notepadplusplus.install
:: choco install --confirm vlc
:: choco install --confirm putty
:: choco install --confirm virtualbox
:: choco install --confirm wireshark
:: choco install --confirm citrix-receiver
:: choco install --confirm autohotkey.install
:: choco install --confirm cpu-z
:: choco install --confirm rufus
:: choco install --confirm imgburn

:: Audio/Visual
choco install --confirm spotify --version 1.0.75.483
:: choco install --confirm obs-studio
:: choco install --confirm audacity audacity-lame
choco install --confirm k-litecodecpackmega
:: Optional Addons
:: choco install --confirm itunes
:: choco install --confirm foobar2000

:: Gaming
::choco install --confirm steam
::choco install --confirm origin
choco install --confirm discord.install
::choco install --confirm twitch
:: Experimental Battle.NET Install | https://chocolatey.org/packages/battle.net (check top comments)
::choco install --confirm battle.net --checksum c7f48cc0f1a3bd7cb5f41b96b356ba69
:: Optional Addons
:: choco install --confirm telegram.install

:: Reddit Wallpaper Changer
choco install --confirm reddit-wallpaper-changer

:: Must Run Last Due To Restart Required
choco install --confirm dotnet4.7
choco install --confirm dotnet3.5
choco install --confirm authy-desktop

echo [93m Installation completely finished.  Windows will now restart in 30 seconds.[0m
shutdown.exe /s /t 30