#!/usr/bin/env bash
docker run --name docker_server -d -p8153:8153 gocd/gocd-server:v22.1.0
cd docker-gocd-agent
docker build -t docker-gocd-agent .
cd ../
docker run -d -e GO_SERVER_URL=http://$(docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' docker_server):8153/go docker-gocd-agent
