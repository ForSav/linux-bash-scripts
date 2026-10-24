#!/bin/bash

SOURCE_DIR="/etc"
BACKUP_DIR="/var/backups"

DATE=$(date +%Y-%m-%d_%H-%M)

mkdir -p $BACKUP_DIR

echo "Backup $SOURCE_DIR starts..."
tar -czf "$BACKUP_DIR/etc_backup_$DATE.tgz" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup $SOURCE_DIR created succesfully: $BACKUP_DIR/etc_backup_$DATE.tgz"
else
    echo "Error, backup not created"
fi

find "$BACKUP_DIR" -type f -name "*.tgz" -mtime +7 -delete


