FROM alpine:3.21
MAINTAINER Grim Kriegor <grim@kriegor.net>

ENV VERSION 0.8.6

RUN \
    apk update &&\
    apk add --no-cache "xonotic-server~${VERSION}"

ADD server.cfg.example /etc/xonotic/server.cfg.example
ADD entrypoint.sh /

EXPOSE 26000/tcp 26000/udp

VOLUME ["/root/.xonotic/data"]

ENTRYPOINT ["/entrypoint.sh"]
