#!/bin/bash
#create dir 
mkdir ~/test && {
  echo "catalog test was created successfully" >> ~/report
  datetime=$(date +"%d.%m.%y %H:%M:%S")
  touch ~/test/"$datetime"
}
#run ping
datetime=$(date +"%d.%m.%y %H:%M:%S")
ping -c 1 net_nikogo.ru || echo "$datetime host net_nikogo.ru unavailable" >>~/report
exit 0
