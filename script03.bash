#!/bin/bash
#create crontab
echo "*/5 * * * 6 /home/user/lab3/script01.bash" | crontab
#check crontab
crontab -l
exit 0
