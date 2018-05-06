@echo off

if "%1"=="" (

@echo Usage:
@echo   Input Parameter: git user name needed.
@echo   Example: init.cmd microservices-sample

exit /B 1

) ELSE (

:: Go to actual folder and clone dependent modules
cd ..\..\..\..\ && git clone https://github.com/%1/api-gateway.git && git clone https://github.com/%1/service-one.git && git clone https://github.com/%1/service-two.git && git clone https://github.com/%1/web-application.git && cd build\docker\scripts\win\

)