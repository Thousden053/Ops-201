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


#draft 2 *realized I didn't add an array
# echo "Search for file or directory"
# read type 
# if [ "$type" == "file" ]; then
#   echo "File name?"
#   read name
#   if [ -e "$name" ]; then
#     echo "File $name exists"
#   else
#     echo "File with $name doesn't exist, creating $name now..."
#     touch $name
#   fi
# elif [ "$type" == "directory" ]; then
#   echo "Directory name?"
#   read name
#   if [ -e "$name" ]; then
#     echo "Directory $name exists"
#   else
#     echo "Directory with $name doesn't exist, creating $name now..."
#     mkdir "$name"
#   fi
# fi


#Draft 3 *After conversing with Ethan Brock he pointed out that my code would search for any file or directory because i used -e instead of using -f and -d
# cont_var=1
# while [[ $cont_var -eq 1 ]]; do
#   types=("file" "directory")
#   echo "Search for file or directory?"
#   read type 
#   if [[ "${types[@]}" =~ "$type" ]]; then
#     if [ "$type" == "file"]
#     echo "$type name?"
#     read name
#     if [ -f "$name" ]; then
#       echo "$type $name exists"
#     else
#       echo "$type with $name doesn't exist, creating $name now..."
#       touch $name
   
#   elif [ "$type" == "directory" ]; then
#     echo "$type name?"
#     read name
#     if [ -d "$name" ]; then
#       echo "$type $name exists"
#     else
#       echo "$type with $name doesn't exist, creating $name now..."
#       mkdir "$name"
#   fi
#   fi
#   cont_var=0
#   else
#   echo "Invalid type, please choose either file or directory"
# fi
# done

# Final Draft

cont_var=1
while [[ $cont_var -eq 1 ]]; do
  types=("file" "directory")
  echo "Search for file or directory?"
  read type 
  if [[ "${types[@]}" =~ "$type" ]]; then
    if [ "$type" == "file" ]; then
      echo "$type name?"
      read name
      if [ -f "$name" ]; then
        echo "$type $name exists"
      else
        echo "$type with $name doesn't exist, creating $name now..."
        touch $name
      fi
    elif [ "$type" == "directory" ]; then
      echo "$type name?"
      read name
      if [ -d "$name" ]; then
        echo "$type $name exists"
      else
        echo "$type with $name doesn't exist, creating $name now..."
        mkdir "$name"
      fi
    fi
    cont_var=0
  else
    echo "Invalid type, please choose either file or directory"
  fi
done
# End
