# MariaDB

These are docker images for MariaDB database running on an
[Debian container](https://registry.hub.docker.com/u/webhippie/debian/).


## Usage

```
docker run -ti --name mariadb webhippie/mariadb:latest
```


## Versions

* [latest](https://github.com/dockhippie/mariadb/tree/master)
  available as ```webhippie/mariadb:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/mariadb/)


## Available environment variables

```bash
ENV MARIADB_MAX_CONNECTIONS 100
ENV MARIADB_CONNECT_TIMEOUT 5
ENV MARIADB_WAIT_TIMEOUT 600
ENV MARIADB_MAX_ALLOWED_PACKET 16M
ENV MARIADB_THREAD_CACHE_SIZE 128
ENV MARIADB_SORT_BUFFER_SIZE 4M
ENV MARIADB_BULK_INSERT_BUFFER_SIZE 16M
ENV MARIADB_TMP_TABLE_SIZE 32M
ENV MARIADB_MAX_HEAP_TABLE_SIZE 32M
ENV MARIADB_MYISAM_RECOVER BACKUP
ENV MARIADB_KEY_BUFFER_SIZE 128M
ENV MARIADB_OPEN_FILES_LIMIT 2000
ENV MARIADB_TABLE_OPEN_CACHE 400
ENV MARIADB_MYISAM_SORT_BUFFER_SIZE 512M
ENV MARIADB_CONCURRENT_INSERT 2
ENV MARIADB_READ_BUFFER_SIZE 2M
ENV MARIADB_READ_RND_BUFFER_SIZE 1M
ENV MARIADB_QUERY_CACHE_LIMIT 128K
ENV MARIADB_QUERY_CACHE_SIZE 64M
ENV MARIADB_QUERY_CACHE_TYPE ON
ENV MARIADB_LOG_WARNINGS 2
ENV MARIADB_SLOW_QUERY_LOG 0
ENV MARIADB_LONG_QUERY_TIME 10
ENV MARIADB_LOG_SLOW_RATE_LIMIT 50
ENV MARIADB_LOG_SLOW_VERBOSITY query_plan
ENV MARIADB_INNODB_BUFFER_POOL_SIZE 256M
ENV MARIADB_LOG_BUFFER_SIZE 8M
ENV MARIADB_FILE_PER_TABLE 1
ENV MARIADB_OPEN_FILES 400
ENV MARIADB_IO_CAPACITY 400
ENV MARIADB_FLUSH_METHOD O_DIRECT
ENV MARIADB_MAX_ALLOWED_PACKE 16M
ENV MARIADB_KEY_BUFFER 16M
ENV MARIADB_DEFAULT_CHARACTER_SET utf8
ENV MARIADB_CHARACTER_SET_SERVER utf8
ENV MARIADB_COLLATION_SERVER utf8_general_ci
```


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   commands  List all available sub commands
   create    Create a database and user
   grant     Grant database access
   remove    Drop a database and user
   revoke    Revoke database access
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)
* [Felix Böhm](https://github.com/felixboehm)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
