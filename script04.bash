#!/bin/bash
#create crontab
./script04load.bash &
pidscript1=$!
renice -n 10 -p $pidscript1
./script04load.bash &
./script04load.bash &
pidscript3=$!
kill -9 $pidscript3
exit 0
