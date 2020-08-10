:: This global executable alerts me when the command gets finished irrespective of the failure/success of the command.
@echo off
if "%~1"=="" (
    echo TESTING::Please provide some parameters.
) else (
    echo TESTING::Phase- Parameters: %*
    (%* && alert) || alert
)