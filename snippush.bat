@echo off
set myfolder=%cd%
cd C:\Users\chetan\AppData\Roaming\Code\User\snippets
git add . && git commit -m Updating.. && git push
cd %myfolder%