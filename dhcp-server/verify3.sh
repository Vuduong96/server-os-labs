#!/bin/bash
# Verify Step 3: dhcpd.conf has correct subnet configuration
grep -q "192.168.1.0" /etc/dhcp/dhcpd.conf && \
grep -q "192.168.1.100" /etc/dhcp/dhcpd.conf && \
grep -q "192.168.1.200" /etc/dhcp/dhcpd.conf && \
echo "done" || echo "Subnet not configured correctly. Check /etc/dhcp/dhcpd.conf has the correct subnet and range."
