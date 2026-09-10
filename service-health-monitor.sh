#!/bin/bash

SERVICE_NAME="nginx"

if systemctl is-active --quiet SERVICE_NAME; then
echo "$SERVICE_NAME is running."

else

echo "$SERVICE_NAME is not running. Restarting..." 
systemctl start $SERVICE_NAME 
echo "$SERVICE_NAME restarted successfully."

fi
