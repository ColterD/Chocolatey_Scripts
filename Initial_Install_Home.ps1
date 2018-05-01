# Install chocolatey (package manager)
Set-ExecutionPolicy RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Common Software | Ninite Alternative
choco install --confirm firefox 7zip.install unchecky f.lux lastpass sharex teamviewer twitch windirstat classic-shell audacity audacity-lame k-litecodecpackmega spotify jre8 dotnet4.7.1 silverlight adobeair flashplayerplugin adobeshockwaveplayer flashplayeractivex sublimetext3 mremoteng sumatrapdf qbittorrent steam origin megasync github hwinfo discord.install winscp steam-cleaner obs-studio bleachbit makemkv

# O&O Shut Up 10 | Anti-Microsoft Spyware and Telemetry
choco install --confirm shutup10

# Experimental Battle.NET Install | https://chocolatey.org/packages/battle.net
choco install battle.net --checksum c7f48cc0f1a3bd7cb5f41b96b356ba69

# Reddit Wallpaper Changer
choco install --confirm reddit-wallpaper-changer

# vSphere Installer
# choco install vmwarevsphereclient --version 6.0.0.4437566

# Hyper-V Enabler | Make Sure Powershell Is Running As Admin - Windows 10 PRO ONLY | Use vSphere Command Above and Comment Below Line Out Otherwise
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
