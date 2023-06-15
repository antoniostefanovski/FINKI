1. 
nano modifiedFiles.sh



modifiedFiles.sh

#!/bin/bash



find . -mtime -2 > modified.txt

pr=$(cat modified.txt)

echo $pr

2.
#!/bin/bash



sourceDir=$1

for file in "$sourceDir"/*.csv

do

filename=$(basename "$file")

if [[ "$filename" =~ [A-Z]+\.csv$ ]]

then

new_filename=`echo $filename | sed "s/\.csv/\.moved_csv/gi"`

mv $file "${2}/${new_filename}"

fi

done

3.
#!/bin/bash



if [ $# -lt 2 ]

then

echo "HELP: use 2 args"

fi



sourceDir=$1

totalSize=0

for file in "$sourceDir"/*.csv

do

filename=$(basename "$file")

if [[ "$filename" =~ [A-Z]+\.csv$ ]]

then

new_filename=`echo $filename | sed "s/\.csv/\.moved_csv/gi"`

mv $file "${2}/${new_filename}"

fileSize=`ls -l "${2}/${new_filename} | awk '{ print $6; }'`

totalSize=$((totalSize + fileSize))

fi

done



echo $totalSize
