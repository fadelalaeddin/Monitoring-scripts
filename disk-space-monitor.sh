#!/bin/bash

THRESHOLD=80
# Alert if disk usage is more than 80%.

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//') 
if [ "$USAGE" -ge $THRESHOLD ]; then

   echo "Disk usage is $USAGE%. Please check immediately!"

else

   echo "Disk usage is $USAGE%. All good."

fi
