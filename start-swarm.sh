#!/bin/bash

PWD=$(pwd)

echo '# Initializing swarm'
docker swarm init

echo '\n# Deploying spark-cluster stack'
docker stack deploy -c $PWD/stacks/spark-cluster.yml spark_cluster
