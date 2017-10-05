#!/bin/sh
/usr/bin/tor -f /tor-data/torrc &
su-exec znc:znc /usr/bin/proxychains /opt/znc/bin/znc --foreground --datadir "$DATADIR" "$@"
