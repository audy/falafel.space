#!/bin/bash

# add this to your crontab:
# 0 5 * * * /root/backup-falafel.sh

set -euo pipefail

docker stop falafel

cd ~/falafel \
  && git add . \
  && git commit -am "automated update $(date)" \
  && git push origin master

docker start falafel
