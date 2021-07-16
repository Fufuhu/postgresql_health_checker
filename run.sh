#!/bin/bash


while [ 1 ]; do
    psql -U ${USER} -h ${HOST} -d ${DATABASE} -c "\dt"
    RESULT=$?
	DATE=`date`
    if [ $RESULT -eq 0 ]; then
        echo "${DATE}: Access Successful!"
    else
        echo "${DATE}: Access Failure!"
    fi

    sleep 1
done