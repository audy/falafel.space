#
# audy/falafel
#
# Based on overshard/minecraft (https://github.com/overshard/docker-minecraft)
#

FROM ubuntu:16.04

MAINTAINER Austin G. Davis-Richardson <harekrishna@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# 1.13.1
ADD https://launcher.mojang.com/mc/game/1.13.1/server/fe123682e9cb30031eae351764f653500b7396c9/server.jar /minecraft_server.jar

RUN apt-get update \
  && apt-get install -y \
    software-properties-common \
    curl \
    default-jre \
  && apt-get clean

WORKDIR /app
ADD entrypoint.sh .

EXPOSE 25565

VOLUME ["/data"]

CMD ["./entrypoint.sh"]
