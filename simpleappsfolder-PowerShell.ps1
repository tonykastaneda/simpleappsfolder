Move-Item -Path "%AppData%\Microsoft\Windows\Start Menu\Programs\*" -Destination "%ProgramData%\Microsoft\Windows\Start Menu\Programs" -PassThru;
cd "%ProgramData%\Microsoft\Windows\Start Menu\Programs",
del *uninstall*
