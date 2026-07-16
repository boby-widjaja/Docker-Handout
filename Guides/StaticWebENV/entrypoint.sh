#!/bin/sh

envsubst '$NAME $JOB $DEPARTMENT' \
    < /usr/share/nginx/html/config.template.js \
    > /usr/share/nginx/html/config.js

exec nginx -g 'daemon off;'