for /r "%AppData%\Microsoft\Windows\Start Menu\Programs\" %%x in (*.lnk, *.url, *.exe) do move "%%x" "%ProgramData%\Microsoft\Windows\Start Menu\Programs"
