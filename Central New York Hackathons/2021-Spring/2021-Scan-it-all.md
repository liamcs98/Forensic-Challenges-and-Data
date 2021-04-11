## challenge-id
2021-Scan-it-all

## challenge-name
Scan it all

### challenge-description
Elsewhere we got some alerts for web application scanning. Can you find the version of the tool the attacker used against this machine?

Flag format - flag{integer.like.this}

## flag
flag{2.1.6}

## difficulty-rating
Select One: 
Medium


## Solution 
>
> To do this, players need to find the access.log in /log/access.log and parse.
>
> Players need look at the Useragents and requested paths.
>
> Quick analysis should reveal the box was scanned by Nikto as it leaks information in the user agent.
>
> Example - Mozilla/5.00 (Nikto/2.1.6) (Evasions:None) (Test:000564)