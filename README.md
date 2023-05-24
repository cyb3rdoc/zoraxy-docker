# ZORAXY-DOCKER

Dockerized [Zoraxy](https://github.com/tobychui/zoraxy)

Zoraxy is a general purpose request (reverse) proxy and forwarding tool for low power devices, written in Go. This is only a docker containerized version of zoraxy.

## Build image using Dockerfile

Clone the repo to build your own image.

```
TIMESTAMP="$(date '+%Y%m%d-%H%M')"

docker build -t "${USER?}/zoraxy:${TIMESTAMP}" .
```

Run zoraxy docker container:
```
docker run -d --name zoraxy -v /path/to/zoraxy:/zoraxy your_username/zoraxy:YYYYMMDD-HHMM
```

Mount '/zoraxy' volume to store settings.

## Using docker-compose.yml

You can also use prebuilt image cyb3rdoc/zoraxy with docker-compose.yml.

```
version: '3.6'
services:
  zoraxy:
    container_name: zoraxy
    hostname: zoraxy
    image: cyb3rdoc/zoraxy:latest
    volumes:
      - /path/to/zoraxy:/zoraxy
    restart: unless-stopped

```

Supported Architecture: amd64, arm64, armv7

Credits: [Toby Chui](https://github.com/tobychui)
