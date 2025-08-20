#!/bin/bash

if [ $# -lt 4 ]; then
    echo "Usage: $0 <namespace> <postgres_user> <postgres_password> <postgres_db>"
    exit 1
fi

NAMESPACE=$1
POSTGRES_USER=$2
POSTGRES_PASSWORD=$3
POSTGRES_PASSWORD_BASE64=$(echo -n $POSTGRES_PASSWORD | base64)
POSTGRES_DB=$4

export NAMESPACE=$NAMESPACE
export POSTGRES_USER=$POSTGRES_USER
export POSTGRES_PASSWORD=$POSTGRES_PASSWORD
export POSTGRES_DB=$POSTGRES_DB
export POSTGRES_PASSWORD_BASE64=$POSTGRES_PASSWORD_BASE64

POSTGRES_SINGLE_YAML=./pg_single/pg-single.yaml

envsubst < $POSTGRES_SINGLE_YAML | kubectl apply -n "$NAMESPACE" -f -
