

# Microservices Sample

### What is it?

"Microservices", a trending buzz word nowadays. What problems does it solve?

Many organizations nowadays are driving the technology migrations and one of the biggest challenges is to migrate from monolithic application to micro-services based application.

This mircoservices-sample project demonstrates how multiple services run independently leveraging on the best microservices patterns to enable scale, performance and resilience.

### Use case

The sample application has two services namely service-one and service-two. Each of the service has its own database service-one-db and service-two-db respectively. During the startup of the services, it persists the service name and an auto generated UUID in its perspective database and sends the data to the RabbitMQ exchange which then broadcasts the data to all the queues based on the routing key. Every microservices listens to its own RabbitMQ queue and keeps updating the database as and when it receives the data.

Below are the screens of the application.

![alt tag](https://github.com/microservices-sample/project-initializer/blob/master/documents/app-screens/_Web%20App/01.%20Home.png?raw=true)

Clicking on the tab's one or two the data that you see on the screen is based on the data fetched by the respective service by calling its database.

![alt tag](https://github.com/microservices-sample/project-initializer/blob/master/documents/app-screens/_Web%20App/02.%20One.png?raw=true)

Notice that the UUID generated for service-one which lies in service-one-db is in sync with service-two tab which is achieved by RabbitMQ (asychronous communication between microservices). 

![alt tag](https://github.com/microservices-sample/project-initializer/blob/master/documents/app-screens/_Web%20App/03.%20Two.png?raw=true)

### Service Registration

During the initialization of a service, it would get registered to the discovery and registration server (which in our example is Hashicorp's Consul).

![alt tag](https://github.com/microservices-sample/project-initializer/blob/master/documents/sequence-diagram/microservices-sample%20(service%20registration%20sequence).png?raw=true)

#### Service Discovery

 When one service (say api-gateway) needs to access a resource from another service (say service-one), all it has to do is ask discovery and registration server (Consul) to give one of the service-one's instance information.
 
![alt tag](https://github.com/microservices-sample/project-initializer/blob/master/documents/sequence-diagram/microservices-sample%20(service%20discovery%20sequence).png?raw=true)

### Architecture

Below is the architectural diagram for microservices sample project.

![alt tag](https://github.com/microservices-sample/project-initializer/blob/master/documents/architecture/Infrastructure.png?raw=true)

### Technology

Microservices sample project uses a number of open source projects to work properly:

* [SpringBoot] - Application framework
* [Zuul] - API Gateway (Load Balancer)
* [Consul] - Service registration and Discovery
* [Docker] - Containerization platform
* [RabbitMQ] - asynchronous microservices messaging.
* [Logstash] - Log collector
* [Elasticsearch] - Log indexer
* [Kibana] - Data visualization
* [Angular] - HTML enhanced for web apps!
* [Bootstrap] - great UI boilerplate for modern web apps
* [jQuery] - HTML document traversal and manipulation
* [Swagger] - API documentation

### Tools

* [Java] - Programming
* [Maven] - Build
* [Git] - Version control
* [Docker] - Deployment

### Development

Below are the steps to bring up the development environment and get started.

1) Install Git, Java, Maven and Docker</br>
2) Fork all the projects under https://github.com/microservices-sample/</br>
3) Clone the fork using https://github.com/{YOUR_GIT_ID}/project-initializer.git</br> 
4) Execute "cd /project-initializer/build/docker/scripts/"</br>
5) Based on your operating system either cd  mac or win folder</br>
6) Execute "./init.sh {YOUR_GIT_ID}" or "init.cmd {YOUR_GIT_ID}" which pulls all the depedent git repositories</br>
7) To deploy docker please run "./deploy.sh docker" or "deploy.cmd docker".</br>
8) Access the Application at http://localhost/</br></br>

### Evolution

To go through the complete evolution of this micro-services sample application refer branches version-1 till version-4 at https://github.com/vmudigal/microservices-sample

### Help

Feel free to reach "vijayendrap@gmail.com" incase of any concerns.

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job.)

   [Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [Angular]: <https://angular.io/>
   [SpringBoot]: <https://projects.spring.io/spring-boot/>
   [Consul]: <https://www.consul.io>
   [Docker]: <https://www.docker.com>
   [Zuul]: <https://github.com/Netflix/zuul/wiki>
   [Kitematic]: <https://kitematic.com>
   [Maven]: <https://maven.apache.org>
   [MySQL]: <https://www.mysql.com>
   [Git]: <https://git-scm.com>
   [Java]: <https://go.java>
   [Logstash]: <https://www.elastic.co/products/logstash>
   [Elasticsearch]: <https://www.elastic.co/products/elasticsearch>
   [Kibana]: <https://www.elastic.co/products/kibana>
   [RabbitMQ]: <https://www.rabbitmq.com/>
   [Swagger]: <https://swagger.io/>
   
