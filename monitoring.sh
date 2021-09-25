#!/bin/bash

# The architecture of your operating system and its kernel version
echo -n "#Arquiteture: "
uname -snrvmo

# The number of physical processors
echo -n "#CPU physical : "
grep physical.id /proc/cpuinfo | sort -u | wc -l

# The number of virtual processors
echo -n "#vCPU : "
cat /proc/cpuinfo | grep processor | wc -l

# The current available RAM on your server and its utilization rate as a percentage
echo -n "#Memory Usage: "
free -m | awk 'NR == 2 {printf("%d/%dMB (%.2f%%)\n"), $2, ($3 - 1), ($3 - 1)/$2*100}'

# The current available memory on your server and its utilization rate as a percentage
echo -n "#Disk Usage: "
df -h | awk '$NF=="/"{printf("%d/%dGB (%s)\n"), $3, $2, $5}'

# The current utilization rate of your processors as a percentage
echo -n "#CPU load: "
top -b -n1 | grep ^%Cpu | awk '{printf("%.2f%%\n"), 100-&8}'

# The date and time of the last reboot
echo -n "Last boot: "
who -b | awk '{printf("%s %s\n"), $3, $4}'

# Whether LVM is active or not
echo -n "#LVM use: "
if lsblk | grep -q "lvm";then echo "yes";else echo "no";fi

# The number of active connections
echo -n "#Connexions TCP : "
ss -s | awk 'NR == 7{printf("%d ESTABLISHED\n"), $3}'

# The number of users using the server
echo -n "#User log: "
users | wc -w

# The IPv4 address of your server and its MAC (Media Access Control) address
echo -n "#Network: "
echo -n "IP " && hostname -I | grep "." | awk '{print $1}' | tr '\n' ' ' && ip link | grep "link/ether" | awk '{printf("(%s)\n"), $2}'

# The number of commands executed with the sudo program
echo -n "#Sudo : "
cat /var/log/sudo.log | wc -l | tr '\n' ' ' && echo "cmd"
