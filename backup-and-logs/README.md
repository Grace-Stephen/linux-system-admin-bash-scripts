# Log Backup & Rotation – Bash Script

This script automates the backup of system log files and manages old backups for Linux servers.

## What the Script Does

- Archives log files in `/var/log` to `/tmp/log_backups`
- Creates timestamped backups
- Removes backups older than 7 days automatically

## Use Cases

- Routine server maintenance
- Log retention management
- Automated backups for auditing and troubleshooting

## How to Run

```bash
chmod +x log_backup.sh
sudo ./log_backup.sh

### log_backup.sh Sample Output when the script was executed
