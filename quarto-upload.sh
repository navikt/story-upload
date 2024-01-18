#!/bin/bash
set -e

QUARTO_ID=$1
DIR="/github/workspace/${2}"
TEAM_TOKEN=$3
ENV=$4
PUBLIC=$5
BATCH_SIZE=$6

if [[ $ENV == "dev" ]]
then
    HOST="data.ekstern.dev.nav.no"
elif [[ $ENV == "prod" ]]
then
    HOST="data.nav.no"
else
    echo "invalid environment, must be dev or prod"
    exit 1
fi

knatch ${QUARTO_ID} ${DIR} ${TEAM_TOKEN} --host ${HOST} --batch-size ${BATCH_SIZE}
