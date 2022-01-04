# A Simple Application Folder for Windows
Forcing a macOS feature on Windows <br>

## Why?
Windows start menu is fucken garbage. Folders with useless shit get piled up in there all the time even when you clearly check mark the "DO NOT MAKE START MENU FOLDER" button on installers. This script hopes to fix the miss steps and provide "mac-esqu" Apps folder experience using windows already established programs folder directories. This is a hacked together script with no fancy gui and some manual clean up is still needed but at least 90% of the job is already done. <br>

## How?
A batch file (.bat). You're going to need to run the script as an admin by right clicking Run As Administrator. The script's workings can be viewed in the repos contents if you’d like to go over what exactly it's doing.

## Before You Run This
This script is really only suitable if you're the only one using the windows machine. As in there are no other users on the machine (hasn’t been extensively tested if it works at all with multiple users). The script simply copies the contents from:

```
%AppData%\Microsoft\Windows\Start Menu\Programs\
```
Over to:
```
%ProgramData%\Microsoft\Windows\Start Menu\Programs
```

## WIP
- [ ]  A clean up portion of the script that removes all the uninstaller.lnk files.  
- [ ]  Auto run of some sorts after every boot up or after an installer is complete
- [ ]  Deskop shortcuts to %ProgramsData% for a cleaner desktop
- [ ]  Opens parent Programs folder once script is done so you can add it to the quick access in File Explorer --or-- Auto add Programs folder to quick access
