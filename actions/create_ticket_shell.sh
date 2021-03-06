#!/bin/bash

. /opt/stackstorm/configs/zendesklite.config

SUBJ=$1
DESC=$2
STATUS=$3
TYPE=$4
PRIORITY=$5

TICKET='{"ticket": {"subject": "'$SUBJ'","description": "'$DESC'","status":"'$STATUS'","type":"'$TYPE'","priority":"'$PRIORITY'"}}'
ENDPOINT="https://$SUBDOMAIN.zendesk.com/api/v2/tickets"
CONTENT_TYPE="Content-Type:application/json"

AUTHANTICATION="Authorization:Basic $API_TOKEN"

RAW=$(curl --silent -X POST -H "$AUTHANTICATION" -H "$CONTENT_TYPE" -d "$TICKET" "$ENDPOINT")

echo $RAW