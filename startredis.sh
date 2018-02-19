#!/bin/bash
echo 'Starting Redis Cluster'
root='/';cd $root; cd ./redis-3.2.10/utils/create-cluster/; ./create-cluster start; cd $root;
echo 'Creating Redis Cluster'
cd ./redis-3.2.10/utils/create-cluster;printf 'yes' | ./create-cluster create; cd $root;
for value in {1..3}
do
	echo 'Disabling protected mode on master node ' $value
	cd ./redis-3.2.10/src; ./redis-cli -p 3000$value CONFIG SET protected-mode no; cd $root;
done
echo 'FINSHED'