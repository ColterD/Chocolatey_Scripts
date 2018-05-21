:: Simple Home-Based Environment Setup Script Using Chocolatey | https://chocolatey.org
:: Description of what the commands do:
:: choco is the backend command, it's like git or svn checkout
:: install tells it what to do
:: --confirm is a headless install where it doesn't ask you to confirm installation or not
::
:: If you need to customize this, pull the raw file, edit it, and run as a seperate PowerShell command instead of the automated install.
:: If there is software you don't want or do want, simply uncomment or comment lines as needed.
@echo off
@echo "Now Installing Chocolatey Apps..."
timeout /t 1

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

:: Refresh environment
refreshenv

@echo "Installation completely finished."
timeout /t 3

:::::::: Links To Individual Installer Pages
:: Extensions
:: Chocolatey Core Extensions | https://chocolatey.org/packages/chocolatey-core.extension
::
:: AntiMalware/Spyware/Virus
:: O&O Shut Up 10 | Anti-Microsoft Spyware and Telemetry | https://chocolatey.org/packages/shutup10
:: Bleachbit | Like With A Cloth? https://chocolatey.org/packages/bleachbit
:: Malwarebytes | https://chocolatey.org/packages/malwarebytes
:: ADWcleaner | https://chocolatey.org/packages/adwcleaner
::
:: Basic Windows 10 Stuff
:: Java Runtime Environment 8 | https://chocolatey.org/packages/javaruntime
:: Microsoft Silverlight | https://chocolatey.org/packages/Silverlight
:: Adobe AIR | https://chocolatey.org/packages/AdobeAIR
:: Adobe Flash Plugin | https://chocolatey.org/packages/flashplayerplugin
:: Adobe Flash ActiveX | https://chocolatey.org/packages/flashplayeractivex
:: Adobe Shockwave | https://chocolatey.org/packages/adobeshockwaveplayer
::
:: Common Software | Ninite Alternative
:: Firefox | https://chocolatey.org/packages/Firefox
:: 7-Zip (Non-Depreciated) | https://chocolatey.org/packages/7zip.install
:: Unchecky | https://chocolatey.org/packages/unchecky
:: f.lux | https://chocolatey.org/packages/f.lux
:: LastPass | https://chocolatey.org/packages/lastpass
:: ShareX | https://chocolatey.org/packages/sharex
:: Teamviewer 13 | https://chocolatey.org/packages/teamviewer
:: Classic Shell | https://chocolatey.org/packages/classic-shell
:: SumatraPDF (Curated Version) | https://chocolatey.org/packages/sumatrapdf.install
:: qBittorent | https://chocolatey.org/packages/qbittorrent
:: MEGAsync | https://chocolatey.org/packages/megasync
::
:: Audio/Visual
:: Spotify (Unmoderated Version) | https://chocolatey.org/packages/spotify/1.0.75.483
:: OBS Studio | https://chocolatey.org/packages/obs-studio
:: Audacity + Audacity LAME | https://chocolatey.org/packages/audacity & https://chocolatey.org/packages/audacity-lame
:: K-Lite Codec Pack Mega 14.1.0 | https://chocolatey.org/packages/k-litecodecpackmega
::
:: Utility Software
:: Github Desktop | https://chocolatey.org/packages/github-desktop
:: HWiNFO | https://chocolatey.org/packages/hwinfo
:: WinSCP | https://chocolatey.org/packages/winscp
:: MakeMKV | https://chocolatey.org/packages/MakeMKV
:: Sublime Text 3 | https://chocolatey.org/packages/SublimeText3
:: mRemoteNG | https://chocolatey.org/packages/mRemoteNG
:: WinDirStat | https://chocolatey.org/packages/windirstat
:: SteamCleaner | https://chocolatey.org/packages/steam-cleaner
:: Authy Desktop | https://chocolatey.org/packages/authy-desktop
:: Speccy | https://chocolatey.org/packages/speccy
::
:: Gaming
:: Steam | https://chocolatey.org/packages/steam
:: Origin | https://chocolatey.org/packages/origin
:: Discord (Curated Version) | https://chocolatey.org/packages/discord.install
:: Twitch | https://chocolatey.org/packages/twitch
:: Experimental Battle.NET Installer | https://chocolatey.org/packages/battle.net (check top comments)
::
:: Reddit Wallpaper Changer
:: https://chocolatey.org/packages/reddit-wallpaper-changer
::
:: Must Run Last Due To Restart Required
:: Microsoft .NET Framework 4.7 | https://chocolatey.org/packages/dotnet4.7
