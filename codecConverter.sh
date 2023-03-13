#!/bin/bash
echo "[$0] - Codec Copier mp4/m4v to avi - Processing [$1]"

FILES="$1/*.mp4"

for f in $FILES
do
	dt=$(date '+%d/%m/%Y %H:%M:%S');
	echo "[$dt] Processing [$f]"
	filename="$f"; echo $filename; newfilename="${filename%%.mp4}.avi";  echo $newfilename; ffmpeg -i "$filename" -codec copy "$newfilename"
done   

FILES="$1/*.mkv"

for f in $FILES
do
	dt=$(date '+%d/%m/%Y %H:%M:%S');
	echo "[$dt] Processing [$f]"
	filename="$f"; echo $filename; newfilename="${filename%%.mkv}.avi";  echo $newfilename; ffmpeg -i "$filename" -codec copy  -bsf:v h264_mp4toannexb "$newfilename"
done   

echo "[$0] Done."
