#!/bin/bash

set -euo pipefail

cd /data \
  && java \
    -server \
    -XX:+UseConcMarkSweepGC \
    -XX:+UseParNewGC \
    -XX:+CMSIncrementalPacing \
    -XX:ParallelGCThreads=2 \
    -XX:+AggressiveOpts \
    -Xms1536M \
    -Xmx1536M \
    -jar /minecraft_server.jar nogui
