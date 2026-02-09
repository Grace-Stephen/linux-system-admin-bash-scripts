#!/bin/bash
# Script: ssh_hardening.sh
# Description: Apply basic SSH security hardening on Linux
# Author: Grace Stephen

SSH_CONFIG="/etc/ssh/sshd_config"

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

echo "Backing up current sshd_config..."
cp $SSH_CONFIG ${SSH_CONFIG}.bak_$(date +%Y%m%d_%H%M%S)

echo "Disabling root login via SSH..."
sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' $SSH_CONFIG

echo "Disabling password authentication (enforce key-based auth)..."
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' $SSH_CONFIG

echo "Restarting SSH service..."
systemctl restart ssh || service ssh restart

echo "SSH security hardening applied at $(date)"
