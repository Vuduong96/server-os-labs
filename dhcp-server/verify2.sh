#!/bin/bash
# Verify Step 2: INTERFACESv4 is set
grep -q 'INTERFACESv4="eth0"' /etc/default/isc-dhcp-server && echo "done" || echo "INTERFACESv4 not set correctly. Edit /etc/default/isc-dhcp-server and set INTERFACESv4=\"eth0\""
