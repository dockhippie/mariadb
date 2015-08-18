FROM webhippie/debian:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xcbcb082a1bb943db && \
  echo deb http://ftp.osuosl.org/pub/mariadb/repo/10.0/debian/ wheezy main | tee /etc/apt/sources.list.d/mariadb.list && \
  { \
    echo 'Package: *'; \
    echo 'Pin: release o=MariaDB'; \
    echo 'Pin-Priority: 999'; \
  } > /etc/apt/preferences.d/mariadb && \
  groupadd -r mysql && \
  useradd -r -d /var/lib/mysql -g mysql mysql && \
  apt-get update && \
  apt-get install -y \
    mariadb-server \
    mariadb-client && \
  apt-get clean && \
  rm -rf /etc/mysql && \
  rm -rf /var/lib/mysql/* && \
  rm -rf /var/lib/apt/lists/*

ADD rootfs /
EXPOSE 3306

WORKDIR /root
CMD ["/usr/bin/s6-svscan","/etc/s6"]
