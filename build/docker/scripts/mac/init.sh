if [ $# == 0 ] 
then
	echo "Usage:
    
Input Parameters :
	1) Git user name needed as a parameter.
	example: './init.sh microservices-sample'"
	exit 1
fi

# Go to actual folder
cd ../../../../

# Clone dependent modules
echo Cloning API Gateway
git clone https://github.com/$1/api-gateway.git

echo Cloning Service One
git clone https://github.com/$1/service-one.git

echo Cloning Service Two
git clone https://github.com/$1/service-two.git

echo Cloning Web Application
git clone https://github.com/$1/web-application.git

cd build\docker\scripts\mac\

echo Dependent Projects Cloned