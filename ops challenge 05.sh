#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/10/2023
# Purpose: Asks user for pid input, kills that pid.


# Main


while true; do
  echo "Enter PID: "
  read pid
  if [ "$pid" == "q" ]; then # if q is input the loop is executed
    break
  fi
  kill $pid
  if [ $? -eq 0 ]; then #code to check if pid was terminated, if 0 then succesful otherwise it displays a failed string
    echo "The PID $pid you input was successfully killed."
  else
    echo "Failed to kill the process with PID $pid. Please try again."
  fi
done


# End