#!/bin/bash
# Script: disable_users.sh
# Description: Disable a Linux user account securely
# Author: Grace Stephen

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

if [ $# -ne 1 ]; then
  echo "Usage: $0 username"
  exit 1
fi

USERNAME="$1"

if id "$USERNAME" &>/dev/null; then
  usermod -L "$USERNAME"
  chage -E0 "$USERNAME"
  echo "User '$USERNAME' has been disabled"
else
  echo "User '$USERNAME' does not exist"
  exit 1
fi

exit 0
