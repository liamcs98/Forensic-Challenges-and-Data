# Table of Conents

| Contents                                                           | Notes                                                                                                        |
| -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| [2020-FORENSICS-START-HERE.md](./2020-FORENSICS-START-HERE.md) | This File.                                                                                                   |
| [2020-Hash-of-file.md](./2020-Hash-of-file.md)                 | Solution                                                                                                     |
| [2020-Maxed-Out.md](./2020-Maxed-Out.md)                       | Solution                                                                                                     |
| [2020-Payday.md](./2020-Payday.md)                             | Solution                                                                                                     |
| [2020-site-seen.md](./2020-site-seen.md)                       | Solution                                                                                                     |
| [2020-up-the-string.md](./2020-up-the-string.md)               | Solution                                                                                                     |
| [2020-wait-when.md](./2020-wait-when.md)                       | Solution                                                                                                     |
| FINAL_DATA.zip                                                | Data for these Challenges                                                                                    |
| Password_Final_Data.txt                                      | Password For Zip                                                                                             |
| [Raw Data](./Raw%20Data/)                                       | Link to the folder holding raw data. Contains KAPE and Redline Collections of both Systems in this scenario. |

## challenge 1
Woe is FTP

### challenge-description
Hey Player1, Thanks for taking a look at this. 
A few people are complaining about not being able to reach FTP server, it happens sometimes when the process isnt listening or general impacience. 
Can you take a look at the data I sent you for the Server? Verify the service it running and send back the full process and arguments for the FTP server process. 
Thanks a million.

Flag format - flag{"Full/process/path.exe --with-arugments --in-quotes"}

Source - forensics\FINAL_DRAFT_CTF_SERVER


## challenge 2
Maxed Out
### challenge-description
Hold up, I just took a look from my end and that server is nearly maxed CPU! 
Thats not good... well Windows should track offending processes, what amount of compute time has the most intenive process taken up?

Flag format - flag{00.00:00:00.0000000}

Source - forensics\FINAL_DRAFT_CTF_SERVER


## challenge 3
Wait when?

### challenge-description
The process name sure is strange. Actually any chance that you have the time the process started? 
Convert it into UTC ZULU time too so I can look at it from my end.

Flag format - flag{yyyy-mm-ddTHH:mm:SS.000Z}

Source - forensics\FINAL_DRAFT_CTF_SERVER


## challenge 4 
Hash of file that doesnt exist

### challenge-description
Ah shoot, the server is offline, no more data is coming. Any way you have the SHA-1 Hash of that program?
 
Flag format - flag{SHA-1-HASH}

Source - forensics\FINAL_DRAFT_CTF_SERVER


## challenge 5
Up the String
### challenge-description
This bad. We need to figure out how this got on the machine. Well if it got on there there must have been a logon. Before the process ran what time was the most recent successful user logon? What time did the user that launched this program login? ZULU time format

Flag format - flag{yyyy-mm-ddTHH:mm:SS.000Z}

Source - forensics\FINAL_DRAFT_CTF_SERVER


## challenge 6
Site Seen

### challenge-description
When was the last time the user visited the url - https://minexmr.com/#worker_stats
ZULU time format

Format - flag{yyyy-mm-ddTHH:mm:SS.000Z}

Source - forensics\FINAL_DRAFT_CTF_Workstation


## challenge 7
Payday

### challenge-description
What is the pending amount of XMR the miner has produced over all time? 

Flag format - flag{0.000000000000}

Source - forensics\FINAL_DRAFT_CTF_Workstation
