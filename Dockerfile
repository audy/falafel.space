#
# audy/falafel
#
# Based on overshard/minecraft (https://github.com/overshard/docker-minecraft)
#

FROM ubuntu:16.04

MAINTAINER Austin G. Davis-Richardson <harekrishna@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar /minecraft_server.jar

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
