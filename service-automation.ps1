# the following is the powershell script which asks for input. 
# Based on the input this powershell script either turns ON/turns OFF the SSH service

# ----- script ----------
# you need to replace the service name with the ssh service name before executing the script
# this script works for any service you provide in the service name field

$turn_off = Stop-Service -Name <ssh-service-name>
$turn_on = Start-Service -Name <ssh-service-name>

$user_input = Read-Host -Prompt 'Enter 0 to turn OFF and 1 to turn ON the SSH service : '

if ($user_input -eq 0){
    $turn_off
    Write-Host 'You chose to turn OFF and the SSH service is now successfully turned OFF'
}
elseif ($user_input -eq 1) {
    $turn_on
    Write-Host 'You chose to turn ON and the SSH service is now successfully turned ON'
}
else {
    Write-Host 'Invalid Input'
}