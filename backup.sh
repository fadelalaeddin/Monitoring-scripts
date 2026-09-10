#!/bin/bash

BACKUP_DIR="/backup"
SOURCE_DIR="/data"
DATE=$(date +%F)

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR"

echo "Backup completed: $BACKUP_DIR/backup_$DATE.tar.gz"

