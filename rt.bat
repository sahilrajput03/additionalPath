@echo off
mkdir rt >nul 2>nul
xcopy C:\additionalPath\ReactBoilerplateTypescript rt /e /i /y >nul 2>nul
echo.
echo The far you go, less you know.
echo Beauty is in the eye of beholder.
echo.
echo It takes complete one minute to start your typescript react project.
echo Patience yields great things.
cd rt
start timer 1 minutes 2 seconds
mylinker && echo Starting React(typescript template) && npm start
:: cd ..