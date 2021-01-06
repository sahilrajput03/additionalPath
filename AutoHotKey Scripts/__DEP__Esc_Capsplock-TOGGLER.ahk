$Esc::
	SetCapsLockState % !GetKeyState("CapsLock", "T")
return

$CapsLock::
	Send {Esc}
return

