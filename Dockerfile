FROM ubuntu:18.04
MAINTAINER AntonioCesar <jrcesar4@gmail.com>
COPY redis-3.2.10.tar.gz /
RUN apt-get moo;
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential