#!/bin/bash
docker run --name mariadb-dbtrail \
    --env MARIADB_ROOT_PASSWORD=my-secret-pw \
    --env MARIADB_USER=trailer \
    --env MARIADB_USER_PASSWORD=my-secret-pw2 \
    --env MARIADB_DATABASE=dbtrail \
    -d mariadb:12.3
