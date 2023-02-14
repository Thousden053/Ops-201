#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/14/2023
# Purpose: Displays relevant hardware information


# Main
lshw | grep "ubuntuserver1" 
lshw | grep -A 6 "*-cpu"
lshw | grep -A 3 "*-memory" 
lshw | grep -A 12 "*-display" | grep -v "logical name: " | grep -v "version: " 
lshw | grep -A 16 "*-network"

# End