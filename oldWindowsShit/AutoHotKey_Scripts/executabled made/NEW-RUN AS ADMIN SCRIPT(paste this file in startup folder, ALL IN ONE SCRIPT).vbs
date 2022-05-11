 Set WshShell = CreateObject("WScript.Shell" ) 
  WshShell.Run """C:\additionalPath\AutoHotKey Scripts\executabled made\Esc_turns_off_capslock_VIM.exe""", 0 'Must quote command if it has spaces; must escape quotes
  WshShell.Run """C:\additionalPath\AutoHotKey Scripts\executabled made\FixCtrlBackspace_cmd.exe""", 0 'Must quote command if it has spaces; must escape quotes
  Set WshShell = Nothing