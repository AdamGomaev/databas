#!/usr/bin/env bash

set -e

target="skolan"

mysql -udbwebb skolan < example/sql/inspect/setup_$target.sql
mysql -udbwebb skolan < me/skolan/$target.sql

echo "SHOW TABLES;"
mysql -udbwebb -t -e "SHOW TABLES;" $target
