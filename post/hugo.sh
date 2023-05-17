#!/bin/bash
cd ../..

if [ "$1" == "server" ]
then
    hugo server;
elif [ "$1" == "new" ]
then
    if [ "$2" != "site" ]
    then
        hugo new content/post/$2;
    fi
elif [ -z "$1" ]
then
    hugo
fi
