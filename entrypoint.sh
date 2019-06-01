#!/usr/bin/env sh
set -e

# Sync periodically
until false
do
   /usr/bin/curl -fsS --retry 3 ${HEALTHCHECK_URL} > /dev/null
   sleep ${SLEEP_INTERVAL}
done
