# This script takes 2 command line arguments, checks which is larger, subtracts the smaller number from the larger and prints the 
# difference. The numbers cannot be equal. Then, it takes the difference and subtracts 1 while printing the countdown.
# Example invocation: ./subtractMachine.sh 15 5, and it comes out to 10 and then counts down from 10.


#!/bin/bash
if [ "$1" -eq "$2" ]; then
	    echo "Wrong: Can't be the same number buddy."
	        exit 1
fi

if [ "$1" -gt "$2" ]; then
	difference=$(($1 - $2))
	echo "$1 is greater than $2"
else
	difference=$(($2 - $1))
	echo "$2 is greater than $1"
fi

echo "The difference between the numbers is $difference."

for ((i = difference; i > 0; i--)); do
	    echo "$i"
    done













