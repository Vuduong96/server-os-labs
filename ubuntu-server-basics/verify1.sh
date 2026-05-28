#!/bin/bash
# Check user webadmin exists and is in serverteam group
id webadmin &>/dev/null && groups webadmin | grep -q "serverteam" && echo "done" || echo "Make sure you created user 'webadmin' and added them to group 'serverteam'."
