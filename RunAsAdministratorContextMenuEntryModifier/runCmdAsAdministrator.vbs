Dim Arg, var1, var2
Set Arg = WScript.Arguments
var1 = Arg(0)
Set objShell = CreateObject("WScript.Shell")
objShell.Run "CMD /C START /B " & objShell.ExpandEnvironmentStrings("%SystemRoot%") & "\System32\WindowsPowerShell\v1.0\powershell.exe -windowstyle hidden -Command Start-Process cmd.exe -Verb RunAs -ArgumentList '/s,/k,pushd," & var1 & "'", 0, False
' Above is the 100% working code for open cmd with admin. COOL
' LEARN: Below line saves the path of current file to the variable scriptdir.
' scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

' LEARN: Below is the earlier version of the running script with defining %cd% as the parameter path(see in end of line) .
' objShell.Run "CMD /C START /B " & objShell.ExpandEnvironmentStrings("%SystemRoot%") & "\System32\WindowsPowerShell\v1.0\powershell.exe -windowstyle hidden -Command Start-Process cmd.exe -ArgumentList '/s,/k,pushd,%cd%' -Verb RunAs", 0, False
Set objShell = Nothing
' Note: I have removed %v from the above line, coz it was creating error like path cannot be specified in cmd. Yikes, that solved.
' LEARN: Below is the original earlier version which seemed to work but didn't work out actually coz I had to use argument value which I supply from the context menu as %V and access in this file using param1 ( var1 in line3).
' objShell.Run "CMD /C START /B " & objShell.ExpandEnvironmentStrings("%SystemRoot%") & "\System32\WindowsPowerShell\v1.0\powershell.exe -windowstyle hidden -Command Start-Process cmd.exe -ArgumentList '/s,/k,pushd,%V' -Verb RunAs", 0, False

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
' Resource for parameter utilization.
' http://www.itgeared.com/articles/1075-how-to-pass-parameters-to-vbscript/#:~:text=Use%20the%20WScript.,the%20parameters%20that%20were%20passed.&text=You%20can%20use%20the%20approach,to%20reuse%20your%20VBScript%20program.