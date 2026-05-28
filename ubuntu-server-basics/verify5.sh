#!/bin/bash
# Check SSH backup exists, config hardened, and key pair generated
[ -f /etc/ssh/sshd_config.backup ] && \
grep -q "PermitRootLogin no" /etc/ssh/sshd_config && \
[ -f /root/.ssh/lab_key ] && \
[ -f /root/.ssh/lab_key.pub ] && \
echo "done" || echo "Make sure you: backed up sshd_config, applied hardening settings, and generated the SSH key pair."
