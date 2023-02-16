# Script: Ops 201 Class 08 Ops Challenge Solution
# Author: Tyler Housden
# Date of latest revision: 02/15/2023
# Purpose: When saved in a .bat, creates a copy of all files in "My Project Files" and pastes them in "Backups"

# Main
set source=%userprofile%\Desktop\"My Project Files"
set destination=C:\Users\j.thompson\Backups

robocopy "%source%" "%destination%" /E /COPYALL

pause
# End
