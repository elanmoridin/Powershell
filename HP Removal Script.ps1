$hpguids = get-wmiobject -class win32_product | Where-Object {$_.Name -like "HP *"} | Where-Object {$_.Name -notmatch "client security manager"}

$clientsecurity = get-wmiobject -class win32_product | Where-Object {$_.Name -like "HP *"} | Where-Object {$_.Name -match "client security manager"}

# Create Localadmin account
net user admin "password" /ADD
write-host "admin is created."
net localgroup "Administrators" "admin" /ADD
write-host "admin added to administrators"

foreach($guid in $hpguids){
$id = $guid.IdentifyingNumber
write-host ""$guid.Name" is being removed."
&cmd /c "msiexec /uninstall $($id) /qn /norestart"
}

Get-ChildItem HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall | Where-Object {$_.GetValue('DisplayName') -eq 'HP Theft Recovery'} | Remove-Item

# Continue on errors
$ErrorActionPreference = "silentlycontinue"

# Target and remove all HP Software except Security Manager
$hpguids = get-wmiobject -class win32_product | Where-Object {$_.Name -like "HP *"} | Where-Object {$_.Name -notmatch "client security manager"} | Where-Object {$_.Name -notmatch "HP Hotkey Support"}
foreach($guid in $hpguids){
    $id = $guid.IdentifyingNumber
     write-host ""$guid.Name" is being removed."
     &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    }
    
# Target and remove all Dell Software
$dellguids = get-wmiobject -class win32_product | Where-Object {$_.Name -like "Dell *"} 
foreach($guid in $dellguids){
    $id = $guid.IdentifyingNumber
     write-host ""$guid.Name" is being removed."
     &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    }
 
# Kill Client Security Process
Stop-Process -Name DPClientWizard -Force
 
# Target and remove Security Manager
$clientmanager = get-wmiobject -class win32_product | Where-Object {$_.Name -like "HP *"} | Where-Object {$_.Name -match "client security manager"}
foreach($guid in $clientmanager){
    $id = $guid.IdentifyingNumber
     write-host ""$guid.Name" is being removed."
     &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    }
 
# Target and remove Skype
$skypeguid = get-wmiobject -class win32_product | Where-Object {$_.Name -like "*Skype*"}
foreach($guid in $skypeguid){
    $id = $guid.IdentifyingNumber
     write-host ""$guid.Name" is being removed."
     &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    } 
 
# Target and remove Foxit products
$foxitguid = get-wmiobject -class win32_product | Where-Object {$_.Name -like "Foxit *"}
foreach($guid in $foxitguid){
    $id = $guid.IdentifyingNumber
     write-host ""$guid.Name" is being removed."
     &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    } 

#Target and remove Touchpoint Manager
$touchpointguid = Get-WmiObject -class win32_product | Where-Object {$_.Name -like "*Touchpoint*"}
foreach($guid in $touchpointguid){
    $id = $guid.IdentifyingNumber
    write-host ""$guid.Name" is being removed."
    &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    }
 
#Target and remove Energy Star
$energystar = Get-WmiObject -class win32_product | Where-Object {$_.Name -like "*Energy Star*"}
foreach($guid in $energystar){
    $id = $guid.IdentifyingNumber
    write-host ""$guid.Name" is being removed."
    &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    }

#Target and remove Microsoft Office Trial
$microsoftoffice = Get-WmiObject -class win32_product | Where-Object {$_.Name -like "*Microsoft Office*"}
foreach($guid in $microsoftoffice){
    $id = $guid.IdentifyingNumber
    write-host ""$guid.Name" is being removed."
    &cmd /c "msiexec /uninstall $($id) /qn /norestart"
    }
	
# Remove left over from HP Theft Recovery in the Program and Features List
Get-ChildItem HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall | Where-Object {$_.GetValue('DisplayName') -eq 'HP Theft Recovery'} | Remove-Item
       
# Kill Windows Sidebar Process
Stop-Process -Name sidebar -Force
# Remove HP Gadget
Remove-Item "C:\Program Files\Windows Sidebar\Gadgets\DPIDCard.Gadget" -Recurse -Force
# Remove PDF Complete
& "C:\Program Files (x86)\PDF Complete\uninstall.exe" /x /s
& "C:\Program Files (x86)\CyberLink\PowerDVD12\Kernel\DMS\Uninstall.exe" /x /s
# Delete Desktop Shortcuts
Remove-Item "C:\Users\Public\Desktop\Box offer for HP.lnk" -Force
Remove-Item "C:\Users\Public\Desktop\Skype.lnk" -Force
# Remove click to run applications
Remove-Folder "C:\Program Files (x86)\Hewlett-Packard\HP Touchpoint Manager" -Force
# Remove Skype/Box Installers
Remove-Item "C:\Program Files (x86)\Online Services\" -Recurse -Force
# Remove Empty Start Menu Folders
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Communication and Chat" -Recurse -Force
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\HP Help and Support" -Recurse -Force
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Security and Protection" -Recurse -Force
 
write-host "All HP Bloatware has been removed."