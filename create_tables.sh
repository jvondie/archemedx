#!/bin/bash

#Source env file to make connection parameters available
. ./.env

#Export PGPassword
export PGPASSWORD=$POSTGRES_PW

#Connect and run script
psql -U $POSTGRES_USER -d $POSTGRES_DB -h $POSTGRES_HOST -p $POSTGRES_PORT -f create_tables.psql