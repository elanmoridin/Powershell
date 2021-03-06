# Gets time stamps for all computers in the domain that have NOT logged in since after specified date
import-module activedirectory 
$domain = "domain" 
$DaysInactive = 180 
$time = (Get-Date).Adddays(-($DaysInactive))
 
# Get all AD computers with lastLogonTimestamp less than our time
Get-ADComputer -Filter {LastLogonTimeStamp -lt $time} -Properties LastLogonTimeStamp |
 
# Output hostname and lastLogonTimestamp into CSV
select-object Name,@{Name="Stamp"; Expression={[DateTime]::FromFileTime($_.lastLogonTimestamp)}} | export-csv ComputersNotLoggedin180days.csv -notypeinformation
