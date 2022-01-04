# A Simple Application Folder for Windows
Forcing a macOS feature on Windows <br>

## Why?
Windows start menu is fucken garbage. Folders with useless readme's and other shit get piled up in there all the time even when you clearly check mark the "DO NOT MAKE START MENU FOLDER" button on program installers. This script hopes to fix the miss steps of the Windows Start Menu and provide a "mac-esqu" Apps folder experience using Windows already established program folder directories. This is a hacked together script with no fancy gui and some manual clean up is still needed but at least 90% of the job is already done. <br>

## How?
An over simplified script. You're going to need to run the script as Admin. The script's workings can be viewed in the repos contents if you’d like to go over what exactly it's doing. 

## Before You Run This
USE AT YOUR OWN RISK. This script is really only suitable if you're the only one using the windows machine. As in there are no other users on the machine (hasn’t been extensively tested if it works at all with multiple users). The script simply copies the contents from:

```
%AppData%\Microsoft\Windows\Start Menu\Programs\
```
Over to:
```
%ProgramData%\Microsoft\Windows\Start Menu\Programs
```
This way Windows can collect all available (program.lnk)'s and put them in a centralized location on top of populating the Start Menu with the same programs.

## WIP
- [x]  A clean up portion of the script that removes all the uninstaller.lnk files.
- [x]  Add new "Applications" folder to quick access in File Explorer (PowerShell only)
- [x]  Recursivley check and move Steam .url shortcuts for GAMERS
- [ ]  Deskop shortcut clean up (Moves any desktop shortcuts to %ProgramData%\Microsoft\Windows\Start Menu\Programs)
- [ ]  Auto run of some sorts after every boot up or after an installer is complete
- [ ]  Auto remove unessisary sub folders in %ProgramData%\Microsoft\Windows\Start Menu\Programs 

## Inconsistencies
- Windows Proprietary Tools and Accessibilities such as cmd, Powershell, Run, This PC, etc. and other executables of the same nature is still a manual clean up.
- Sub folders still linger and need a manual clean up (Might now show up in Start Menu given that they are empty)
