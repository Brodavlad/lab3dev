#!/bin/bash
#System date
date >> /var/log/sysinfo.log
#System info
w >> /var/log/sysinfo.log
#memory info, disk s-ace usage info
free -m >> /var/log/sysinfo.log
df -h >> /var/log/sysinfo.log
#TCP-connected programs (what's working now)
ss -tulpn | grep '^tcp' >> /var/log/sysinfo.log
#pinganuty ukr.net
ping -c2 ukr.net >> /var/log/sysinfo.log
#SUID list
find / -perm -4000 >> /var/log/sysinfo.log
#split line
echo "__________________" >> /var/log/sysinfo.log

