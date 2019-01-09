FROM gcc:5.5.0
MAINTAINER AntonioCesar <jrcesar4@gmail.com>
COPY redis-3.2.10.tar.gz /
RUN apt-get moo
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get -y install tcl8.5 \
	gem
RUN tar -xzvf redis-3.2.10.tar.gz
RUN cd redis-3.2.10 && make install
COPY create-cluster /redis-3.2.10/utils/create-cluster
RUN chmod +rx /redis-3.2.10/utils/create-cluster/create-cluster
COPY startredis.sh /usr/bin
RUN chmod +x /usr/bin/startredis.sh
ENTRYPOINT startredis.sh && /bin/bash
EXPOSE 7000 7001 7002 7003 7004 7005