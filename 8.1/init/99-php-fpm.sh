#!/bin/sh

trap 'kill -TERM $PID; wait $PID' INT
php-fpm -F &
PID=$!
wait $PID
