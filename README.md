# MariaDB

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/mariadb/status.svg)](https://cloud.drone.io/dockhippie/mariadb)
[![](https://images.microbadger.com/badges/image/webhippie/mariadb.svg)](https://microbadger.com/images/webhippie/mariadb "Get your own image badge on microbadger.com")

These are docker images for [MariaDB](https://mariadb.org) database running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/mariadb:latest`


## Volumes

* /etc/mysql/conf.d
* /var/lib/mysql
* /var/lib/backup


## Ports

* 3306


## Available environment variables

```bash
MARIADB_BINLOG_FORMAT = mixed
MARIADB_CHARACTER_SET_SERVER = utf8
MARIADB_COLLATION_SERVER = utf8_general_ci
MARIADB_DATABASE = # Optional
MARIADB_DEFAULT_CHARACTER_SET = utf8
MARIADB_INNODB_BUFFER_POOL_SIZE = 16M
MARIADB_INNODB_DATA_FILE_PATH = ibdata1:10M:autoextend
MARIADB_INNODB_FLUSH_LOG_AT_TRX_COMMIT = 1
MARIADB_INNODB_LOCK_WAIT_TIMEOUT = 50
MARIADB_INNODB_LOG_BUFFER_SIZE = 8M
MARIADB_INNODB_LOG_FILE_SIZE = 5M
MARIADB_INNODB_USE_NATIVE_AIO = 1
MARIADB_KEY_BUFFER_SIZE = 16M
MARIADB_KEY_BUFFER_SIZE = 20M
MARIADB_LOG_BIN = mysql-bin
MARIADB_MAX_ALLOWED_PACKET = 16M
MARIADB_MAX_ALLOWED_PACKET = 1M
MARIADB_MAX_CONNECTIONS = 151
MARIADB_MYISAM_SORT_BUFFER_SIZE = 8M
MARIADB_NET_BUFFER_SIZE = 8K
MARIADB_PASSWORD = # Optional
MARIADB_READ_BUFFER = 2M
MARIADB_READ_BUFFER_SIZE = 256K
MARIADB_READ_RND_BUFFER_SIZE = 512K
MARIADB_ROOT_PASSWORD = # Required
MARIADB_SERVER_ID = 1
MARIADB_SORT_BUFFER_SIZE = 20M
MARIADB_SORT_BUFFER_SIZE = 512K
MARIADB_TABLE_OPEN_CACHE = 64
MARIADB_USERNAME = # Optional
MARIADB_WRITE_BUFFER = 2M
```


## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
