#e::
IfWinExist , ahk_class CabinetWClass
    {
	WinActivate, ahk_class CabinetWClass
    }
else
    {
	Run "C:\Windows\explorer.exe"
	Loop
		{
		IfWinExist, ahk_class CabinetWClass
			{
			WinActivate, ahk_class CabinetWClass
			break
			}
		else
			{
			Sleep, 100
			}
		}
    }
return