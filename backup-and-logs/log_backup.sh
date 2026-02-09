#!/bin/bash
# Script: log_backup.sh
# Description: Backup and rotate system log files
# Author: Grace Stephen

BACKUP_DIR="/tmp/log_backups"
LOG_DIR="/var/log"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p $BACKUP_DIR

echo "Backing up log files from $LOG_DIR to $BACKUP_DIR/log_backup_$TIMESTAMP.tar.gz..."
tar -czf $BACKUP_DIR/log_backup_$TIMESTAMP.tar.gz $LOG_DIR/*log

# Optional: remove backups older than 7 days
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

echo "Backup completed at $(date)"
echo "Backups older than 7 days removed"
