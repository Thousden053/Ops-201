
# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/17/2023
# Purpose: Listed above each script.

# Main

#Displays active processes ordered by highest CPU consumption at the top.
Get-Process | Sort-Object -Descending CPU

#Displays active processes ordered by highest PID first
Get-Process | Sort-Object -Descending Id

#Displays the top five active processes ordered by highest working set.
Get-Process | Sort-Object -Descending WorkingSet | Select-Object -First 5

#Runs ie and opens owasp website
$ie = New-Object -ComObject "InternetExplorer.Application"
$ie.Navigate("https://owasp.org/www-project-top-ten/")
$ie.Visible = $true

#uses a for loops to open ten instances of ie and displays owasp website
for ($i = 1; $i -le 10; $i++) {
    Start-Process iexplore.exe -ArgumentList "https://owasp.org/www-project-top-ten/"

#Closes all instances of internet explorer
Get-Process iexplore | ForEach-Object { $_.CloseMainWindow() }

#Prints PID's and the name of the programs associated with each PID
Get-Process | Select-Object Id, Name
Get-Process -Id <PID Here> | StopProcess -Force

# End