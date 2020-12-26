#!/bin/bash
#create crontab
./script04load.bash &
pidscript1=$!
renice -n 10 -p $pidscript1
./script04load.bash &
./script04load.bash &
pidscript3=$!
kill -9 $pidscript3
top -b -n1 | awk '{if ($12 == "script04load.ba") print;}'
exit 0
