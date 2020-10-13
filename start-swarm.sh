#!/bin/bash

PWD=$(pwd)

echo '# Initializing swarm'
docker swarm init

echo '\n# Deploying computing stack'
docker stack deploy -c $PWD/stacks/computing.yml computing

echo '\n# eploying monitoring stack'
docker stack deploy -c $PWD/stacks/monitoring.yml monitoring
