#!/bin/bash

LOG_DIR="/var/log/myapp"
DAYS=7
# Delete log files older than 7 days

find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS" -exec rm -f {} \;

echo "Old log files deleted successfully."

