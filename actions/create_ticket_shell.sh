#!/bin/bash

. /opt/stackstorm/configs/zendesklite.config

SUBJ=$1
DESC=$2

TICKET='{"ticket": {"subject": "'$SUBJ'","description": "'$DESC'"}}'
ENDPOINT="https://$SUBDOMAIN.zendesk.com/api/v2/tickets"
CONTENT_TYPE="Content-Type:application/json"

AUTHANTICATION="Authorization:Basic $API_TOKEN"

RAW=$(curl -i --silent -X POST -H "$AUTHANTICATION" -H "$CONTENT_TYPE" -d "$TICKET" "$ENDPOINT")

echo '{"ticket_id": 43567}'