#!/bin/bash

#prompt for a new directory name and read into variable
echo "Enter a new directory name: " 
read NEW_DIR

#store the name of the current directory
CURRENT_DIR=$(pwd)

# check to see if the new directory already exists
[[ -d $NEW_DIR ]] && echo $NEW_DIR already exists, aborting && exit

#if no directory exists create one
mkdir $NEW_DIR

#change to the new directory
cd $NEW_DIR
#display the location
echo "Just created: " $(pwd)

#using touch create several empty files
for n in 1 2 3 4
do
	touch file$n
done

echo "Check out all the stuff we put in here!"

ls file?

#put content into file using echo and redirection

for names in file?
do
	echo "This file is named" $names > $names
done

#display their content using cat

echo "And there is stuff in the stuff!!"

cat file?

#say goodbye
echo "Goodbye. We were never here."
echo "Deleting........."

#clean up
cd $CURRENT_DIR
rm -rf $NEW_DIR

