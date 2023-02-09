#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/08/2023
# Purpose: Prints login history of users of this computer

# Main

login () {
    exec "last"   
}

echo "This is $0"
echo $1
login




# End
