#!/bin/bash

if [ "$EXPOSE_ZT_CONTROLLER_API" = "yes" ] || \
    [ "$EXPOSE_ZT_CONTROLLER_API" = "true" ]; then
    mkdir -p /var/log/socat
    nohup socat TCP4-LISTEN:9993,reuseaddr,fork TCP4:127.0.0.1:9993 >> /var/log/socat/zt-controller-api.log 2>&1 &
fi

/usr/sbin/exec.sh
