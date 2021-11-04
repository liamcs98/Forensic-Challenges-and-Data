# Table Of Contents
| Link                                                                                 | Notes                                                                                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [2021-Access-Granted.md](./2021-Access-Granted.md)                                   | Solution                                                                                                                                                                                                                                                |
| [2021-API.md](2021-API.md)                                                         | Solution                                                                                                                                                                                                                                                |
| [2021-Console-Access.md](./2021-Console-Access.md)                                   | Solution                                                                                                                                                                                                                                                |
| [2021-Scan-it-all.md](./2021-Scan-it-all.md)                                         | Solution                                                                                                                                                                                                                                                |
| [2021-Spring-Dump-It.md](./2021-Spring-Dump-It.md)                                   | Solution                                                                                                                                                                                                                                                |
| [2021-SPRING-HINTS.md](./2021-SPRING-HINTS.md)                                       | File with hints for solutions and flag facts!                                                                                                                                                                                                           |
| [2021-SPRING-START-HERE.md](./2021-SPRING-START-HERE.md)                             | This file                                                                                                                                                                                                                                               |
| [2021-Where-In-The-World.md](./2021-Where-In-The-World.md)                           | Solution                                                                                                                                                                                                           |
| [Pass.txt](./Pass.txt)                                                               | Password For Zip                                                                                                                                                                                                                                        |
| [Spring 2021 CNY Forensics](./Spring%202021%20CNY%20Forensics_Draft/) | Data for the Challenges. This is in a multi-part 7z due to github restrictions                                                                                                                                                                                                                               |
| [Raw_Data](./Raw_Data)                                                             | Link to the folder holding raw data. Contains CyLR collection, Linux Memory Capture, and Docker Logs. Also contains a spreadsheet with timeline of malicous activity, parsed access.log / file system activity, and data for solution to one challenge. |
| [Timeline_and_Parsed_Access_logs_final.xlsx](./Timeline_and_Parsed_Access_logs_final.xlsx)                                                             | Timeline of attacker activity, parsed access.log, and data for console access. |




## challenge 1
API Leak

### challenge-description
Hey Player1, the client also mentioned they used the box to pull down weather and flight data. Pretty neat.
Well looks like they are panicking about that. Can you figure out what the api key was for the weather data? They need to know to cancel it asap.

Flag format - flag{API_KEY_INTS_AND_CHARs}


## challenge 2
Access Granted

### challenge-description
Hey Player1, take a few minutes and get used to that data I sent over. Should be an interesting case, something about a travel or spy agency? Something like that.
Anyway can you figure out what that Jenkis Authorization Strategy was? should be in a config attribute in there or something. 

Flag format - flag{something.like.this}


## challenge 3
Dump it.

### challenge-description
The attacker might have gotten access to a secret UUID we stored on the machine. I cant remember where exactly we used it, but it was some credential. Can you recover it?

Flag format - flag{UUID}


## challenge 4
Scan it all

### challenge-description
Elsewhere we got some alerts for web application scanning. Can you find the version of the tool the attacker used against this machine?

Flag format - flag{integer.like.this}


## challenge 5
Console Access

### challenge-description
The attacker had access to the Groovy Console. Can you find the malicious requests? Figure out the sum total size of all responses.

Example - 
Source IP - Method - page - Response Code - Response Bytes 
192.168.1.2 - GET - /page - 200 - 365
192.168.1.2 - GET - /page - 200 - 8975
192.168.1.2 - GET - /page - 200 - 5468

Sample Answer - flag{14808}
Flag format - flag{integer}


## challenge 6
Where in the world?
### challenge-description
Since the attacker had full access they likely gained access to where our operative is heading next. 

Can you figure out which flight number, and the destination/arrival weather, our operative can be found?

Example - flag{1234 - snow - heavy snow}

Note - ALL LOWER CASE.
Flag format - flag{integer - weather_type - condition}
