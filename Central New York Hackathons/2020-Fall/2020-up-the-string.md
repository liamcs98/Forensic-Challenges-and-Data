## challenge-id
2020-ip-the-string
## challenge-name
Up the String
### challenge-description
This bad. We need to figure out how this got on the machine. Well if it got on there there must have been a logon. Before the process ran what time was the most recent successful user logon? What time did the user that launched this program login? ZULU time format

Flag format - flag{yyyy-mm-ddTHH:mm:SS.000Z}

## flag
flag{2020-10-12T02:38:58.000Z}

## difficulty-rating
Select One: 
3 - Medium 

## challenge-files
forensics\FINAL_DRAFT_CTF_SERVER

## related-ksa-ids
# TODO

### ksa-context
# TODO

## notes

## Solution 
>! Now we are doing forensics. We have an evil process xmrig. 
>! We have a timeframe. Some time around - 2020-10-12T02:45:50.445Z
>! If you saw the process list owne is Tom. Making that user a suspect.
>! Now we need to know when and from where.
>! This is a job for the event logs! Specifically the Security ones.
>! Windows Security Event logs - 4624 - record successfull logons.
>! And at 2020-10-12 02:38:58 a few minutes before the process was launched we have a type 10 logon from Tom.. and an IP from where.
>! There is a lot of noise yes. But filtering is the name of the game here.
>! There are a lot of 4624s, yes, but all close to the processes launch are not interactive logons for a user. 