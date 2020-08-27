#IfWinActive ahk_class ConsoleWindowClass
; Paste in command window
^V::
Send !{Space}ep
return

; was ^BackSpace, I prefer ^W a la linux
^W:: ;;Delete previous word
Send ^+{Left}
Send {F4}{Space}
Return

^BackSpace:: ;;Delete previous word2
Send ^+{Left}
Send {F4}{Space}
Return

^U::   ;;erase to start of line
Send ^{Home}
Return

^A::   ;;move to start of line
Send {Home}
Return

^E::   ;;move to end of line
Send {End}
Return

^F::   ;; move one char forward
Send {Right}
Return

^B::   ;;move one char back
Send {Left}
Return
#IfWinActive