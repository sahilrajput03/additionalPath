#IfWinActive ahk_class PX_WINDOW_CLASS
^LButton::
  Send {LButton}{F12}
return
#IfWinActive