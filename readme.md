# 🚀 falafel.space

A minecraft server

## Docker

```sh
# from this directory
./build.sh

./start.sh

# check status
docker logs falafel
```

## Upgrading

To upgrade the server to a new version of Minecraft:

1.) Stop the container: `docker stop falafel` and `docker rm falafel` (or
    rename the container)
2.) Edit `Dockerfile` to download the latest version by editing the `ADD` line
3.) Build a new image: `./build.sh`
4.) Start the server again: `./start.sh`
