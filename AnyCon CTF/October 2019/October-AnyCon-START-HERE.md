# Table Of Contents
| Link                                                                                 | Notes                                                                                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [AnyCon Beginner Forensics CTF.docx](./AnyCon%20Beginner%20Forensics%20CTF.docx)                                   | Solution                                                                                                                                                                                                                                                |
| [October-AnyCon-START-HERE.md](./October-AnyCon-START-HERE.md)                             | This file                                                                                                                                                                                                                                               |
| [October 2019 Raw Windows data](./WEAKSERVER.zip) | Data for the Challenges.                                                                                                                                                                                                                                |


## Goals
Get participants acquainted with common Windows Event Logs.
Familiarize participants with Windows Logon Types.
Demonstrate a successful attack.
Encourage research of attack.
Demonstrate the power and importance of Sysmon.

## Challenge DATA Checksums
| File                                                                         | Hash (MD5)                       |
| ---------------------------------------------------------------------------- | -------------------------------- |
| Microsoft-Windows-Sysmon%4Operational.evtx                       | 930747a3c50c24c1f83f119bcff29838 |
| Security.evtx                                                         | 801246e4a5305da60f4f118b15153495 |
| System.evtx                                                           | 5654e40fd8b64e4cd4878b4dbef36d50 |
| $UsnJrnl$J                                                            | 0b42a8d3b40cacd5c81604a8b0f1f298 |
| Microsoft-Windows-Sysmon%4Operational.evtx                               | 69b6f869b9f039b96da97b160cb7606c |
| Microsoft-Windows-TerminalServices-LocalSessionManager%4Operational.evtx | dd81d647ae31200a9cc8f9724f42d470 |
| System.evtx                                                              | 0485d480a8e02e30049732fd31d17eaf |

## Challenges 

### EventViewer

| Question                                                                                 | Difficulty | Hint                                                               |
| ---------------------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------------ |
| What is the fully qualified domain name (FQDN) of the computer this log came from?       | M          | If viewed in Event Viewer, it is in the Details -> System Section. |
| What user is conducting the action in this event log? Format: exampleDomain\\Exampleuser | E          | It is not SYSTEM.                                                  |
| What is the Process ID of the program launched?                                          | E          | View the Log in Event Viewer, or parse it.                         |

### BTOBTO
| Question                                                                             | Difficulty | Hint                                                             |
| ------------------------------------------------------------------------------------ | ---------- | ---------------------------------------------------------------- |
| What is the name of the service being installed?                                     | E          | This is in the System log.                                       |
| What is the first command that the attacker ran?                                     | M          | What are the parts of the code that are changing each attack?    |
| What two files are being created for every attacker command?                         | M          | When confronted with a long command, break it down part by part. |
| What program is executing the attacker commands? Format: evil.exe                    | M          | What is %COMSPEC%?                                               |
| What is the Github repository of the tool involved in this attack?                   | H          | We dont care about opsec! Google everything about these logs!    |
| What is the kind of logon that occurred? (Not a number, but what that number means). | M          | Review your logon types.                                         |
| What is the Update Sequence Number for the creation of execute.bat?                  | H          | Parse the $J.                                                    |
| What is the Update Sequence Number for the last file close of \_\_output?            | H          | Parse the $J.                                                    |

### RDP

| Question                                                                           | Difficulty | Hint                                                                 |
| ---------------------------------------------------------------------------------- | ---------- | -------------------------------------------------------------------- |
| What is the user that was used to conduct this attack?                             | E          | Who authenticated with the RDP attack?                               |
| What IP address did the attack come from?                                          | E          | A remote desktop connection comes from somewhere.                    |
| What is the IP address of the Command and Control (C2) the implant reaches out to? | M          | While the attacker came from one place, where does their process go? |
| What is the encoding algorithm being used in this attack?                          | M          | What does the powershell “-e” flag do?                               |
| What is the hostname of the C2?                                                    | M          | Sysmon is amazing right? It’ll help you with that.                   |
| What is the User the implant is running as?                                        | M          | Not who MADE the implant.. But what is the process running AS.       |
| What is the name of the C2 framework being used?                                   | H          | We dont care about OPSec! Google… maybe something more?              |