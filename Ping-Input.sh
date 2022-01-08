#!/bin/bash
#*Author : Prince.Myshkin

#*"You should pass us by and forgive us our happiness," said the prince in a low voice!!!"
#*“Beauty will save the world"!!
########################################################################################################

#!"$@" is used for array
for var1 in "$@"; do
    echo "Pinging $var1"
    alive=$(ping -c2 $var1 | grep ^64 & )
    if [[ -n $alive ]]; then
        echo "The Node $var1 is Alive!!"
    elif [[ -z $alive ]]; then
        echo "The Node $var1 is offline"
    else
        echo "Something is Wrong!!!!"
    fi
done

#!Input Param Positional Argument
#!$# counts the number of positional argument

# if [[ $# < 3 ]]; then
#     echo "Three Parameters needed!"
# elif [[ $# > 3 ]]; then
#     echo "Too Much Params"
# else 
#     avr=$((($1 + $2 + $3)/3))
#     echo "The Average is: $avr"
#     echo "${!#} was the last param"
# fi
