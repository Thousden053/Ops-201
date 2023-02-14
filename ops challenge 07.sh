#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/14/2023
# Purpose: Displays relevant hardware information. while omitting irrelevant information.


# Main
echo "Computer Name"
lshw | grep "ubuntuserver1" 
echo "CPU"
lshw | grep -A 6 "*-cpu"
echo "Memory"
lshw | grep -A 3 "*-memory" 
echo "display"
lshw | grep -A 12 "*-display" | grep -v "logical name: " | grep -v "version: " 
echo "network"
lshw | grep -A 15 "*-network"

# End