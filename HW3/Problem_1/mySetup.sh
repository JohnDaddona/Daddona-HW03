# This code does 3 things, changes the frequency of the BBB, displays the info with the cpufreq-info command
# Then it takes how many things are in our home directory, lists what, then counts how many and stores it in items
# From there, we display everything we are doing.
#This takes NO COMMAND LINE ARGUMENTS
# Example invokaction: When in the home directory run mySetup.sh, no ./

#!/bin/bash

sudo cpufreq-set -f 600Mhz #super user sets the frequency of the BBB to 600Mhz

cpufreq-info #making a variable to hold the cpu data

echo "CPU Data: $(cpufreq-info)"  #echoing the cpuData to display it

location=/home/debian #setting location to /home/debian as instructed

echo $location #displaying the location

items=$(ls | wc -l) #using ls to list the items, wc -l counts lines outputs by ls and $(...) subs the output of the command inside
		    #to be assigned to the variable items.
echo "The number of items in the directory are: $items" #Printing the items


