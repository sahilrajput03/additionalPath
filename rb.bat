@echo off
mkdir rb >nul 2>nul
xcopy C:\additionalPath\ReactBoilerplate rb /e /i /y >nul 2>nul
echo.
echo The far you go, less you know.
cd rb
mylinker && echo Starting React app && code .
:: cd ..