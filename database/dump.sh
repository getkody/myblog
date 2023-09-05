#!/bin/sh

# This script dumps the current state of the database into database/dump.sql
# 
# dump.sql contains all of the statements necessary to rebuild the database.
#
# Usage:
#
# bash database/dump.sh

DIR=$(dirname "$0")

docker exec postgres pg_dump --username postgres --inserts > $DIR/dump.sql
