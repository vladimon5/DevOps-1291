#!/bin/bash

# Show OS version
echo "OS Version:"
cat /etc/os-release

echo "---------------------------------"

# List all users with bash shell
echo "Users with Bash shell:"
awk -F: '/bash$/ {print $1}' /etc/passwd

echo "---------------------------------"

# Show open ports
echo "Open Ports:"
sudo netstat -tuln | grep LISTEN

echo "---------------------------------"

