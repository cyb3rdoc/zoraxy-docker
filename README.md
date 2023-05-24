# ZORAXY-DOCKER

[![Repo](https://img.shields.io/badge/Docker-Repo-007EC6?labelColor-555555&color-007EC6&logo=docker&logoColor=fff&style=flat-square)](https://hub.docker.com/r/cyb3rdoc/zoraxy)
[![Version](https://img.shields.io/docker/v/cyb3rdoc/zoraxy/latest?labelColor-555555&color-007EC6&style=flat-square)](https://hub.docker.com/r/cyb3rdoc/zoraxy)
[![Size](https://img.shields.io/docker/image-size/cyb3rdoc/zoraxy/latest?sort=semver&labelColor-555555&color-007EC6&style=flat-square)](https://hub.docker.com/r/cyb3rdoc/zoraxy)
[![Pulls](https://img.shields.io/docker/pulls/cyb3rdoc/zoraxy?labelColor-555555&color-007EC6&style=flat-square)](https://hub.docker.com/r/cyb3rdoc/zoraxy)

Dockerized [Zoraxy](https://github.com/tobychui/zoraxy)

Zoraxy is a general purpose request (reverse) proxy and forwarding tool for low power devices, written in Go. This is only a docker containerized version of zoraxy.

Mount '/zoraxy' volume to store settings.

### Supported Architecture: amd64, arm64, armv7

## Using prebuilt image cyb3rdoc/zoraxy
```
docker run -d --name zoraxy -p 8000:8000 -v /path/to/zoraxy:/zoraxy cyb3rdoc/zoraxy:latest
```

## Using docker-compose.yml
```
version: '3.6'
services:
  zoraxy:
    container_name: zoraxy
    hostname: zoraxy
    image: cyb3rdoc/zoraxy:latest
    ports:
      - 8000:8000
    volumes:
      - /path/to/zoraxy:/zoraxy
    restart: unless-stopped

```

## Build your own image using Dockerfile

Clone the repo to build your own image.

```
TIMESTAMP="$(date '+%Y%m%d-%H%M')"

docker build -t "${USER?}/zoraxy:${TIMESTAMP}" .
```

Run zoraxy docker container:
```
docker run -d --name zoraxy -p 8000:8000 -v /path/to/zoraxy:/zoraxy your_username/zoraxy:YYYYMMDD-HHMM
```

Credits: [Toby Chui](https://github.com/tobychui)
