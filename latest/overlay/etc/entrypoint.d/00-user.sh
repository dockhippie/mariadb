#!/usr/bin/env bash

declare -x PUID
[[ -z "${PUID}" ]] && PUID="1000"

declare -x PGID
[[ -z "${PGID}" ]] && PGID="1000"

true
