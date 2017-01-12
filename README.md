# MariaDB

[![](https://images.microbadger.com/badges/image/webhippie/mariadb.svg)](https://microbadger.com/images/webhippie/mariadb "Get your own image badge on microbadger.com")

These are docker images for [MariaDB](https://mariadb.org) database running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](https://github.com/dockhippie/mariadb/tree/master) available as ```webhippie/mariadb:latest``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/mariadb/)


## Volumes

* /etc/mysql/conf.d
* /var/lib/mysql
* /var/lib/backup


## Ports

* 3306


## Available environment variables

```bash
ENV MARIADB_ROOT_PASSWORD # Required
ENV MARIADB_USERNAME # Optional
ENV MARIADB_PASSWORD # Optional
ENV MARIADB_DATABASE # Optional
ENV MARIADB_DEFAULT_CHARACTER_SET utf8
ENV MARIADB_CHARACTER_SET_SERVER utf8
ENV MARIADB_COLLATION_SERVER utf8_general_ci
ENV MARIADB_KEY_BUFFER_SIZE 16M
ENV MARIADB_MAX_ALLOWED_PACKET 1M
ENV MARIADB_TABLE_OPEN_CACHE 64
ENV MARIADB_SORT_BUFFER_SIZE 512K
ENV MARIADB_NET_BUFFER_SIZE 8K
ENV MARIADB_READ_BUFFER_SIZE 256K
ENV MARIADB_READ_RND_BUFFER_SIZE 512K
ENV MARIADB_MYISAM_SORT_BUFFER_SIZE 8M
ENV MARIADB_LOG_BIN mysql-bin
ENV MARIADB_BINLOG_FORMAT mixed
ENV MARIADB_SERVER_ID 1
ENV MARIADB_INNODB_DATA_FILE_PATH ibdata1:10M:autoextend
ENV MARIADB_INNODB_BUFFER_POOL_SIZE 16M
ENV MARIADB_INNODB_LOG_FILE_SIZE 5M
ENV MARIADB_INNODB_LOG_BUFFER_SIZE 8M
ENV MARIADB_INNODB_FLUSH_LOG_AT_TRX_COMMIT 1
ENV MARIADB_INNODB_LOCK_WAIT_TIMEOUT 50
ENV MARIADB_MAX_ALLOWED_PACKET 16M
ENV MARIADB_KEY_BUFFER_SIZE 20M
ENV MARIADB_SORT_BUFFER_SIZE 20M
ENV MARIADB_READ_BUFFER 2M
ENV MARIADB_WRITE_BUFFER 2M
```


## Inherited environment variables

```bash
ENV CRON_ENABLED false
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
