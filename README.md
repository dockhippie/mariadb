# mariadb

[![Docker Build](https://github.com/dockhippie/mariadb/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/mariadb/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/mariadb)

These are docker images for [MariaDB][upstream] running on our
[Alpine Linux image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /var/lib/mysql
*  /var/lib/backup
*  /etc/mysql/conf.d
*  /etc/mysql/init.d

## Ports

*  3306

## Available environment variables

```console
MARIADB_BACKUP_IGNORE = (mysql|information_schema|performance_schema|sys)
MARIADB_BACKUP_PATH = /var/lib/backup
MARIADB_BACKUP_RETENTION = 14
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
MARIADB_INNODB_READ_ONLY_COMPRESSED = ON
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
MARIADB_TRANSACTION_ISOLATION =
MARIADB_USERNAME =
MARIADB_WRITE_BUFFER = 2M
```

Extracted by the command: `grep -hE ': "\$\{(.*)\}"' latest/overlay/etc/entrypoint.d/*.sh | sed 's/: "\${//' | sed 's/:="/ = /' | sed 's/"}"$//' | sort | uniq`

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

[upstream]: https://mariadb.org
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/mariadb/tags
[quayio]: https://quay.io/repository/webhippie/mariadb?tab=tags
[github]: https://github.com/dockhippie/mariadb
