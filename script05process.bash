#!/bin/bash
#run ./script05process.bash $ script05generator.bash 
#define default value
output=0
action='+'
while [ 1 ]
do
 read char
 case $char in
 '+')
    action='+'
    echo "you choose summation"
 ;;
 '*')
    action='*'
    echo "you choose multiplication"
 ;;
 [0-9]*)
    result=$output
    if [[ $action == '*' ]]
    then
     ((output=$output\*$char))
    else
     ((output=$output+$char))
    fi
    echo "$result $action $char = $output"
 ;;
 *)
    break
 ;;
 esac
done
