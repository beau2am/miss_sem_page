#!/bin/bash

# Simple system information script


echo "System Information:"
echo "---------------------------"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime)"
echo "Current User: $(whoami)"
echo "Operating System: $(uname -s)"
echo "Kernel Version: $(uname -r)"
echo "IP Addresses: $(hostname)"
echo "Memory Usage: $(python3 ~/beaucode/mem_free.py)"
echo "Disk usage: $(df -h | grep '^/dev' | awk '{print $1 ": " $3 "/" $2}')"
echo "---------------------------"
