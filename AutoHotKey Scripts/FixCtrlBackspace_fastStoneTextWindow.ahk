#IfWinActive ahk_class TMyMultilineInput
    ^Backspace::
    Send ^+{Left}{Backspace}
#IfWinActive