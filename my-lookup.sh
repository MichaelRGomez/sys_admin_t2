#!/bin/bash

#argument variables
FILE="$1"
LNAME="$2"

#checking if the arguments are null
if [ -z "$FILE" ] || [ -z "$LNAME" ]
then
	echo "you need to provide two arugments for this script."
	echo "Usage: my-loopup <file location> <last name>"
	exit 1
fi

echo "showing all the last names that match $LNAME in $FILE"
#file search
grep -P "(?i)^.* ($2)$" "$FILE"
echo "goodbye!"
