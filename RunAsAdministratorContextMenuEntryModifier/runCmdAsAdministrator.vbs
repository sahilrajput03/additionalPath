Set objShell = CreateObject("WScript.Shell")
objShell.Run "CMD /C START /B " & objShell.ExpandEnvironmentStrings("%SystemRoot%") & "\System32\WindowsPowerShell\v1.0\powershell.exe -windowstyle hidden -Command Start-Process cmd.exe -ArgumentList '/s,/k,pushd,%V' -Verb RunAs", 0, False
Set objShell = Nothing

' My comments below ~ sahilrajput
' Original Snippet1
' src: https://stackoverflow.com/questions/16303150/how-can-i-run-a-powershell-script-as-a-background-task-without-displaying-a-wind
' Set objShell = CreateObject("WScript.Shell")
' objShell.Run "CMD /C START /B " & objShell.ExpandEnvironmentStrings("%SystemRoot%") & "\System32\WindowsPowerShell\v1.0\powershell.exe -file " , 0, False
' Set objShell = Nothing

' Original Snippet2
' PowerShell.exe -windowstyle hidden -Command "Start-Process cmd.exe -ArgumentList '/s,/k,pushd,%V' -Verb RunAs"

' Resource for escaping: 
' http://www.rlmueller.net/PowerShellEscape.htm#:~:text=The%20PowerShell%20escape%20character%20is,interactively%2C%20or%20running%20PowerShell%20scripts.