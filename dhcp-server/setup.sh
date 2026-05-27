#!/bin/bash
# Background setup — runs silently before student starts
# Pre-update package lists so students don't wait long
apt-get update -qq
echo "Setup complete" > /root/.setup_done
