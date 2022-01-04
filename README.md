# A Simple Application Folder for Windows
Forcing a macOS feature on Windows <br>

## Why?
Windows start menu is fucken garbage. Folders with useless shit get piled up in there all the time even when you clearly check mark the "DO NOT MAKE START MENU FOLDER" button on installers. This script hopes to fix the miss steps and provide "mac-esqu" Apps folder experience using Windows already established program folder directories. This is a hacked together script with no fancy gui and some manual clean up is still needed but at least 90% of the job is already done. <br>

## How?
A simple script. You're going to need to run the script as Admin. The script's workings can be viewed in the repos contents if you’d like to go over what exactly it's doing. There's both a Powershell.ps1 (Auto Quick Acess Pin) and ComandPrompt.bat (Manual Quick Acess Pin).

## Before You Run This
USE AT YOUR OWN RISK. This script is really only suitable if you're the only one using the windows machine. As in there are no other users on the machine (hasn’t been extensively tested if it works at all with multiple users). The script simply copies the contents from:

```
%AppData%\Microsoft\Windows\Start Menu\Programs\
```
Over to:
```
%ProgramData%\Microsoft\Windows\Start Menu\Programs
```

## WIP
- [x]  A clean up portion of the script that removes all the uninstaller.lnk files.
- [x]  Add new "Applications" folder to quick access in File Explorer (PowerShell only)  
- [ ]  Deskop shortcut clean up (Moves any desktop shortcuts to %ProgramsData%)
- [ ]  Auto run of some sorts after every boot up or after an installer is complete
