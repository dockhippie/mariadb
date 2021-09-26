#!/usr/bin/env bash

declare -x MARIADB_BACKUP_IGNORE
[[ -z "${MARIADB_BACKUP_IGNORE}" ]] && MARIADB_BACKUP_IGNORE="(mysql|information_schema|performance_schema|sys)"

declare -x MARIADB_BACKUP_PATH
[[ -z "${MARIADB_BACKUP_PATH}" ]] && MARIADB_BACKUP_PATH="/var/lib/backup"

declare -x MARIADB_BACKUP_RETENTION
[[ -z "${MARIADB_BACKUP_RETENTION}" ]] && MARIADB_BACKUP_RETENTION="14"

true
