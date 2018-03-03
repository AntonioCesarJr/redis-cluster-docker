# Clustered REDIS in DOCKER container

## What is this project

#### This project is a Redis running in cluster mode inside a docker container. It's created based on a Linux Ubuntu 16.04 image with a full installation of Redis 3.2.10. After install Redis, this container starts a cluster mode using scripts that comes with a full installation of Redis. After Redis initialization in cluster mode,  the protected mode is disabled. This step is necessary to run Redis inside a container.
#### The project create 6 Redis nodes, being 3 master and 3 slaves. The masters nodes uses the 30001, 30002 and 30003 ports.

## How to work with this project

### There are 2 steps to be executed
* Create a docker image;
* Create and start a docker container based on image previous created

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