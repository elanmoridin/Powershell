$computers = import-csv -Path c:\temp\renamecomputers.csv -Header OldName, NewName
$computername = $env:COMPUTERNAME

foreach ($name in $computers){
If ($ComputerName -eq $name.OldName){
Rename-Computer -ComputerName $name.oldname -NewName $name.newname -force}
}