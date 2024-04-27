#!/bin/bash

# Create TUN device node
mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

/usr/bin/dumb-init node server.js
