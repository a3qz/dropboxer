#!/bin/bash

if [ ! -L "$LOGNAME" ]; then

  echo "A symbolic link to your dropbox does not exist in this directory does"
  echo "Would you like to create it? Y/n"
    read -n 1 create_link
    echo ""
    if [ $create_link == "Y" ]; then
      ln -s /afs/nd.edu/courses/cse/cse20212.01/dropbox/$LOGNAME
    elif [ $create_link == "n"]; then 
     echo "Exiting"
      exit
    else
      echo "This was not an option, please rerun this script"
      exit
    fi
fi
if [ "$1" != "" ]; then
  if [ ! -d "$LOGNAME/$1" ]; then
    echo "Specified directory does not exist in your dropbox"
    echo "Would you like me to create it for you? Y/n"
    read -n 1 create_dir
    echo ""
    if [ $create_dir == "Y" ]; then
      mkdir $LOGNAME/$1
    elif [ $create_dir == "n"]; then 
      echo "Exiting"
      exit
    else
      echo "This was not an option, please rerun this script"
      exit
    fi
  fi
  if [ ! -d "$LOGNAME/$1" ]; then
    echo "Specified directory does not exist in this folder"
    exit
  fi
  cp $1/* $LOGNAME/$1
  echo "Turn in was successful"
else
  echo "Unspecified directory"
fi
