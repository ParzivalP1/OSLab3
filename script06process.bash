#!/bin/bash
#run ./script06process.bash $ script06generator.bash 
#
echo $$ > pidprocess.tmp
output=0
action=""
while true
do
  trap 'sigterm' SIGTERM
  trap 'usr1' USR1
  trap 'usr2' USR2
  sigterm(){
	echo "You choose QUIT"
	rm pidprocess.tmp
	exit 0
   }
  usr1(){
	action="+"
  }
  usr2(){
	action="*"
  }

  case $action in
  "+")
     output=$((output+2))
  ;;
  "*")
     output=$((output*2))
  ;;
  esac
  echo $output
  sleep 1
done
