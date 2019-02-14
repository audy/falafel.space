#
# audy/falafel
#
# Based on overshard/minecraft (https://github.com/overshard/docker-minecraft)
#

FROM ubuntu:16.04

MAINTAINER Austin G. Davis-Richardson <harekrishna@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt-get install -y \
    software-properties-common \
    curl \
    default-jre \
  && apt-get clean

# 1.13.2
ADD https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar /minecraft_server.jar

WORKDIR /app
ADD entrypoint.sh .

EXPOSE 25565

VOLUME ["/data"]

CMD ["./entrypoint.sh"]
