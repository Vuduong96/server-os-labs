#!/bin/bash
# Verify Step 5: config syntax is valid
dhcpd -t -cf /etc/dhcp/dhcpd.conf 2>&1 | grep -q "Configuration file errors" && \
echo "Config has errors. Run: dhcpd -t -cf /etc/dhcp/dhcpd.conf to see details" || echo "done"
