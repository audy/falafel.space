#!/bin/bash

docker run \
  --publish 25565:25565 \
  --volume $PWD/falafel:/data \
  --detach \
  --name falafel \
  --restart always \
  audy/falafelspace
