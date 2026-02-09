#!/bin/bash
# Script: system_health_check.sh
# Description: Perform basic Linux server health checks
# Author: Grace Stephen

echo "=============================="
echo " Linux Server Health Check"
echo "=============================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Uptime:"
uptime -p

echo ""
echo "CPU Load (last 1, 5, 15 minutes):"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h | grep -E '^/dev/'

echo ""
echo "Top 5 Memory-Consuming Processes:"
ps aux --sort=-%mem | head -n 6

echo ""
echo "Network Connectivity Test (ping google.com):"
ping -c 2 google.com >/dev/null 2>&1 && echo "Network: OK" || echo "Network: FAILED"

echo ""
echo "Health check completed at: $(date)"
