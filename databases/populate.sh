#!/bin/bash

set_from_env=" \
    set @sbake_hostname := $SBAKE_HOSTNAME, \
        @sbake_database := $SBAKE_DATABASE, \
        @sbake_username := $SBAKE_USERNAME, \
        @sbake_password := $SBAKE_PASSWORD; \
"

echo $set_from_env | cat - user.sql   | mysql 2> /dev/null
echo $set_from_env | cat - schema.sql | mysql 2> /dev/null
mysql $SBAKE_DATABASE
