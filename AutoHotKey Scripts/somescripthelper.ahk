;Window Warrior
;That's right window, I'm in charge!

;No warranty
;Released under the WTFPL v2 as published by Sam Hocevar
;Meaning you just do what the f*** you want to

Quick =
(
Title			#!t
Always on top		#!a
Process info		#!p
Close said process		#!c
WinKill			#!k
Disable			#!d
Hide			#!h
Show last hidden window	#!s
Minimize all		#!m
Undo #!m			#!+m
)
; The tabs allow perfect alignment with MsgBoxes.

#NoEnv
CoordMode Mouse, Screen

Menu Tray, NoStandard
Menu Tray, Add, QuickList, QuickList
Menu Tray, Add
Menu Tray, Standard
return

#!t:: ; --That's right window, NEW TITLE!
   MouseGetPos,,,Win
   If (!Win)
      return
   ToolTip Enter a title
   Input title,T10,{Enter}
   ToolTip
   If ErrorLevel contains EndKey
      WinSetTitle ahk_id %Win%,,%Title%
return

#!a:: ; --Don't leave my sight!!
   MouseGetPos,,,Win
   If (!Win)
      return
   WinSet AlwaysOnTop, Toggle, ahk_id %Win%
return

#!p:: ; --Get the process pid/name - then close it?
   MouseGetPos,,,Win
   If (!Win)
      return
   WinGet PID, Pid, ahk_id %Win%
   WinGet ProcessName, ProcessName, ahk_id %win%
   HotKey, #!c, Close
   Tooltip PID: %PID%`nProcess Name: %ProcessName%`nWin+Alt+C to kill
   SetTimer ToolTip, -3000
return

#!k:: ; --Close, dammit!
   MouseGetPos,,,Win
   If (!Win)
      return
   WinKill ahk_id %Win%
return

#!h:: ; --Hides the window and pops it onto a stack
   MouseGetPos,,,Win
   If (!Win)
      return
   WinHide ahk_id %Win%
   S++
   Stack%S% := Win
return

#!s:: ; --Shows the most recently hidden window
   a := Stack%S%
   WinShow ahk_id %a%
   S--
return

#!m::  WinMinimizeAll     ; --EVERYONE GET DOWN!
#!+m:: WinMinimizeAllUndo ; --Nope. My bad.

#!d:: ; --Disable that window! It won't know what hit it!
   MouseGetPos,,,Win
   If (!Win)
      Return

   If (Enabled%Win% := !Enabled%Win%)
      WinSet Disable,, ahk_id %Win%
   Else
      WinSet Enable,, ahk_id %Win%
return

Close:
   Process Exist, %PID%
   If ErrorLevel           ; -- It does exist
      Process Close, %PID%
return

ToolTip: ; Removes the tooltip
   ToolTip
return

QuickList: ; Displays a MsgBox with the feature list
   MsgBox % Quick
return