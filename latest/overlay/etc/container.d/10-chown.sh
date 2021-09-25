#!/usr/bin/env bash

if [[ "${MARIADB_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown data directory"
    find /var/lib/mysql \( \! -user mysql -o \! -group mysql \) -print0 | xargs -0 -r chown mysql:mysql
fi

true
