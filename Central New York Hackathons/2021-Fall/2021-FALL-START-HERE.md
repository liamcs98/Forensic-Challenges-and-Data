# Table Of Contents
| Link                                                                                 | Notes                                                                                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [2021-Shadow-IT-Bad.md](./2021-Shadow-IT-Bad.md)                                   | Solution                                                                                                                                                                                                                                                |
| [2021-Must-Persist.md](2021-Must-Persist.md)                                                         | Solution                                                                                                                                                                                                                                                |
| [2021-Shelly-Shell.md](./2021-Shelly-Shell.md)                                   | Solution                                                                                                                                                                                                                                                |
| [2021-Sus-Signer.md](./2021-Sus-Signer.md)                                         | Solution                                                                                                                                                                                                                                                |
| [2021-Somethings-Missing.md](./2021-Somethings-Missingt.md)                                   | Solution                                                                                                                                                                                                                                                |
| [2021-FALL-START-HERE.md](./2021-FALL-START-HERE.md)                             | This file                                                                                                                                                                                                                                               |
| [Pass.txt](./Pass.txt)                                                               | Password For Zip                                                                                                                                                                                                                                        |
| [Fall 2021 CNY Forensics](./Fall%202021%20CNY%20Forensics%20Data/Kansa.zip) | Data for the Challenges.                                                                                                                                                                                                                                |




## challenge 1
Shadow IT Bad.

### challenge-description
Hey Player1! Welcome back glad you have you here.

We recently just completed a pentest and the group has left a bunch of backdoors with persistence mechanisms scattered across the environment. Instead of killing them from their end, I thought this would be a great chance to practice our own threat hunting and incident response!

I've provided you a archive of a Kansa run against our hosts. This gathered running processes and SysInternal's AutoRuns information from the hosts. For these I've also stacked (frequency analysis) the output. The lower the count the fewer instances of it we have in our environment. Just remember, malware is rare and should stick out when comparing across the environment.

First things first, one of our systems had TeamViewer running, and that’s not allowed by corporate policy. 

Review the Stacked processes and the number of processes running from the C:\Program Files (x86)\TeamViewer\ directory.

Flag Example:
flag{17}

## challenge 2
Must Persist.

### challenge-description
Hey Player1! 

Thanks for finding that TeamViewer process. It’s not just enough to kill the process, that'll work for a bit (sometimes), but programs and malware that run without user interaction have a persistence mechanism. TeamViewer is legit software so it shouldn’t be too hard to find. 

Take a look in the Autoruns stack and see if you can find the full path of the binary it uses to persist.

Flag Example:
flag{c:\file\path all\lower\case.exe}

## challenge 3
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

## challenge 4
Sus Signer!

### challenge-description
Good job finding that back door, but there are probably more! That signer is pretty strange, how many persistence items do we have with that signer?

Flag Example:
flag{17}

## challenge 5
Somethings Missing!

### challenge-description
Somethings not right, we are missing one last persistence mechanism. Take a look back through them and see if you can find a suspicious service and get me the name. 

Remember malware is rare and will have unusual properties. 

Flag Example:
flag{Strange Service Name}