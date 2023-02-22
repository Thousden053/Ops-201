#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/22/2023
# Purpose: 

# Main
echo -e "Please choose a command: \nwhois\ndig \nhost \nnslookup"
read command

# Prompt the user for a domain name
echo "Please enter a domain name:"
read domain

# Run the chosen command with the user's input
cont_var=1
while [[ $cont_var -eq 1 ]]; do
if [ "$command" = "whois" ]; then
    whois $domain
    cont_var=0
elif [ "$command" = "dig" ]; then
    dig $domain
    cont_var=0
elif [ "$command" = "host" ]; then
    host $domain
    cont_var=0
elif [ "$command" = "nslookup" ]; then
    nslookup $domain
    cont_var=0
else
    echo "Invalid command. Please enter either 'whois','dig','host','nslookup'."
    cont_var=0
fi
done




# End