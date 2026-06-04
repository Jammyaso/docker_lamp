#!/bin/bash
docker rm -f mynginx
docker run --name mynginx \
--network=mynetwork --ip 172.20.0.2 -p 8080:80 \
-v "$HOME/docker/volume:/app" \
-d mynginx 
