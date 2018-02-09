#!/bin/bash
echo 'Starting Redis Cluster'
root='/';cd $root; cd ./redis-3.2.10/utils/create-cluster/; ./create-cluster start; cd $root;
echo 'Creating Redis Cluster'
cd ./redis-3.2.10/utils/create-cluster;printf 'yes' | ./create-cluster create; cd $root;
echo 'Disabling protected mode on master node 1'
cd ./redis-3.2.10/src; ./redis-cli -p 30001 CONFIG SET protected-mode no; cd $root;
echo 'Disabling protected mode on master node 2'
cd ./redis-3.2.10/src; ./redis-cli -p 30002 CONFIG SET protected-mode no; cd $root;
echo 'Disabling protected mode on master node 3'
cd ./redis-3.2.10/src; ./redis-cli -p 30003 CONFIG SET protected-mode no; cd $root;
echo 'FINSHED'