#!/bin/sh
for i in $(ls cases)
do
    echo ${i%.*}
done

