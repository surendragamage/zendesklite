# StackStorm Zendesk Lite Pack

Offers basic Zendesk operations.

## Configuration

Copy the example configuration in [zendesklite.config.sample]
to `/opt/stackstorm/configs/zendesklite.config` and edit as required.

It must contain:

* ``token`` - Authentication Token from your Zendesk API.
* ``subdomain`` - Subdomain of your Zendesk API.

## Actions

* `create.ticket` - Creates Zendesk ticket.
    * `st2 run zendesklite.create.ticket subject="subject" description="description"`
* `update.ticket` - Update Zendesk ticket.
    * `st2 run zendesklite.update.ticket ticket="1234" comment="comment" status="open"`
* `get.ticket` - Get Zendesk ticket.
    * `st2 run zendesklite.get.ticket ticket="1234"`
