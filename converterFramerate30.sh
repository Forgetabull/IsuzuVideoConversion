#!/bin/bash
echo "[$0] - Isuzu DivX Framerate 30 Converter - Processing [$1]"

FILES="$1/*.avi"

mkdir tmp
mkdir tmp/$1
for f in $FILES
do
#	filename="$f"; echo $filename; newfilename="tmp/$filename";  echo $newfilename; ffmpeg -i "$filename" -filter:v fps=30 <output>
#	filename="$f"; echo $filename; newfilename="tmp/$filename";  echo $newfilename; ffmpeg -i "$filename" -c:v mpeg4 -q:v 5 -tag:v DIVX -c:a libmp3lame -q:a 5 -ac 2 -ar 44100 "$newfilename"
#	filename="$f"; echo $filename; newfilename="tmp/$filename";  echo $newfilename; ffmpeg -i "$filename" -filter:v fps=30 -vf scale=-1:400 -c:v mpeg4 -q:v 5 -tag:v DIVX -c:a libmp3lame -q:a 5 -ac 2 -ar 44100 "$newfilename"

	filename="$f"; 
	newfilename="tmp/$filename";  
	echo "#################################################################";
	echo "Converting [$filename] to [$newfilename]";
	ffmpeg -i "$filename" -vf scale=-1:400,fps=24 -c:v mpeg4 -q:v 5 -tag:v DIVX -c:a libmp3lame -q:a 5 -ac 2 -ar 44100 "$newfilename"
done   

