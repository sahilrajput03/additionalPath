@echo off
FOR /F "tokens=*" %%a in ('git rev-parse --abbrev-ref HEAD') do SET thisbranch=%%a
echo on
git branch --set-upstream-to=origin/%thisbranch% %thisbranch%