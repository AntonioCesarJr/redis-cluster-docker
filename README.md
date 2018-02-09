# Clustered REDIS in container DOCKER

## What is this project
	* This project is a Redis running in cluster mode inside a docker container. It's createed based in  a Linux Ubuntu 16.04 image with a complety installation of Redis 3.2.10. After install Redis, this container starts a cluster mode using scripts that comes with complety installation of Redis. After Redis initialization in cluster rmode,  the protected mode it's disabled. This step ins necessary to run Redis inside a docker container. 

## How to work with this project

### There are three steps to be executed
* Create a docker image;
* Create and to start a docker container based on image previous created
* Execute Redis startup.

* Commands
	* Create Docker image:
		* __docker build -t rediscluster .__ (the dot means that Dockerfile is in the same directory where your are executing the command 'docker build').
		This command is necessary only once. After created, we dont need to recriate image anymore.
	* Create and start container based on image
		* __docker run --name REDISCLUSTER -td -p 30001:30001 -p 30002:30002 -p 30003:30003 rediscluster__
	* Stop container
		* __docker stop REDISCLUSTER__
	* Delete container
		* __docker rm REDISCLUSTER__
	* Delete image
		* __docker rmi -f rediscluster__