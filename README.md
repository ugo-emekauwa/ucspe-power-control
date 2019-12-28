# Cisco UCSPE Power Control

The Microsoft PowerShell scripts provided in this repository enable automation for the powered state of the Cisco UCS Platform Emulator (UCSPE). This can be useful for scenarios that require rebooting or shutting down the UCSPE for maintenance.

## Prerequisites:
1. Microsoft Windows PowerShell 3 or above.
2. A running Cisco UCSPE virtual machine accessible over your network. More information and downloads for the Cisco UCSPE can be found [here](https://community.cisco.com/t5/unified-computing-system/ucs-platform-emulator-downloads/ta-p/3648177).


## Getting Started:
1. Please ensure that the above prerequisites have been met.
2. Download the **ucspe-vm-reboot.ps1** and **ucspe-vm-shutdown.ps1** files from this repository here on GitHub.
3. Document the IP address of the targeted Cisco UCSPE.


## How to Use:
###### Available UCSPE Power Control Operations

- ### Performing a UCSPE Reboot
  The **ucspe-vm-reboot.ps1** script provides the ability to perform an automated reboot of a targeted UCSPE. The following is an example of the command usage and mandatory parameters, in which the targeted UCSPE for a reboot has an IP address of **192.168.1.7**:
  ```powershell
  ucspe-vm-reboot.ps1 -IP 192.168.1.7
  ```

  The **ucspe-vm-reboot.ps1** script does not require the parameter names and will accept just the positional values. Here is an example:
  ```powershell
  ucspe-vm-reboot.ps1 192.168.1.7
  ```

- ### Performing a UCSPE Shutdown
  The **ucspe-vm-shutdown.ps1** script provides the ability to perform an automated shutdown of a targeted UCSPE. The following is an example of the command usage and mandatory parameters, in which the targeted UCSPE for a shutdown has an IP address of **192.168.1.7**:
  ```powershell
  ucspe-vm-shutdown.ps1 -IP 192.168.1.7
  ```

  The **ucspe-vm-shutdown.ps1** script does not require the parameter names and will accept just the positional values. Here is an example:
  ```powershell
  ucspe-vm-shutdown.ps1 192.168.1.7
  ```


## Parameters:
#### `-IP`
The **IP** parameter is mandatory and specifies the IP address of the targeted UCSPE VM. A resolvable hostname for the targeted UCSPE will also be accepted for the value.


## Use Cases:
A modified version of the script in this repository is a part of the automation used to support and enable the following Cisco Data Center product demonstrations on Cisco dCloud:

1. _Cisco UCS Management with Intersight v1_
2. _Cisco UCS Central 2.0 v1_
3. _Cisco UCS Central 2.0 Lab v1_
4. _Cisco UCS Programmability and Automation Lab v1_

Cisco dCloud is available at [https://dcloud.cisco.com](https://dcloud.cisco.com), where product demonstrations and labs can be found in the Catalog.


## Author:
Ugo Emekauwa


## Contact Information:
uemekauw@cisco.com or uemekauwa@gmail.com
