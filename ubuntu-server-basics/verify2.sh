#!/bin/bash
# Check permissions on config.conf (640) and deploy.sh (750)
CONF=$(stat -c "%a" /srv/serverteam/config.conf 2>/dev/null)
SCRIPT=$(stat -c "%a" /srv/serverteam/deploy.sh 2>/dev/null)
[ "$CONF" = "640" ] && [ "$SCRIPT" = "750" ] && echo "done" || echo "Permissions not correct. config.conf should be 640 and deploy.sh should be 750."
