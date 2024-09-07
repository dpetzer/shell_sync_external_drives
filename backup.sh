#!/bin/bash
date
if mount -v | grep /media/external1 > /dev/null;
then 
        echo "External 1 is mounted"
else
        echo "External 1 is not mounted - nothing to copy"
        exit
fi 

if mount -v | grep /media/external2 > /dev/null;
then 
        echo "External 2 is mounted so copy to external 2"
        sudo rsync -av --delete /media/external1/ /media/external2
else
        echo "External 2 is not mounted"
fi 

if mount -v | grep /media/external3 > /dev/null;
then 
        echo "External 3 is mounted so copy to external 3"
        sudo rsync -av --delete /media/external1/ /media/external3
else
        echo "External 3 is not mounted"
fi

