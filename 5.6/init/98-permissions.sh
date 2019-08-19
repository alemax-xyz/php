#!/bin/sh

chown $PUID:$PGID /var/lib/php/sessions /var/www || exit 2
