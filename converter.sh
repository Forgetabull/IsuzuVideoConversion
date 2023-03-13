#!/bin/bash
echo "[$0] - Isuzu DivX Converter - Processing [$1]"

FILES="$1/*.avi"

mkdir tmp
for f in $FILES
do
	echo "Processing [$f]"
	filename="$f"; echo $filename; newfilename="tmp/$filename";  echo $newfilename; ffmpeg -i "$filename" -c:v mpeg4 -q:v 5 -tag:v DIVX -c:a libmp3lame -q:a 5 -ac 2 -ar 44100 "$newfilename"
done   

