#!/bin/bash
echo "[$0] Process: [$1] Replace: [$2] With: [$3]"

FILES="$1/*.avi"
for f in $FILES
do
	stringToProcess="$f"
	stringToReplace="$2"
	secondToReplaceWith="$3"
	newFileName=`echo "${stringToProcess/$stringToReplace/$secondToReplaceWith}"`
	echo "[$f] [$newFileName]"
	mv "$f" "$newFileName"
done   
