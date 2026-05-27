#!/bin/bash
# Verify Step 1: isc-dhcp-server is installed
dpkg -l isc-dhcp-server | grep -q "^ii" && echo "done" || echo "isc-dhcp-server is not installed yet. Run: apt-get install -y isc-dhcp-server"
