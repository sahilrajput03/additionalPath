#IfWinActive ahk_class CabinetWClass ; File Explorer
    ^Backspace::
#IfWinActive ahk_class AutoHotkeyGUI
    ^Backspace::
    Send ^+{Left}{Backspace}
#IfWinActive