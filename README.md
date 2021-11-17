# Clustered REDIS in DOCKER container

## What is this project

#### This project is a Redis running in clustered mode inside a docker container. It's created based on a GCC (GNU C compiler) image with a full installation of Redis 3.2.10. After Redis installation, a cluster mode will start. 
#### The protected mode is disabled. This step is necessary to run Redis inside a container.
#### The project create 6 Redis nodes, being 3 master and 3 slaves. The masters nodes uses the 7000, 7001 and 7002 ports.

## How to work with this project

### There are 2 steps to be executed
* Create a docker image;
* Create and start a docker container based on image previous created

* Commands
	
	* Create Docker image:
		* __docker build -t rediscluster .__ (the dot means that Dockerfile is in the same directory where your are executing the command 'docker build').
		This command is necessary only once. After created, we dont need to recreate image anymore.
	
	* Create and start container based on image
		* __docker run --name REDISCLUSTER -td -p 7000:7000 -p 7001:7001 -p 7002:7002 rediscluster__
	
	* Stop container
		* __docker stop REDISCLUSTER__
	
	* Delete container
		* __docker rm REDISCLUSTER__
	
	* Delete image
		* __docker rmi -f rediscluster__
