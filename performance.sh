#!/bin/sh
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'


## how to pull CPU,MEMORY, DISK usage on all server from ANSIBLE
## how to copy
## git download the sh file 
##  scp ./performance.sh passwordlessuser@node:~
## ansible command "ansible -nodes -a ".performance.sh"
