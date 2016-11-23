#!/bin/bash

docker run \
  --publish 25565:25565 \
  --volume $PWD/falafel:/data \
  --detach \
  --name falafel \
  audy/falafelspace
