#!/bin/bash
#script generator
while [ 1 ]
do
 read input
 case $input in
 "+")
   kill -USR1 $(cat pidprocess.tmp)
 ;;
 "*")
   kill -USR2 $(cat pidprocess.tmp)
 ;;
 "TERM")
   kill -SIGTERM $(cat pidprocess.tmp)
   break
 ;;
 *)
   :
 ;;
 esac
done
exit 0