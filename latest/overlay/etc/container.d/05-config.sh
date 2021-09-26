#!/usr/bin/env bash

if [[ "${MARIADB_SKIP_TEMPLATES}" != "true" ]]; then
    echo "> writing mariadb config"
    gomplate -V \
        -o /etc/mysql/my.cnf \
        -f /etc/templates/my.cnf.tmpl || exit 1
fi

true
