## challenge-id
2021-Console-Access

## challenge-name
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

## flag
flag{26034}

## difficulty-rating
Select One: 
hard


## Solution 
>
> To do this, players need to find the access.log in /log/access.log and parse.
>
> Players need to know that 10.0.2.100 is a malicious IP, which can be found in other challenges and through analysis of requests.
>
> Players also need to know that the Jenkins Console is found at /script. Not /scripts or anywhere else.
>
> Filtering the data on these points results in 9 total requests, the reponse size sum being 26034.
