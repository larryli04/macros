#IfWinActive, ahk_exe C:\Users\Larry\AppData\Local\Obsidian\Obsidian.exe
~F24::
FileRead, key, C:\Users\Larry\Documents\GitHub\macros\keypressed.txt
tippy(key)
If (key = "right")
Send, \rightarrow

If (key = "left")
Send, \leftarrow

;;;; Obsidian dependent


Return



;;;;; Desktop
#IfWinActive
~F24::
FileRead, key, C:\Users\Larry\Documents\GitHub\macros\keypressed.txt
tippy(key)

; macros

If (key = "e")
Run, C:\Windows\explorer.exe "C:\Users\Larry"

If (key = "F1")
Reload

If (key = "t")
Run, C:\Windows\System32\taskmgr.exe

If (key = "s") {
	Run, C:\Users\Larry\AppData\Roaming\Spotify\Spotify.exe
	spotifyHwnd := getSpotifyHwnd()
	WinGet, style, Style, ahk_id %spotifyHwnd%
	if (style & 0x10000000) { ; WS_VISIBLE
		WinHide, ahk_id %spotifyHwnd%
	} Else {
		WinShow, ahk_id %spotifyHwnd%
		WinActivate, ahk_id %spotifyHwnd%
	}
}
Return








; FUNCTIONS
getSpotifyHwnd() {
	WinGet, spotifyHwnd, ID, ahk_exe spotify.exe
	Return spotifyHwnd
}

Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere% TP,,,8
SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
	;removes the tooltip
return