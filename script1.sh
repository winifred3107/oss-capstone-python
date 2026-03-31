#!/bin/bash
# Script 1: System Identity Report
# Purpose: Displays system and user information

echo "--- OSS Project: System Identity ---"
echo "Date and Time: $(date)"
echo "Current User: $USER"
echo "Hostname: $HOSTNAME"
echo "Linux Distribution:"
lsb_release -d | cut -f2
echo "Kernel Version: $(uname -r)"
echo "System Uptime: $(uptime -p)"
echo "------------------------------------"
