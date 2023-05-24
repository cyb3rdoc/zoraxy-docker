# Base image for building purposes
FROM docker.io/golang:alpine as builder
RUN apk --no-cache add git alpine-sdk
WORKDIR /zoraxy
ARG ZORAXY_BRANCH=main
# use caching layers as needed
RUN git clone -b ${ZORAXY_BRANCH} --single-branch --depth 1 https://github.com/tobychui/zoraxy ./
WORKDIR ./src/
RUN go mod tidy
RUN go build

# Alpine runtime
FROM docker.io/alpine:latest
LABEL author="cyb3rdoc" maintainer="cyb3rdoc@proton.me"
COPY --from=builder /zoraxy/src/zoraxy /usr/local/bin
WORKDIR /zoraxy
VOLUME [ "/zoraxy" ]
EXPOSE 8000
ENTRYPOINT [ "zoraxy", "-port=:8000" ]
