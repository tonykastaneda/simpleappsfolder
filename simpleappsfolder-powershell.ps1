# UAC Admin Privlege Prompt - https://stackoverflow.com/a/31602095
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit };

# Collects all .lnk Shortcuts from the $Env:APPDATA\StartMenu\Programs and places them in $Env:ProgramData\StartMenu\Programs
Get-ChildItem -Path "$Env:APPDATA\Microsoft\Windows\Start Menu\Programs\*" -Include *.lnk, *.url, *.exe -Recurse | Move-Item -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs";

# Creates a Quick access Shortcut to C:\ProgramData\Microsoft\Windows\Start Menu\Programs
$o = new-object -com shell.application;
$o.Namespace('C:\ProgramData\Microsoft\Windows\Start Menu\Programs').Self.InvokeVerb("pintohome");

# Removes Uninstallers from Start Menu (Does not delete programs uninstaller executable from its original install root folder)
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs";
del *uninstall*;

# Recursivley moves programs and removes it's empty folder residue with in the newly alocated Programs folder - https://stackoverflow.com/q/38063424
Get-ChildItem -Path ./ -Recurse -File | Move-Item -Destination ./ ; Get-ChildItem -exclude *Windows Toosl* -Path ./ -Recurse -Directory | Remove-Item;

# Desktop Shortcut bunder and cleaner
## WIP

# Shortcut Copy cleaner
## WIP








