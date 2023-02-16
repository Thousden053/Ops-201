# Script: Ops 201 Class 09 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/16/2023
# Purpose: Prints various logs to the screen from event log using Powershell

# Main
#Task 1: prints all events in the last 24 hours
$Begin = Get-Date # Stores current date in variable
# Calls upon variable specified above and subtracts a day, 
# displaying all logs after current day minus 24 hours
Get-EventLog -LogName System -After $Begin.AddDays(-1) > last_24.txt

# Displays logged errors and stores them in error.txt
Get-EventLog -LogName System -EntryType Error > error.txt

# Displays all logged events with Instance Id: 16
Get-EventLog -LogName System -InstanceId 16

# Displays the 20 most recent logged events 
Get-EventLog -LogName System -Newest 20

# Displays the 500 most recent logged events while stopping the system from truncating the message
Get-EventLog -LogName System -Newest 500 |Format-Table -wrap


# End
