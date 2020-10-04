@echo off
node C:\additionalPath\BetterNpmParallelLinker.js
REM Commands appended to this program cannot be appended like :
REM mylinker.bat
REM echo Coool!!
REM Above will not work.
REM ------------
REM Intead we should use -
REM mylinker.bat && echo Coooool....