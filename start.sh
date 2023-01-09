#!/bin/sh

startcase()
{
    if [ ! -d log ]
    then
        mkdir log
    fi

    if [ ! -d log/$host ]
    then
        mkdir log/$host
    fi
    for i in $*
    do
        ./cases/$i.sh > log/$host/$i.log &
    done
}

while read line
do

    if echo $line | grep '='
    then
        export $line
    elif [ "o$line" = 'oall' ]
    then
        startcase $(./cases.sh)
    else
        startcase $line
    fi
done < event.conf
