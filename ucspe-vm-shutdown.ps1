param (
  [Parameter(Mandatory=$true, Position=0)][String]$IP
)

# Cisco UCSPE VM Shutdown Script, written by Ugo Emekauwa (uemekauw@cisco.com or uemekauwa@gmail.com)

# Shutdown UCSPE VM
Write-Host "UCSPE VM shutdown for $($IP) initiated:"
$body = "Submit=Shut down Virtual Machine&confirm=yes"
$uri = "http://$($IP)/settings/restart/vmshutdown"
Invoke-WebRequest -Uri $uri -Method Post -Body $body

# Exit
Exit