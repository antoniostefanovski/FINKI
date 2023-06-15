#Модификација на лабораториска вежба бр. 4
#Запишете ја содржината на сите фајлови од source folder во destination folder
#и притоа да имаат само големи букви во името и да завршуваат на .txt (пример: ASD.txt)
#Услов за да се префрлат е да бидат поголеми од Size даден како аргумент и
#да се совпаѓаат со денот и месецот исто дадени како аргументи на command line
#содржината треба да биде запишана во фајл во дестинацискиот фолдер кој ќе биде даден како аргумент
#ако истиот постои, тогаш го бришете...


#!/bin/bash

if [ $# -ne 6 ]
then
  echo "Help: <sourceFolder> <destinationFolder> <day> <month> <size> <file>"
fi

if [ ! -d "$1" ]
then
  echo "Non-existing folder"
  exit 1
fi

if [ -f "$2/$6" ]
then
  rm "$2/$6"
fi

for file in "${1}"/*.txt
do
  if [ -f "${file}" ]
  then
    size=$(ls -l "${file}" | awk '{print $6;}')
    month=$(ls -l "${file}" | awk '{print $7;}')
    day=$(ls -l "${file}" | awk '{print $8;}')
    filename=$(basename "$file")
    if [[ "$filename" =~ [A-Z]+.txt$ ]] && [ "$size" -ge "$5" ] && [ "$day" = "$3" ] && [ "$month" = "$4" ]
    then
      echo "File content transfer: ${filename} with size: ${size} day: ${day} and month: ${month}"
      cat "${file}" >> "${2}/${6}"
    fi
  fi
done
