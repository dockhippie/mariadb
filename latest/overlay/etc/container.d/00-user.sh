#!/usr/bin/env bash

if [[ ! "$(id -g mysql)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} mysql
fi

if [[ ! "$(id -u mysql)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} mysql
fi

true
