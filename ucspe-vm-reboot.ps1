param (
  [Parameter(Mandatory=$true, Position=0)][String]$IP
)

# Cisco UCSPE VM Reboot Script, written by Ugo Emekauwa (uemekauw@cisco.com or uemekauwa@gmail.com)

# Reboot UCSPE VM
Write-Host "UCSPE VM reboot for $($IP) initiated:"
$body = "Submit=Reboot Virtual Machine&confirm=yes"
$uri = "http://$($IP)/settings/restart/vmreboot"
Invoke-WebRequest -Uri $uri -Method Post -Body $body

# Exit
Exit