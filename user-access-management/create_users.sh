#!/bin/bash
# Script: create_users.sh
# Description: Create Linux users with temporary password and force password change
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
TEMP_PASSWORD="Temp@123"   # Temporary password for first login

# Create group if it does not exist
if ! getent group "$GROUP" > /dev/null; then
  groupadd "$GROUP"
  echo "Group '$GROUP' created"
fi

# Create user if it does not exist
if id "$USERNAME" &>/dev/null; then
  echo "User '$USERNAME' already exists"
  exit 1
else
  useradd -m -g "$GROUP" -s /bin/bash "$USERNAME"
  echo "$USERNAME:$TEMP_PASSWORD" | chpasswd
  passwd -e "$USERNAME"
  echo "User '$USERNAME' created and added to group '$GROUP'"
  echo "Temporary password set. User must change password on first login."
fi

exit 0
