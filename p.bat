@echo off
:: DemoCommand  FOR /F "tokens=*" %%a in ('echo sahilrajput03') do SET OUTPUT=%%a
:: %%a if when we use for loop in .cmd or .bat file, otherwise in cli, we can use %a only.
FOR /F "tokens=*" %%a in ('git rev-parse --abbrev-ref HEAD') do SET thisbranch=%%a
echo on
git push -u origin %thisbranch%