#e::
IfWinExist , ahk_class Explorer++
    {
	WinActivate, ahk_class Explorer++
    }
else
    {
	Run %A_ScriptDir%\Explorer++.exe
	Loop
		{
		IfWinExist, ahk_class Explorer++
			{
			WinActivate, ahk_class Explorer++
			break
			}
		else
			{
			Sleep, 100
			}
		}
    }
return