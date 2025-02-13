@echo off
CLS
set currentpath=%cd%
echo "Starting automatic file installation by chocolatey"
echo "Script needs to run in admin mode"
ECHO.



@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey

REM basic apps
choco install %currentpath%\defaultapps.config   


:EOF
