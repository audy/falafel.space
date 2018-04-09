#!/bin/bash

set -euo pipefail

cd /data \
  && java \
    -server \
    -XX:+UseConcMarkSweepGC \
    -XX:+UseParNewGC \
    -XX:+CMSIncrementalPacing \
    -XX:ParallelGCThreads=4 \
    -XX:+AggressiveOpts \
    -Xms2048M \
    -Xmx2048M \
    -jar /minecraft_server.jar nogui
