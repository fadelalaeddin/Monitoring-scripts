#!/bin/bash

USERNAME="$1"

if [ -z "$USERNAME" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

useradd "$USERNAME"

echo "$USERNAME:Welcome123" | chpasswd

usermod -aG sudo "$USERNAME"

echo "User $USERNAME created and added to sudo group."

