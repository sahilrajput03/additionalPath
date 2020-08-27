 Set WshShell = CreateObject("WScript.Shell" ) 
  WshShell.Run """C:\additionalPath\AutoHotKey Scripts\executabled made\FixCtrlBackspace_cmd.exe""", 0 'Must quote command if it has spaces; must escape quotes
  Set WshShell = Nothing