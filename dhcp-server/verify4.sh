#!/bin/bash
# Verify Step 4: service is running and enabled
systemctl is-active isc-dhcp-server | grep -q "active" && \
systemctl is-enabled isc-dhcp-server | grep -q "enabled" && \
echo "done" || echo "DHCP service is not running or not enabled. Run: systemctl start isc-dhcp-server && systemctl enable isc-dhcp-server"
