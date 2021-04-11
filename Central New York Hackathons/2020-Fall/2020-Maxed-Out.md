## challenge-id
2020-maxed-Out

## challenge-name
Maxed Out
### challenge-description
Hold up, I just took a look from my end and that server is nearly maxed CPU! 
Thats not good... well Windows should track offending processes, what amount of compute time has the most intenive process taken up?

Flag format - flag{00.00:00:00.0000000}

## flag
flag{13.07:06:35.7812500}

## difficulty-rating
Select One: 
1 - Simple 

## challenge-files
forensics\FINAL_DRAFT_CTF_SERVER

## related-ksa-ids
# TODO

### ksa-context
# TODO

## notes
Marked as Simple since there is no processing needed.

## Solution 
>! Answer Location forensics\FINAL_DRAFT_CTF_SERVER\Processed\LiveResponse\PWSH-Get-ProcessList.csv
>! This is an important challenge since we begin to follow the strand of the investigations.
>! The process "C:\Windows\temp\xmrig.exe" has taken up a ton of compute time compared to the rest of the processes.
>! It should stick out if you sort by the Total Processor Column in the CSV.