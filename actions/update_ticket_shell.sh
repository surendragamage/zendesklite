#!/bin/bash

. /opt/stackstorm/configs/zendesklite.config

TICKET=$1
COMMENT=$2
STATUS=$3

BODY='{"ticket": {"status": "'$STATUS'", "comment": { "body": "'$COMMENT'" }}}'

ENDPOINT="https://$SUBDOMAIN.zendesk.com/api/v2/tickets/$TICKET"
CONTENT_TYPE="Content-Type:application/json"

AUTHANTICATION="Authorization:Basic $API_TOKEN"

RAW=$(curl --silent -X PUT -H "$AUTHANTICATION" -H "$CONTENT_TYPE" -d "$BODY" "$ENDPOINT")

echo $RAW