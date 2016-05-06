FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

WORKDIR /root
CMD ["/bin/s6-svscan", "/etc/s6"]

RUN apk update && \
  mkdir -p \
    /var/lib/mysql && \
  groupadd \
    -g 1000 \
    mysql && \
  useradd \
    -u 1000 \
    -d /var/lib/mysql \
    -g mysql \
    -s /bin/bash \
    -m \
    mysql && \
  apk add \
    mariadb \
    mariadb-client && \
  rm -rf \
    /var/cache/apk/* \
    /etc/mysql/* \
    /var/lib/mysql/*

ADD rootfs /
