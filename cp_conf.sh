#!/bin/zsh 

while read  x 
do
    SRC=$(echo $x | awk -F ';' '{print $2}')
    DEST=$(echo $x | awk -F ';' '{print $1}')
    cp $SRC ~/backup_conf/$DEST.sauv
done < rc_list.csv
