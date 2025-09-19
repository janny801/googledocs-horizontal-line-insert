#Requires AutoHotkey v2.0

; Only active when Chrome is focused AND the tab title contains "Google Docs"
#HotIf WinActive("ahk_exe chrome.exe") && InStr(WinGetTitle("A"), "Google Docs")

; OPTION A: Type --- to insert a horizontal line (instant trigger)
:*:---::
{
    ; remove the typed dashes
    Send "{BS 3}"

    ; open Insert menu, wait, then choose Horizontal line (r)
    Send "{Alt down}i{Alt up}"
    Sleep 500
    Send "r"
}

; OPTION B: Hotkey Ctrl+Alt+H to insert a horizontal line
^!h::
{
    Send "{Alt down}i{Alt up}"
    Sleep 500
    Send "r"
}

#HotIf
