#!/bin/bash
# Check disk report file exists
[ -f /root/disk-report.txt ] && grep -q "Disk Usage Report" /root/disk-report.txt && echo "done" || echo "Disk report not found. Run the report creation commands in Step 4."
