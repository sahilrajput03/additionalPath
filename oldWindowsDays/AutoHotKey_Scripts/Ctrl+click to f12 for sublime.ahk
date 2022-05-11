;this code is working good for ctrl+click to remap it to f12
#IfWinActive ahk_class PX_WINDOW_CLASS
^LButton::
  Send {LButton}{F12}
return
#IfWinActive

