Move-Item -Path "%AppData%\Microsoft\Windows\Start Menu\Programs\*" -Destination "%ProgramData%\Microsoft\Windows\Start Menu\Programs" -PassThru;
del *uninstall*;
$o.Namespace('c:\ProgramData\Microsoft\Windows\Start Menu\Programs').Self.InvokeVerb("pintohome")
