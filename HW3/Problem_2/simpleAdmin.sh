# This script will take 4 command line arguements and create a directory in the current working directory using the first argument as the name
# Then using the second command arguement makes a subdirectory within the first directory with the second arguement as the name
# Then using the third argument names and creates a text file within the subdirectory
# Finally the fourth arguement creates a soft link in the sub-directory and uses the arguement as the name
# We then display all steps using echo to ensure things are done correctly

#!/bin/bash
echo -e "Creating directory: $1..........."
mkdir "$1"
echo "finished"

echo -e "Creating sub-directory: $2..........."
mkdir "$1/$2"
echo "finished"

echo -e "Creating file: $3 in $1/$2 and putting 'Hello World'..........."
echo "Hello World!" > $1/$2/$3
echo "finished"

echo -e "Creating Soft link: $4 pointing to $1/$2/$3"
ln -s $1/$2 $4

echo "All tasks finished!"

