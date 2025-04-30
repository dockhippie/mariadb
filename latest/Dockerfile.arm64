FROM ghcr.io/dockhippie/alpine:latest-arm64@sha256:9fdcdd3efe1852092b4fdd728a67620d7e3c4c93145d2508ed8637a28d87c054

VOLUME ["/var/lib/mysql", "/var/lib/backup", "/etc/mysql/conf.d", "/etc/mysql/init.d"]
EXPOSE 3306

WORKDIR /var/lib/mysql
CMD ["/usr/bin/container"]

RUN apk update && \
  apk upgrade && \
  mkdir -p /var/lib/mysql && \
  groupadd -g 1000 mysql && \
  useradd -u 1000 -d /var/lib/mysql -g mysql -s /bin/bash -m mysql && \
  apk add mariadb mariadb-client mariadb-server-utils tzdata && \
  rm -rf /var/cache/apk/* /etc/mysql/* /etc/my.cnf* /var/lib/mysql/*

COPY ./overlay /
