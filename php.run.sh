#!/bin/bash
docker rm -f myphp
docker run --name myphp \
--network=mynetwork --ip 172.20.0.3 -p 9000:9000 \
-v "$HOME/docker/volume:/app" \
-d myphp 
