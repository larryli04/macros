Set WshShell = CreateObject("WScript.Shell")
    WshShell.Run chr(34) & "C:\Users\Larry\Documents\GitHub\macros\startup.bat" & chr(34), 0
Set WshShell = Nothing

'put this file in windows startup folder'