# A Simple Application Folder for Windows
Forcing a macOS feature on Windows <br>

## What?
Trying to rectify a set of "Non-Issue, Issues" Windows has in how it handels installed Programs and its Shortcuts.

## Why?
Swithcing between macOS and Windows isn't too uncommon these days but coming over to Windows and how fragmented the entire OS is could be very disorientating, or in my case extremely annoying, even for someone whos acustomed to tinkering with Progams and there associated Install directories. For this reason alone I created this script that pusedo replicated the macOS centralized Applications folder. <br>

That being said I also can't be the only one whos sick and tired of the Windows Start Menu not being as clean as it could be. <br>

To be blunt Windows start menu is fucken garbage. Folders with useless readme's and other shit get piled up in there all the time even when you clearly check mark the "DO NOT MAKE START MENU FOLDER" button on certain program installers. This script hopes to fix the miss steps of the Windows Start Menu as well as provide a "mac-esqu" Apps folder experience using the already established program folder directories Windows has for its Start Menu. <br>

This is a hacked together script with no fancy gui and some manual clean up is still needed but at least 90% of the job is already done. <br>

## Before You Run This
This script is really only suitable if you're the only one using the Windows machine youre using this script on. (this script has NOT been extensively tested on machines with multiple users accounts). 

## How?
The script simply copies the contents from:

```
C:\Users\%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
```
Over to:
```
C:\ProgramData\Microsoft\Windows\Start Menu\Programs
```
This way Windows can collect all available (program.lnk)'s --Windows Exention for Program Shortcuts-- and put them in a centralized location on top of populating the Start Menu with the same programs. <br>

This script then removes its empty folders and uninstallers from the Start Menu. <br>

Once all is done the script adds a Quick Acess link in the File Explorer that acts like the macOS Applications folder. This Folder is called Programs <br>

## WIP
- [x]  Auto cleaner that removes all the uninstaller.lnk files
- [ ]  Auto cleaner that removes all non .lnk files
- [x]  Auto add new centralized Programs folder to Quick Access in File Explorer
- [x]  Recursivley check and move Steam's proprietary *.url shortcuts in the same directories
- [ ]  Deskop shortcut clean up (Moves any Desktop Shortcuts to the new Programs Folder)
- [ ]  Move all Windows Specific apps (Powershell, Run, This PC, etc.) in it's own folder akin to the Utilities Folder in macOS
- [x]  Auto remove unessisary and empty sub folders in C:\ProgramData\Microsoft\Windows\Start Menu\Programs 
- [ ]  Auto runner after every boot or log off 

## Inconsistencies
- Windows Proprietary Tools and Accessibility Tools such as cmd, Powershell, Run, This PC, etc. and other executables of the same nature still require a manual clean up.
- Some Sub folder directories still linger and would need a manual clean up (Might now show up in Start Menu given that they are empty)
- Copies of Shortcuts such that Program Name (2).lnk can be created from time to time



USE AT YOUR OWN RISK. (Though no computer I've personally tested this on has spontaneously combusted there is a disclaimer)
