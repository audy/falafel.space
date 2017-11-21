#!/bin/bash

set -euo pipefail

docker \
  run \
  -d \
  --name=mapcrafter \
  -v $PWD/render.conf:/render.conf:rw \
  -v $PWD/worlds:/worlds/:rw \
  -v $PWD/www:/www/:rw \
  topdockercat/mapcrafter

