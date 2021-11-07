## challenge-id
2021-Somethings-Missing

## challenge-name
Somethings Missing!

### challenge-description
Somethings not right, we are missing one last persistence mechanism. Take a look back through them and see if you can find a suspicious service and get me the name. 

Remember malware is rare and will have unusual properties. 

Flag Example:
flag{Strange Service Name}

## flag
flag{HPP Legacy Printer}

## difficulty-rating
Select One: 
Hard


## Solution 
>
> For this challenge players need to unzip the Kansa output.
>
> Players need to find Kansa\Output_20211102150055\Autorunsc\Stacks\Autorunsc_stacked.csv and use the Autorunsc.exe files
> 
> This is where timeline explorer comes in handy. Players can find the evil process c:\windows\svchost.exe (legit is c:\windows\system32\svchost.exe) and the associated service a few ways:
>
> Review the stacked autoruns data for empty MD5s or Signers. Out of the 20 there is "File not found: C:\windows\svchost.exe"
>
> Recall that in the process stack there is a very strange process - 'C:\Windows\svchost.exe.exe' which should lead to an increased interest in SERVER2
>
> Viewing the All_combined.xlsx document, there are only about 1,300 services, and two that are enabled that have no signer. HPP Legacy Printer and osqueryd. osqueryd is legit as its the OSQuery Daemon service. 
> 


