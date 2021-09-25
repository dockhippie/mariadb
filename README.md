# mariadb

[![Docker Build](https://github.com/dockhippie/mariadb/workflows/docker/badge.svg)](https://github.com/dockhippie/mariadb/actions?query=workflow%3Adocker) [![Readme Build](https://github.com/dockhippie/mariadb/workflows/readme/badge.svg)](https://github.com/dockhippie/mariadb/actions?query=workflow%3Areadme) [![Docker Size](https://img.shields.io/docker/image-size/webhippie/mariadb/latest)](#) [![Docker Pulls](https://img.shields.io/docker/pulls/webhippie/mariadb)](https://hub.docker.com/r/webhippie/mariadb) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/mariadb)

These are docker images for [MariaDB](https://mariadb.org) running on our [Alpine Linux image](https://github.com/dockhippie/alpine).

## Versions

For the available versions please look at [Docker Hub](https://hub.docker.com/r/webhippie/mariadb/tags) or [Quay](https://quay.io/repository/webhippie/mariadb?tab=tags) or check the existing folders within the [GitHub repository](https://github.com/dockhippie/mariadb).

## Volumes

* /var/lib/mysql
* /var/lib/backup
* /etc/mysql/conf.d
* /etc/mysql/init.d

## Ports

* 3306

## Available environment variables

```console
MARIADB_BINLOG_FORMAT = mixed
MARIADB_CHARACTER_SET_SERVER = utf8
MARIADB_COLLATION_SERVER = utf8_general_ci
MARIADB_DATABASE =
MARIADB_DEFAULT_CHARACTER_SET = utf8
MARIADB_INNODB_BUFFER_POOL_SIZE = 16M
MARIADB_INNODB_DATA_FILE_PATH = ibdata1:10M:autoextend
MARIADB_INNODB_FILE_PER_TABLE = ON
MARIADB_INNODB_FLUSH_LOG_AT_TRX_COMMIT = 1
MARIADB_INNODB_LOCK_WAIT_TIMEOUT = 50
MARIADB_INNODB_LOG_BUFFER_SIZE = 8M
MARIADB_INNODB_LOG_FILE_SIZE = 5M
MARIADB_INNODB_USE_NATIVE_AIO = 1
MARIADB_KEY_BUFFER_SIZE = 16M
MARIADB_LOG_BIN = 0
MARIADB_MAX_ALLOWED_PACKET = 1M
MARIADB_MAX_CONNECTIONS = 151
MARIADB_MYISAM_SORT_BUFFER_SIZE = 8M
MARIADB_NET_BUFFER_SIZE = 8K
MARIADB_PASSWORD =
MARIADB_READ_BUFFER = 2M
MARIADB_READ_BUFFER_SIZE = 256K
MARIADB_READ_RND_BUFFER_SIZE = 512K
MARIADB_ROOT_PASSWORD =
MARIADB_ROOT_USERNAME = root
MARIADB_SERVER_ID = 1
MARIADB_SKIP_CHOWN = false
MARIADB_SKIP_TEMPLATES = false
MARIADB_SORT_BUFFER_SIZE = 512K
MARIADB_TABLE_OPEN_CACHE = 64
MARIADB_USERNAME =
MARIADB_WRITE_BUFFER = 2M
```

## Inherited environment variables

*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
