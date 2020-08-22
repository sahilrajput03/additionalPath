mkdir rf >nul 2>nul
xcopy C:\additionalPath\ReactFastRefreshBoilerplate rf /e /i /y >nul 2>nul
:: git clone https://github.com/sahilrajput03/react-fast-refresh-boilerplate rf
cd rf
rmdir /q /s .git >nul 2> nul
mylinker && echo. && echo Delted .git folder in rf && echo. && echo Happy Coding with fast refresh && echo. && echo         ~There's no reason for delay in deliverying output from the program, when you are making softwares.