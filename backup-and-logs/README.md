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
sudo ./log_backup.sh
Backing up log files from /var/log to /tmp/log_backups/log_backup_20260209_140506.tar.gz...
tar: Removing leading `/' from member names
tar: Removing leading `/' from hard link targets
Backup completed at Mon Feb  9 14:05:06 WAT 2026
Backups older than 7 days removed