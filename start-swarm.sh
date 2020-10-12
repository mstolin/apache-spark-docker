#!/bin/bash

echo '# Initializing swarm'
docker swarm init
echo '# Deploying computing stack'
docker stack deploy -c ./stacks/computing.yml computing
echo '# eploying monitoring stack'
docker stack deploy -c ./stacks/monitoring.yml monitoring
