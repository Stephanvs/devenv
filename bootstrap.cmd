@echo off
SET DIR=%~dp0%

ECHO Installing Chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

ECHO Executing setup script
@powershell -NoProfile -ExecutionPolicy unrestricted -Command ./setup.ps1

pause