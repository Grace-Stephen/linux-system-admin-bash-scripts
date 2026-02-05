#!/bin/bash
# Script: create_users.sh
# Description: Create Linux users and assign groups securely
# Author: Grace Stephen

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

if [ $# -lt 1 ]; then
  echo "Usage: $0 username [group]"
  exit 1
fi

USERNAME="$1"
GROUP="${2:-$USERNAME}"

# Create group if it does not exist
if ! getent group "$GROUP" > /dev/null; then
  groupadd "$GROUP"
  echo "Group '$GROUP' created"
fi

# Create user
if id "$USERNAME" &>/dev/null; then
  echo "User '$USERNAME' already exists"
  exit 1
else
  useradd -m -g "$GROUP" -s /bin/bash "$USERNAME"
  passwd -e "$USERNAME"   # Force password change on first login
  echo "User '$USERNAME' created and added to group '$GROUP'"
fi

exit 0
