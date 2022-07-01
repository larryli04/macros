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

;;Streaming?
If (key = "insert")
Send, {F15}
If (key = "home")
Send, {F16}
If (key = "pageup")
Send, {F17}
If (key = "delete")
Send, {F18}
If (key = "end")
Send, {F19}
If (key = "pagedown")
Send, {F20}
; macros

If (key = "e")
Run, C:\Windows\explorer.exe "C:\Users:\Larry"

If (key = "q")
Run, C:\Windows\system32\control.exe mmsys.cpl

If (key = "g")
Run, C:\Windows\explorer.exe "C:\Users\Larry\Documents\Github"

If (key = "semicolon") {
Send, :
SendEvent, {Space}

}


If (key = "1") { ;t launch chrome with sheets tabs
Run, chrome.exe --profile-directory="Profile 1" "https://docs.google.com/spreadsheets/d/1VFC3DvOyFSNKvYlbWvFkHcdbjtGuljkuL3Gnx_mPWSs/edit#gid=0" " --new-window "
sleep, 100

Run, chrome.exe --profile-directory="Profile 1" "https://docs.google.com/spreadsheets/d/1lIkAbxsKdR_iGFuWx-aRTtA2TtuBt9HU5uOB0WYYfZ8/edit#gid=0"
Run, chrome.exe --profile-directory="Profile 1" "https://docs.google.com/spreadsheets/d/1pJvmPjXwtna8CP53S5oGyr6ZAn5jaJxlTftRj_WqPOI/edit#gid=0"
}

If (key = "2") { ;t launch chrome with school profile
Run, chrome.exe --profile-directory="Profile 4" " --new-window "
}

If (key = "0") { ;t launch chrome with google classroom
Run, chrome.exe --profile-directory="Profile 1" "https://classroom.google.com/u/0/h" " --new-window "
}
If (key = "9") { ;t launch chrome with sheets tabs
Run, chrome.exe --profile-directory="Profile 1" "https://calendar.google.com/calendar/u/0/r/week" " --new-window "
}

If (key = "right") {
Send, {Ctrl Down}
Send, {right}
Send, {Ctrl Up}
}

If (key = "left") {
Send, {Ctrl Down}
Send, {left}
Send, {Ctrl Up}
}

If (key = "down")
Send, {Down}

If (key = "up")
Send, {Up}

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