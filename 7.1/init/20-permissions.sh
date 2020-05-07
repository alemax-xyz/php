#!/bin/sh

test -z "$CHOWN" || chown -R $PUID:$PGID $CHOWN
