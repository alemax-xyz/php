#!/bin/sh

chown -R $PUID:$PGID /var/lib/php/sessions /var/www || exit 2
