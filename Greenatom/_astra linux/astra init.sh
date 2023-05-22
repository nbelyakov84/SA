#!/bin/bash
#Alpha version of astra linux workstation preparation script

# Check if the system time is accurate
if [ $(date +%s) -lt 1577836800 ]; then
    # Update system time
    sudo timedatectl set-timezone Europe/Moscow
    sudo ntpdate -s time.nist.gov
fi

echo System time was updated

# Update apt repositories
sudo apt update && apt upgrade -y

echo All packages was updated

# Open /etc/hostname in nano
sudo nano /etc/hostname

exit 