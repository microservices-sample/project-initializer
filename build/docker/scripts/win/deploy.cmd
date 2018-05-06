@echo off

if "%1"=="" goto usage

:: Build all the modules
mvn -f ..\..\..\.. clean package && SET profile=%1 && docker-compose -f ..\..\docker-compose.yml up --build -d

:usage

@echo Usage:
 
@echo   Input Parameter: environment profile needed.
@echo   Example: deploy.cmd docker

exit /B 1