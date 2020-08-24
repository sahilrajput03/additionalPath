:: @echo off
set myfolder=%cd%
set myDriveLetter=%CD:~0,2%
:: Above command saves first two letters of the %cd% output, i.e., d:, c: , etc
c:
cd C:\Users\chetan\AppData\Roaming\Code\User\snippets
git add . && git commit -m Updating.. && git push
%myDriveLetter%
:: Above command helps us to navigate back to original drive(this case is when we're executing this bat executtable from different drive than c drive).
cd %myfolder%