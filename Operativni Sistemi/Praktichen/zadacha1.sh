#Напишете скрипта која во датотека loggedin.txt ќе го запише вкупното време во
#минути кое одреден корисник бил најавен на одредена дата во одреден месец.
#Корисничкото име треба да се проследи како прв аргумент, месецот како
#втор(само првите три букви) и датата како трет аргумент на скриптата. Доколку
#скриптата се повика со недоволен број на аргументи, да се испише упатство за
#користење и да се напушти програмата. На крајот да се испечати содржината на
#датотеката loggedin.txt .

#!/bin/bash

if [ $# -ne 3 ]
then
        echo "Help: <index> <month> <date>"
        exit 1
fi

IFS=$'\n'


#211137   pts/9        89.205.63.122    Thu Jun  1 09:42 - 12:47  (03:05)
#primer kako pechati ^

logged=`last | grep "${1}"`

total=0

for i in $logged
do
        minutes=`echo $i | awk '{print $10;}' | sed 's/[()]//gi' \
        | awk -F: '{print $1*60+$2;}'`
        month=`echo $i | awk '{print $5;}'`
        day=`echo $i | awk '{print $6;}'`
        if [ "$month" = "$2" -a "$day" = "$3" ]
        then
                total=`expr $total + $minutes`
        fi
done

echo $total >> zadachaTest.txt

cat zadachaTest.txt
