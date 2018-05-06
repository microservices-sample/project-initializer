@echo off
FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker stop %%i && docker rm %%i

:: Remove dangling volumes and images in case of disk full

:: Uncomment below line if you need to remove all the local images.
::FOR /f "tokens=*" %%i IN ('docker images --format "{{.ID}}"') DO docker rmi %%i