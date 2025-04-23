FROM alpine:3.21
MAINTAINER Grim Kriegor <grim@kriegor.net>

ENV VERSION 0.8.6-r0

RUN \
    apk update &&\
    apk add --no-cache xonotic-server=${VERSION}

EXPOSE 26000/tcp 26000/udp

VOLUME ["/data"]

ENTRYPOINT ["/usr/bin/xonotic-dedicated"]
