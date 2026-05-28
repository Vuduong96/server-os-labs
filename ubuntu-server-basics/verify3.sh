#!/bin/bash
# Check apache2 is running and enabled
systemctl is-active apache2 | grep -q "active" && \
systemctl is-enabled apache2 | grep -q "enabled" && \
echo "done" || echo "Apache2 is not running or not enabled. Run: systemctl start apache2 && systemctl enable apache2"
