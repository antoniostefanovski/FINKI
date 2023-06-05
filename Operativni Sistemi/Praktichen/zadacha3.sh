
#!/bin/bash


if [ $# -ne 3 ]
then
        echo "<denMinimum> <denMaximum> <destinacija>"
        exit 1
fi

if [ -d "$3" ]
then
        rm -r "${3}"
else
        echo "kreiraj"
        mkdir -p "${3}"
fi

IFS=$'\n'

x=$1
y=$2
destination=$3

counter=0

getFiles(){
        testiram=`ls -l | grep .txt`
        for item in $testiram
        do
                den=`echo $item | awk '{print $8;}'`
                if [ "$den" -gt "$x" -a "$den" -lt "$y" ]
                then
                        size=`echo $item | awk '{print $6;}'`
                        if [ "$size" -gt 150 ]
                        then
                                filename=`echo $item | awk '{print $10;}'`
                                howManyTimesEcho=`cat $filename | grep -o "echo" | wc -l` 
                                newfileName="211137_${howManyTimesEcho}.txt"
                                findAllTxtFiles "${newfileName}"
                                if [ "$counter" -gt 0 ]
                                then
                                         newfileName="211137_${howManyTimesEcho}${counter}.txt"
                                         cp "${filename}" "${destionation}/${newfileName}"
                                else
                                         cp "${filename}" "${3}/${newfileName}"
                                fi
                        fi
                fi
                done
}

findAllTxtFiles(){
        file=$1
        if [ -e "${destination}/${file}" ]
        then
                counter=`$counter + 1`
        fi
}

getFiles $@