#!/bin/bash

. /opt/stackstorm/configs/zendesklite.config

TICKET=$1

ENDPOINT="https://$SUBDOMAIN.zendesk.com/api/v2/tickets/$TICKET"
CONTENT_TYPE="Content-Type:application/json"

AUTHANTICATION="Authorization:Basic $API_TOKEN"

RAW=$(curl --silent -X GET -H "$AUTHANTICATION" -H "$CONTENT_TYPE" "$ENDPOINT")

echo $RAW