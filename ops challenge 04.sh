#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/09/2023
# Purpose: Calls upon an indexed item in an array and uses it to create and name a text file.

# Main


mkdir dir1 dir2 dir3 dir4
newdir=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

touch "${newdir[0]}/file.txt"
touch "${newdir[1]}/file.txt"
touch "${newdir[2]}/file.txt"
touch "${newdir[3]}/file.txt"

# Created my own stretch goal to challenge myself, 
# using my minimal amount of experience with python
newdirs=(dir5 dir6 dir7 dir8)


newfiles=(file1 file2 file3 file4)


for dir in "${newdirs[@]}"
do
    mkdir $dir
done

for i in {0..3}
 do
  touch "${newdirs[i]}/${newfiles[i]}"
done


# End