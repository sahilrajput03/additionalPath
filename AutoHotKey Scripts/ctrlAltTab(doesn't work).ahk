;THIS AHK TOOK ALMOST 8 HRS SO FAR, I DIDN'T FIND ANYWAY TO MAKE IT WORK, COZ CTRL+ALT+TAB IS NOT INTERCEPETED BY WINDOWS, THOUGH IT DETECTS WINDOWS+TAB KEY CORRECTLY. yIKES!!!
#Tab::
;Send {Tab}
Sleep 1000
Send {Ctrl Down}{Alt Down}{Tab}
Sleep 1000
Send {Alt Up}{Ctrl Up}
;Send asdfasdf
;Send ^!{Tab}
return

; this ahk will work!!