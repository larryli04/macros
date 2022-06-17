~F24::
FileRead, key, C:\pathtotextfile\keypressed.txt ; insert path to keypress
tippy(key)

; macros here
If (key = "a") 
Send, a
Return
;macros here

Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere% TP,,,8
SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
	;removes the tooltip
return