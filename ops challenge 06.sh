#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/13/2023
# Purpose: Checks for name of file or directory, if none exists it creates one.


# Main
#First draft
# echo "Search for file or directory"
# read type
# if [type == "file"]
# then
#  echo "File name?"
# read name
# if [ -e name ]
  #then
  #echo "File $name exists"
  #else
  #echo "File with $name doesn't exist, creating $name now..."
  #cat $name
  #else if [type == "directory"] 
  #echo "Directory name?"
  #read name
  #if [ -e name ]
  #then
  #echo "Directory $name exists"
  #else
  #echo "Directory with $name doesn't exist, creating $name now..."
  #mkdir $name
# fi

#Used chat gpt to fix my errors.

# Chat gpt suggestion
# echo "Search for file or directory"
# read type
# if [ "$type" == "file" ]; then
  #echo "File name?"
  #read name
  #if [ -e "$name" ]; then
   # echo "File $name exists"
  #else
    #echo "File with $name doesn't exist, creating $name now..."
    #touch "$name"
  #fi
# elif [ "$type" == "directory" ]; then
 #echo "Directory name?"
  #read name
  #if [ -e "$name" ]; then
   # echo "Directory $name exists"
  #else
   # echo "Directory with $name doesn't exist, creating $name now..."
    #mkdir "$name"
 # fi
# fi


#final draft
echo "Search for file or directory"
read type 
if [ "$type" == "file" ]; then
  echo "File name?"
  read name
  if [ -e "$name" ]; then
    echo "File $name exists"
  else
    echo "File with $name doesn't exist, creating $name now..."
    touch $name
  fi
elif [ "$type" == "directory" ]; then
  echo "Directory name?"
  read name
  if [ -e "$name" ]; then
    echo "Directory $name exists"
  else
    echo "Directory with $name doesn't exist, creating $name now..."
    mkdir "$name"
  fi
fi

# End