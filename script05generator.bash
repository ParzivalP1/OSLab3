#!/bin/bash
#script generator
while [ 1 ]
do
 read input
 echo "$input"
 if [[ $input == "QUIT" ]]
 then	
  echo "You choose QUIT"
  exit 0
 fi
 if [[ $line =~ [0-9]+ && $line != "*" && ! $line != "+" ]]
  then
   echo "Incorrect choise"
   exit 1
 fi
done
exit 0