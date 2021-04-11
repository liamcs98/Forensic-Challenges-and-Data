## challenge-id
2020-Hash-of-file

## challenge-name
Hash of file that doesnt exist

### challenge-description
Ah shoot, the server is offline, no more data is coming. Any way you have the SHA-1 Hash of that program?

Flag format - flag{SHA-1-HASH}

## flag
flag{71645cfc2aa3c2bb9ae64c5508aa091d8b49a8ed}

## difficulty-rating
Select One: 
???

## challenge-files
forensics\FINAL_DRAFT_CTF_SERVER

## related-ksa-ids
# TODO

### ksa-context
# TODO

## notes
Need some advice on this one.

## Solution 
>! So for this you need to know that windows stores in the Amcache.hve the sha1 hash of program executions.
>! This is really important for IR since you can gain information about an EXE even if it doent exist.
>! evil.exe with the sha1 hash of a scanner that was deleted? Well now you know it was a scanner.
>! The issue is this is easy as cake when I parse everything for you.
>! forensics\FINAL_DRAFT_CTF_SERVER\Processed\ProgramExecution\20201018113108_Amcache_UnassociatedFileEntries.csv:150 
>! Its right there and I dont know if poeple will care to understand where this came from.
>! On the other hand if I dont parse it... I feel like people will be discoraged if they dont know this one fact.
>! There are plenty of options to parse forensics\FINAL_DRAFT_CTF_SERVER\Unprocessed\C.zip\C\Windows\AppCompat\Programs\Amcache.hve
>! Such as AmcacheParser here -  https://ericzimmerman.github.io/#!index.md