# Linux System Administration Scripts

This repository contains a collection of Bash scripts designed to demonstrate practical Linux system administration skills. Each script can be run on Linux servers (tested on Ubuntu 22.04 LTS via WSL2) to perform real-world administrative tasks.

These scripts are part of a portfolio showcasing hands-on experience in:

- User account management
- Server health monitoring
- Log backup and rotation
- SSH security hardening

## Included Scripts

1. **User Access Management (`create_users.sh` & `disable_users.sh`)**
   - Automates creating and disabling Linux users
   - Sets temporary passwords for first login
   - Forces password change for security compliance
   - Allows specifying primary group per user

2. **Server Health Monitoring (`system_health_check.sh`)**
   - Checks CPU load, memory usage, disk usage, uptime
   - Shows top memory-consuming processes
   - Performs basic network connectivity check to a placeholder host
   - Helps troubleshoot server performance

3. **Log Backup & Rotation (`log_backup.sh`)**
   - Archives `/var/log` files to a timestamped backup directory
   - Removes backups older than 7 days automatically
   - Useful for routine maintenance and auditing

4. **SSH Security Hardening (`ssh_hardening.sh`)**
   - Backs up current SSH configuration
   - Disables root login via SSH
   - Disables password authentication to enforce key-based login
   - Restarts SSH service to apply changes

## How to Use

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/linux-admin-scripts.git
cd linux-admin-scripts

2. **Make scripts executable**

chmod +x *.sh

3. **Run the scripts with sudo where required**

sudo ./create_users.sh testuser
sudo ./disable_users.sh testuser
sudo ./system_health_check.sh
sudo ./log_backup.sh
sudo ./ssh_hardening.sh


# All scripts have been tested on WSL Ubuntu 22.04 LTS and include sample outputs.


Skills Demonstrated
- Bash scripting for Linux system administration
- User and group management
- Server monitoring and troubleshooting
- Log management and backup automation
- Security best practices (SSH hardening)

