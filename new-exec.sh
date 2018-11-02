#!/bin/bash

if [ "$EXPOSE_ZT_CONTROLLER_API" = "yes" ] || \
    [ "$EXPOSE_ZT_CONTROLLER_API" = "true" ]; then
    nohup socat TCP4-LISTEN:9993,reuseaddr,fork TCP4:127.0.0.1:9993 >> socat.log 2>&1 &
fi

/usr/sbin/exec.sh
