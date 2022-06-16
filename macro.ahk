~F24::
FileRead, key, C:\Users\Larry\Documents\GitHub\macros\keypressed.txt
tippy(key)

If (key = "right")
Send, \rightarrow
Return
If (key = "left")
Send, \leftarrow
Return

Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere% TP,,,8
SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
	;removes the tooltip
return