<#This script disables autoruns, deletes bad users,
and changes defualt passwords. It is meant to be run on all windows machines
at the start of IRSec.#>

#Removes global autoruns. User autoruns will persist after this step.
#Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\*"

#Array of local user accounts
$LocalUsers = Get-LocalUser
echo "$LocalUsers"

foreach ($User in $LocalUsers){
    echo $User
}