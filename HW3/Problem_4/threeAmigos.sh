# This program takes 4 command line arguments, it adds the first 3 numbers, then runs my other program subtractMachine.sh where it turns 
# The sum from threeAmigos to the first arguement in subtractMachine.sh and the second argument for Subtract Machine is the 4th argument
# of three Amigos.
# Example invocation: ./threeAmigos 5 5 5 5 and then it runs and returns the subtractMachine.sh 15 5 answer from the previous problem.

#!/bin/bash
sum=$(($1+$2+$3))

echo "The sum of the first three numbers is $sum."

~/cpe422/HW3/Problem_3/subtractMachine.sh $sum $4










