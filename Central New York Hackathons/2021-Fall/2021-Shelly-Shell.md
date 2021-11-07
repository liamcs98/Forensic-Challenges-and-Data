## challenge-id
2021-Shelly-Shell

## challenge-name
Shelly Shell!

### challenge-description
Next let’s do some hunting for anything that might be backdoor or shell related. Review the process stack for low frequency processes and see if you can find something evil! 

Supply the MD5 hash of one of the backdoors. 

Note: When you stack data you only get some of the columns, if you find something interesting, search/grep through all the host csv documents to find additional data on that process. 

Example: WinRAR.exe appears in the stack with a count of 1. Using Powershell or Bash, search the ProcWMI directory for WinRAR to get the full data from the host.

Powershell: cat * | Select-String 'WinRAR'
Bash: grep --recursive --fixed-string 'WinRAR'

Showing the MD5 to be - A48464D7F5621168BBB92233544CF8C4

Flag Example:
flag{A48464D7F5621168BBB92233544CF8C4}

## flag
flag{3D6D797FBDE6944BDECD042978CBF8B0}

## difficulty-rating
Select One: 
Medium


## Solution 
>
> For this challenge players need to unzip the Kansa output.
>
> Players need to find Kansa\Output_20211102150055\ProcsWMI\Stack\ProcWMI-Stack.csv
> 
> Players should review the output, focusing on low frequency items. This is the most open-ended challenge, and the most like real threat hunting. There are only 200 rows, so even a line-by-line review of this data is realistic. 
> 
> There are 4 backdoors (TCP Meterpreter shells) with persistence mechanisms in this data set. To find them all here is a regex:
> 
> temp\\shell.exe|c:\\windows\\svchost\.exe|publicpublicpublic\.exe|system32\\lssas.exe
>
> Players need to review the stacked data, then find the
> All the binaries have the same MD5: 3D6D797FBDE6944BDECD042978CBF8B0
> 



