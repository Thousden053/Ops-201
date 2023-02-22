# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/21/2023
# Purpose: 

# Main
$a = ipconfig
function func {
    $a | Select-String -Pattern 'IPv4 Address.*(\d{1,3}\.){3}\d{1,3}'
}
# Didn't really understand how to specify with Select-string. Used chatgpt and had it explain so I could grasp the information better.
#This command searches for lines containing the text "IPv4 Address" and a pattern that matches the format of an IPv4 address. 
#The pattern \d{1,3}\. matches one to three digits followed by a period, 
# and the (\d{1,3}\.){3} portion matches three groups of digits followed by periods.
#The final \d{1,3} matches one to three digits, which is the last group of the IPv4 address.
# This command should output one or more lines with only the IPv4 address(es) found in the ipconfig output.
func > network_report.txt
# End
